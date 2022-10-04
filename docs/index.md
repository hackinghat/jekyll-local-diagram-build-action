---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
---

|              Stage | Direct Products | ATP Yields |
| -----------------: | --------------: | ---------: |
|         Glycolysis |          2 ATP              ||
| ^^                 |          2 NADH |   3--5 ATP |
| Pyruvaye oxidation |          2 NADH |      5 ATP |
|  Citric acid cycle |          2 ATP              ||
| ^^                 |          6 NADH |     15 ATP |
| ^^                 |          2 FADH |      3 ATP |
|                               30--32 ATP        |||

Blurg
{% mathjax %}
\lim\limits_{x \to \infty} \exp(-x) = 0
{% endmathjax %} 

{% plantuml %}
@startuml
Bob -> Alice : hello
Alice -> Charles : goodbye
Charles -> Fred : goodbye
Fred -> Bob : xxxxx
@enduml
{% endplantuml %}

{% mermaid %}
pie title Pets adopted by volunteers
  "Dogs" : 386
  "Cats" : 340
  "Rats" : 35
  "Fleas": 650
{% endmermaid %}

{% plantuml %}
@startwbs
* A
** A.1
** B
*** B.1
*** B.2
** C
*** C.1
*** C.2
*** C.9
*** C.3
*** C.4
*** C.40
** D
*** D.1
** X 
*** X.1
@endwbs
{% endplantuml %}


{% plantuml %}
@startuml
First -> Second
Third -> Fourth
@enduml
{% endplantuml %}


	
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

{% mathjax %}
x^2 / x^5
{% endmathjax %}

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
