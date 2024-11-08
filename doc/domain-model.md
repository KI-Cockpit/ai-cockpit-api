# Domain Model

![domain model autonomy](./autonomy-uml.drawio.svg)

**Task** (Modul):

* In case it is a decision or action, it is a concrete event and needs to have a timestamp.

**TaskType** (or Classification?):

* Something where we can define an autonomy level for. Tasks with the same taskType has the same autonomy level (E.g. Unfall, Stau for Checkpoint decision).

**Level** (Autonomy Level):

Autonomy level configurable via database

**Checkpoint**:

* Aquisition, Analysis, Decision and Action
* The point where we want to check automation with autonomy levels
* Defines the possible autonomy levels per taskType.
* Alternative: Enums are a programmatical solution instead of levels and checkpoints. Hence, you cannot configure the possible autonomy per tasktype

**Inherited classes decision and action**:

* Examples for tasks
* Might to be needed, but helps
  * to add special attributes for different checkpoints (e.g. timestamp)
  * to save different tasks (Aquisition, Analysis, Decision, Action) in different database tables.
