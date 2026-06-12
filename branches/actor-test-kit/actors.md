# Actors - Zimbabwe Laboratory Ordering and Results IG v0.1.0

* [**Table of Contents**](toc.md)
* **Actors**

## Actors

### Workflow Actors

The laboratory ordering and results workflow is specified in terms of six conformance **actors** (roles). A single real-world system typically plays more than one role.

| | | |
| :--- | :--- | :--- |
| [Lab Order Placer](ActorDefinition-lab-order-placer.md) | Creates a lab order and pushes it to the order repository | Impilo EHR |
| [Lab Order Repository](ActorDefinition-lab-order-repository.md) | Validates, stores and serves submitted orders | Shared Health Record (via OpenHIM) |
| [Lab Order Fulfiller](ActorDefinition-lab-order-fulfiller.md) | Pulls orders directed to its laboratory and performs testing | Senaite LIMS |
| [Lab Result Provider](ActorDefinition-lab-result-provider.md) | Assembles the signed-off result report and pushes it to the result repository | Senaite LIMS |
| [Lab Result Repository](ActorDefinition-lab-result-repository.md) | Validates, stores and serves result reports | Shared Health Record (via OpenHIM) |
| [Lab Result Consumer](ActorDefinition-lab-result-consumer.md) | Pulls results for its patients for clinical use | Impilo EHR |

### Transactions

```
 ┌─────────────────────┐      ① order push        ┌──────────────────────────┐
 │  EHR (Impilo)       │ ───────────────────────▶ │  SHR (via OpenHIM)       │
 │  · Lab Order Placer │   ZWLabOrderBundle       │  · Lab Order Repository  │
 │  · Lab Result       │                          │  · Lab Result Repository │
 │    Consumer         │ ◀─────────────────────── │                          │
 └─────────────────────┘      ④ result pull       └──────────────────────────┘
                            DiagnosticReport /         ▲               │
                            ZWLabReportBundle          │               │ ② order pull
                                       ③ result push   │               │   Task / ServiceRequest
                                    ZWLabReportBundle  │               ▼
                                          ┌────────────────────────────┐
                                          │  LIMS (Senaite)            │
                                          │  · Lab Order Fulfiller     │
                                          │  · Lab Result Provider     │
                                          └────────────────────────────┘

```

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| ① | Order push | Lab Order Placer | Lab Order Repository | [ZWLabOrderBundle](StructureDefinition-zw-lab-order-bundle.md)— FHIR transaction`POST [base]` |
| ② | Order pull | Lab Order Fulfiller | Lab Order Repository | FHIR search on`Task`(by status/recipient) and`ServiceRequest`; Task update to claim |
| ③ | Result push | Lab Result Provider | Lab Result Repository | [ZWLabReportBundle](StructureDefinition-zw-lab-report-bundle.md)—`POST [base]/Bundle`, stored whole |
| ④ | Result pull | Lab Result Consumer | Lab Result Repository | FHIR search on`DiagnosticReport`(by patient/based-on); Bundle retrieval by identifier |

The detailed conformance expectations for each transaction are captured as Requirements resources:

* [Order Push Requirements](Requirements-zw-lab-order-push.md)
* [Order Pull Requirements](Requirements-zw-lab-order-pull.md)
* [Result Push Requirements](Requirements-zw-lab-result-push.md)
* [Result Pull Requirements](Requirements-zw-lab-result-pull.md)

Each actor's behaviour is exercised by the role-tagged [test kit](testing.md).

