# jekyll-local-diagram-build-action


## What

This build action has been created to complement the [jekyll-local-diagram](https://github.com/hackinghat/jekyll-local-diagram) Jekyll plugin for building Jekyll sites either as part of GitHub pages or in a development environment.

The reasons for using this rather than other tools like [jekyll-spaceship](https://github.com/jeffreytse/jekyll-spaceship) are that:

* The complexity of the diagram is not limited by URL length
* The diagrams are private, so if you have a private repo your diagrams stay private
* You can run the build action in your local environment to test changes before committing them.

Reasons for not using this are probably that:

* It's not as configurable out of the box as other solutions
* It has less diagram support than other solutions (instead focusing on mermaid, PlantUML and mathjax)

## How
 
It defines a `Dockerfile` installs the following pre-requisites that are needed to run `jekyll-local-diagram` into an [Alpine Linux](https://www.alpinelinux.org/) container.

* **Ruby**
* **Jekyll**
* **Java Runtime** A custom Java JRE for [PlantUML](https://www.plantuml.com)
* **True type fonts** needed by PlantUML to display text
* **npm** for installing command-line Mermaid, MathJax and BPMN clients
* **g++** for building local Gems
* **Grahviz** for Dot diagrams (called from within PlantUML)
* **Chromium** Mermaid.CLI installs a chromium browser but it depends on libc (which Alpine Linux does not support)

## Where

### Locally

To the build action locally and have it watch your repo while you live edit changes, you could do something like this:

    docker run -p 4000:4000  -u 1000:1000 -v <your repo docs src>:/src --rm ghcr.io/hackinghat/jekyll-local-diagram-build-action:0.1.0 serve /src

### GitHub Pages

This repo dog foods itself [here](https://hackinghat.github.io/jekyll-local-diagram-build-action/).

