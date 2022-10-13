---
layout: default
title: Plant UML
nav_order: 4
---

# Plant UML

This is a showcase for [Plant UML](https://plantuml.com) diagrams to show what is possible with [Jekyll Local Build Action](https://github.com/jekyll-local-diagram-build-action) and to act as an integration test for [Jekyll Local Diagram](https://github.com/hackinghat/jekyll-local-diagram)

All diagrams are generated images, and can be shared as files.

## Use Case

{% raw %}
    {% plantuml %}
    @startuml
    left to right direction
    actor "Food Critic" as fc
    rectangle Restaurant {
    usecase "Eat Food" as UC1
    usecase "Pay for Food" as UC2
    usecase "Drink" as UC3
    }
    fc --> UC1
    fc --> UC2
    fc --> UC3
    @enduml
    {% endplantuml %}
{% endraw %}

{% plantuml %}
@startuml
left to right direction
actor "Food Critic" as fc
rectangle Restaurant {
  usecase "Eat Food" as UC1
  usecase "Pay for Food" as UC2
  usecase "Drink" as UC3
}
fc --> UC1
fc --> UC2
fc --> UC3
@enduml
{% endplantuml %}

## Sequence Diagram 

{% raw %}
    {% plantuml %}
    @startuml
    Bob -> Alice : hello
    Alice -> Charles : goodbye
    Charles -> Fred : goodbye
    @enduml
    {% endplantuml %}
{% endraw %}

{% plantuml %}
@startuml
Bob -> Alice : hello
Alice -> Charles : goodbye
Charles -> Fred : goodbye
@enduml
{% endplantuml %}

## Activity

{% raw %}
@startuml
start
if (Graphviz installed?) then (yes)
  :process all\ndiagrams;
else (no)
  :process only
  __sequence__ and __activity__ diagrams;
endif
stop
@enduml
{% endraw %}

{% plantuml %}
@startuml
start
if (Graphviz installed?) then (yes)
  :process all\ndiagrams;
else (no)
  :process only
  __sequence__ and __activity__ diagrams;
endif
stop
@enduml
{% endplantuml %}

## Deployment

{% raw %}
    {% plantuml %}
    @startuml
    title Bracketed line style mix
    node foo
    foo --> bar                             : ∅
    foo -[#red,thickness=1]-> bar1          : [#red,1]
    foo -[#red,dashed,thickness=2]-> bar2   : [#red,dashed,2]
    foo -[#green,dashed,thickness=4]-> bar3 : [#green,dashed,4]
    foo -[#blue,dotted,thickness=8]-> bar4  : [blue,dotted,8]
    foo -[#blue,plain,thickness=16]-> bar5  : [blue,plain,16]
    foo -[#blue;#green,dashed,thickness=4]-> bar6  : [blue;green,dashed,4]
    @enduml
    {% endplantuml %}
{% endraw %}

{% plantuml %}
@startuml
title Bracketed line style mix
node foo
foo --> bar                             : ∅
foo -[#red,thickness=1]-> bar1          : [#red,1]
foo -[#red,dashed,thickness=2]-> bar2   : [#red,dashed,2]
foo -[#green,dashed,thickness=4]-> bar3 : [#green,dashed,4]
foo -[#blue,dotted,thickness=8]-> bar4  : [blue,dotted,8]
foo -[#blue,plain,thickness=16]-> bar5  : [blue,plain,16]
foo -[#blue;#green,dashed,thickness=4]-> bar6  : [blue;green,dashed,4]
@enduml
{% endplantuml %}

## Timing Diagram

{% raw %}
    {% plantuml %}
    @startuml
    clock clk with period 1
    binary "Enable" as EN

    @0
    EN is low

    @5
    EN is high

    @10
    EN is low
    @enduml
    {% endplantuml %}
{% endraw %}

{% plantuml %}
@startuml
clock clk with period 1
binary "Enable" as EN

@0
EN is low

@5
EN is high

@10
EN is low
@enduml
{% endplantuml %}

## Network Diagram

{% raw %}
    {% plantuml %}
    @startuml
    nwdiag {
    network dmz {
        address = "210.x.x.x/24"

        web01 [address = "210.x.x.1"];
        web02 [address = "210.x.x.2"];
    }
    }
    @enduml
    {% endplantuml %}
{% endraw %}

{% plantuml %}
@startuml
nwdiag {
  network dmz {
      address = "210.x.x.x/24"

      web01 [address = "210.x.x.1"];
      web02 [address = "210.x.x.2"];
  }
}
@enduml
{% endplantuml %}

## Salt 

{% raw %}
    {% plantuml %}
    @startsalt
    {
    Just plain text
    [This is my button]
    ()  Unchecked radio
    (X) Checked radio
    []  Unchecked box
    [X] Checked box
    "Enter text here   "
    ^This is a droplist^
    }
    @endsalt
    {% endplantuml %}
{% endraw %}

{% plantuml %}
@startsalt
{
  Just plain text
  [This is my button]
  ()  Unchecked radio
  (X) Checked radio
  []  Unchecked box
  [X] Checked box
  "Enter text here   "
  ^This is a droplist^
}
@endsalt
{% endplantuml %}

## Finite State Machine

{% raw %}
    {% plantuml %}
    @startdot
    digraph finite_state_machine {
        fontname="Helvetica,Arial,sans-serif"
        node [fontname="Helvetica,Arial,sans-serif"]
        edge [fontname="Helvetica,Arial,sans-serif"]
        rankdir=LR;
        node [shape = doublecircle]; 0 3 4 8;
        node [shape = circle];
        0 -> 2 [label = "SS(B)"];
        0 -> 1 [label = "SS(S)"];
        1 -> 3 [label = "S($end)"];
        2 -> 6 [label = "SS(b)"];
        2 -> 5 [label = "SS(a)"];
        2 -> 4 [label = "S(A)"];
        5 -> 7 [label = "S(b)"];
        5 -> 5 [label = "S(a)"];
        6 -> 6 [label = "S(b)"];
        6 -> 5 [label = "S(a)"];
        7 -> 8 [label = "S(b)"];
        7 -> 5 [label = "S(a)"];
        8 -> 6 [label = "S(b)"];
        8 -> 5 [label = "S(a)"];
        8 -> 9 [label = "S(x)"];
        9 -> 10 [label = "S(y)"];
    }
    @enddot
    {% endplantuml %}
{% endraw %}

{% plantuml %}
@startdot
digraph finite_state_machine {
	fontname="Helvetica,Arial,sans-serif"
	node [fontname="Helvetica,Arial,sans-serif"]
	edge [fontname="Helvetica,Arial,sans-serif"]
	rankdir=LR;
	node [shape = doublecircle]; 0 3 4 8;
	node [shape = circle];
	0 -> 2 [label = "SS(B)"];
	0 -> 1 [label = "SS(S)"];
	1 -> 3 [label = "S($end)"];
	2 -> 6 [label = "SS(b)"];
	2 -> 5 [label = "SS(a)"];
	2 -> 4 [label = "S(A)"];
	5 -> 7 [label = "S(b)"];
	5 -> 5 [label = "S(a)"];
	6 -> 6 [label = "S(b)"];
	6 -> 5 [label = "S(a)"];
	7 -> 8 [label = "S(b)"];
	7 -> 5 [label = "S(a)"];
	8 -> 6 [label = "S(b)"];
	8 -> 5 [label = "S(a)"];
	8 -> 9 [label = "S(x)"];
	9 -> 10 [label = "S(y)"];
}
@enddot
{% endplantuml %}

## Gantt

{% raw %}	
    {% plantuml %}
    @startgantt
    [Prototype design] lasts 15 days
    [Test prototype] lasts 10 days
    -- All example --
    [Task 1 (1 day)] lasts 1 day
    [T2 (5 days)] lasts 5 days
    [T3 (1 week)] lasts 1 week
    [T4 (1 week and 4 days)] lasts 1 week and 4 days
    [T5 (2 weeks)] lasts 2 weeks
    [T6] lasts 1 week
    @endgantt
    {% endplantuml %}
{% endraw %}

{% plantuml %}
@startgantt
[Prototype design] lasts 15 days
[Test prototype] lasts 10 days
-- All example --
[Task 1 (1 day)] lasts 1 day
[T2 (5 days)] lasts 5 days
[T3 (1 week)] lasts 1 week
[T4 (1 week and 4 days)] lasts 1 week and 4 days
[T5 (2 weeks)] lasts 2 weeks
[T6] lasts 1 week
@endgantt
{% endplantuml %}

## Mind Map

{% raw %}
    {% plantuml %}
    @startmindmap
    + root node
    ++ some first level node
    +++ second level node
    +++ another second level node
    -- another first level node
    -- another second level node
    {% endplantuml %}
{% endraw %}

{% plantuml %}
@startmindmap
+ root node
++ some first level node
+++ second level node
+++ another second level node
-- another first level node
-- another second level node
@endmindmap
{% endplantuml %}

## Work-breakdown Structure

{% raw %}
    {% plantuml %}
    @startwbs
    + New Job
    ++ Decide on Job Requirements
    +++ Identity gaps
    +++ Review JDs
    ++++ Sign-Up for courses
    ++++ Volunteer
    ++++ Reading
    ++- Checklist
    +++- Responsibilities
    +++- Location
    ++ CV Upload Done
    +++ CV Updated
    ++++ Spelling & Grammar
    ++++ Check dates
    ---- Skills
    +++ Recruitment sites chosen
    @endwbs
    {% endplantuml %}
{% endraw %}

{% plantuml %}
@startwbs
+ New Job
++ Decide on Job Requirements
+++ Identity gaps
+++ Review JDs
++++ Sign-Up for courses
++++ Volunteer
++++ Reading
++- Checklist
+++- Responsibilities
+++- Location
++ CV Upload Done
+++ CV Updated
++++ Spelling & Grammar
++++ Check dates
---- Skills
+++ Recruitment sites chosen
@endwbs
{% endplantuml %}

## JSON

{% raw %}
    {% plantuml %}
    @startjson
    {
    "fruit":"Apple",
    "size":"Large",
    "color": ["Red", "Green"]
    }
    @endjson
    {% endplantuml %}
{% endraw %}

{% plantuml %}
@startjson
{
   "fruit":"Apple",
   "size":"Large",
   "color": ["Red", "Green"]
}
@endjson
{% endplantuml %}
