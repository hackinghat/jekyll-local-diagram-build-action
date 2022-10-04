# jekyll-local-diagram-build-action

This build action has been created to complement the [jekyll-local-diagram](https://github.com/hackinghat/jekyll-local-diagram) for building Jekyll sites either as part of GitHub pages or in a development environment 

# Description 
It defines a `Dockerfile` installs the following pre-requisites that are needed to run `jekyll-local-diagram` into an [Alpine Linux](https://www.alpinelinux.org/) container.

* **Ruby**
* **Jekyll**
* **Java Runtime** A custom Java JRE for [PlantUML](https://www.plantuml.com)
* **True type fonts** needed by PlantUML to display text
* **npm** for installing command-line Mermaid and MathJax clients
* **g++** for building local Gems
* **Grahviz** for Dot diagrams (called from within PlantUML)
* **Chromium** Mermaid.CLI installs a chromium browser but it depends on libc (which Alpine Linux does not support)
* 