# AI Cockpit API definition

This repo contains API definitions to enable control and monitoring of AI powered complex software systems. It is part of a public funded research project named KI-Cockpit (AI cockpit) and more information can be found here https://www.kicockpit.eu/.

## Motivation

AI systems must ensure bias free data processing. Growing software system complexity makes it very hard even for expert observers, to understand decisions taken by modern software systems. Due to their stochastic nature AI algorithms add another layer of uncertainty. Despite the promising potential that these algorithms can add to the capabilities of software systems, measures needs to be taken, to keep humans in control.

Thus a two-fold API is proposed to guarantee human control. This API aims at being useful for any decision making system and hence is abstracting from individual – ever progressing – algorithms. The two function areas are centered around

__1 Decision API__: decisions taken in software systems

* Definition decision
  * manual vs automatic decision
  * necessary data
* Decision composition
* agnostic to decision method/algorithm

__2 Transparency API__: explain data processing and bias control

* Bias Check API
  * pseudo randomized integration test results
  * model info
* Algorithmic modules
* Descriptive Statistics

Requirements and design considerations are described [here](doc/domain-model.md). Actual API definitions are in folder [aicockpit-api](/aicockpit-api/Readme.md) - all necessary files for API definitions and code generation are provided.

## Contact & Contribution

The “KI-Cockpit” (AI Cockpit) project was funded by the Federal Ministry of Labor and Social Affairs and executed by the nexus Institute, Aalen University, the University of Stuttgart, Chemistree, Caritas Dortmund & Starwit Technologies with the support of Awesome Technologies Innovationslabor, the Institute for Innovation and Technology (iit) at VDI/VDE Innovation + Technik and keytec.

<img src="doc/foerderlogo.png" alt="BMAS Logo" style="width:33%; height:auto;">

## License

Software in this repository is licensed under the MIT license. See [license agreement](LICENSE) for more details.

