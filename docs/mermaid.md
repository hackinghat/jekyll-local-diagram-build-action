---
layout: default
title: Mermaid
nav_order: 2
---

# Mermaid

This is a showcase for [Mermaid](https://mermaid-js.github.io/mermaid/) diagrams to show what is possible with [Jekyll Local Build Action](https://github.com/jekyll-local-diagram-build-action) and to act as an integration test for [Jekyll Local Diagram](https://github.com/hackinghat/jekyll-local-diagram)

All diagrams are generated images, and can be shared as files.

## Flowchart

{% raw %}
    {% mermaid %}
    flowchart LR
        A[Hard edge] -->|Link text| B(Round edge)
        B --> C{Decision}
        C -->|One| D[Result one]
        C -->|Two| E[Result two]
    {% endmermaid %}
{% endraw %}

{% mermaid %}
flowchart LR
    A[Hard edge] -->|Link text| B(Round edge)
    B --> C{Decision}
    C -->|One| D[Result one]
    C -->|Two| E[Result two]
{% endmermaid %}

## Sequence Diagram 

{% raw %}
    {% mermaid %}
    sequenceDiagram
        participant Alice
        participant John
        links Alice: {"Dashboard": "https://dashboard.contoso.com/alice", "Wiki": "https://wiki.contoso.com/alice"}
        links John: {"Dashboard": "https://dashboard.contoso.com/john", "Wiki": "https://wiki.contoso.com/john"}
        Alice->>John: Hello John, how are you?
        John-->>Alice: Great!
        Alice-)John: See you later!
    {% endmermaid %}
{% endraw %}

{% mermaid %}
sequenceDiagram
    participant Alice
    participant John
    links Alice: {"Dashboard": "https://dashboard.contoso.com/alice", "Wiki": "https://wiki.contoso.com/alice"}
    links John: {"Dashboard": "https://dashboard.contoso.com/john", "Wiki": "https://wiki.contoso.com/john"}
    Alice->>John: Hello John, how are you?
    John-->>Alice: Great!
    Alice-)John: See you later!
{% endmermaid %}

## Class Diagram

{% raw %}
    {% mermaid %}
    classDiagram
    direction RL
    class Student {
        -idCard : IdCard
    }
    class IdCard{
        -id : int
        -name : string
    }
    class Bike{
        -id : int
        -name : string
    }
    Student "1" --o "1" IdCard : carries
    Student "1" --o "1" Bike : rides
    {% endmermaid %}
{% endraw %}

{% mermaid %}
classDiagram
  direction RL
  class Student {
    -idCard : IdCard
  }
  class IdCard{
    -id : int
    -name : string
  }
  class Bike{
    -id : int
    -name : string
  }
  Student "1" --o "1" IdCard : carries
  Student "1" --o "1" Bike : rides
{% endmermaid %}

## Pie Chart

{% raw %}
    {% mermaid %}
    pie title Pets adopted by volunteers
    "Dogs" : 386
    "Cats" : 340
    "Rats" : 35
    {% endmermaid %}
{% endraw %}

{% mermaid %}
pie title Pets adopted by volunteers
  "Dogs" : 386
  "Cats" : 340
  "Rats" : 35
{% endmermaid %}

## User Journey

{% raw %}
    {% mermaid %}
    journey
        title My working day
        section Go to work
        Make tea: 5: Me
        Go upstairs: 3: Me
        Do work: 1: Me, Cat
        section Go home
        Go downstairs: 5: Me
        Sit down: 5: Me
        Sleep: 6: Me, Cat, Dog, Fish
    {% endmermaid %}
{% endraw %}

{% mermaid %}
journey
    title My working day
    section Go to work
    Make tea: 5: Me
    Go upstairs: 3: Me
    Do work: 1: Me, Cat
    section Go home
    Go downstairs: 5: Me
    Sit down: 5: Me
    Sleep: 6: Me, Cat, Dog, Fish
{% endmermaid %}
