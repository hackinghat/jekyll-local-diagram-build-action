---
layout: default
title: BPMN
nav_order: 1
---

# BPMN

This is a (very small) showcase for [BPMN](https://bpmn.io) diagrams to show what is possible with [Jekyll Local Build Action](https://github.com/jekyll-local-diagram-build-action) and to act as an integration test for [Jekyll Local Diagram](https://github.com/hackinghat/jekyll-local-diagram)

BPMN is a little different from the other diagram types in that the source for the diagram is in XML which is a little harder to hack than markdown style diagram types.  It also breaks the flow of your Markdown documents a little with having a huge XML vomit inside it.  But most of all the BPMN type includes explicit layout information which the other diagram types do not tend to do (other than in a general ordering sense).

However BPMN JS solves a problem that other diagrams such as [PlantUML activity diagrams](https://plantuml.com/activity-diagram-legacy) do not, since activity diagrams are really about system and object processes and BPMN has notation and constructs that are better suited to business processes.   

Probably the best way to make use of BPMN JS is to draw your diagram with the [editor](https://demo.bpmn.io/new) and then save the XML and paste it inline into your markdown.  As far as I can tell the online editor is a local renderer and the document does not leave your host.

## Example

{% bpmn %}
<?xml version="1.0" encoding="UTF-8"?>
<bpmn:definitions xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpmn="http://www.omg.org/spec/BPMN/20100524/MODEL" xmlns:bpmndi="http://www.omg.org/spec/BPMN/20100524/DI" xmlns:dc="http://www.omg.org/spec/DD/20100524/DC" xmlns:di="http://www.omg.org/spec/DD/20100524/DI" id="Definitions_1yojdrb" targetNamespace="http://bpmn.io/schema/bpmn" exporter="bpmn-js (https://demo.bpmn.io)" exporterVersion="10.2.0">
  <bpmn:process id="Process_01h17cd" isExecutable="false">
    <bpmn:startEvent id="StartEvent_0hn3ojf">
      <bpmn:outgoing>Flow_1sqn6r3</bpmn:outgoing>
    </bpmn:startEvent>
    <bpmn:task id="Activity_0mtirml" name="1. Collect Underpants">
      <bpmn:incoming>Flow_1sqn6r3</bpmn:incoming>
      <bpmn:outgoing>Flow_1yhw9no</bpmn:outgoing>
    </bpmn:task>
    <bpmn:task id="Activity_1er8w44" name="2. ?">
      <bpmn:incoming>Flow_1yhw9no</bpmn:incoming>
      <bpmn:outgoing>Flow_0n86246</bpmn:outgoing>
    </bpmn:task>
    <bpmn:sequenceFlow id="Flow_1yhw9no" sourceRef="Activity_0mtirml" targetRef="Activity_1er8w44" />
    <bpmn:task id="Activity_0g6dibj" name="3. Profit">
      <bpmn:incoming>Flow_0n86246</bpmn:incoming>
      <bpmn:outgoing>Flow_1glt1d0</bpmn:outgoing>
    </bpmn:task>
    <bpmn:sequenceFlow id="Flow_0n86246" sourceRef="Activity_1er8w44" targetRef="Activity_0g6dibj" />
    <bpmn:endEvent id="Event_0rzunrw">
      <bpmn:incoming>Flow_1glt1d0</bpmn:incoming>
    </bpmn:endEvent>
    <bpmn:sequenceFlow id="Flow_1glt1d0" sourceRef="Activity_0g6dibj" targetRef="Event_0rzunrw" />
    <bpmn:sequenceFlow id="Flow_1sqn6r3" sourceRef="StartEvent_0hn3ojf" targetRef="Activity_0mtirml" />
  </bpmn:process>
  <bpmndi:BPMNDiagram id="BPMNDiagram_1">
    <bpmndi:BPMNPlane id="BPMNPlane_1" bpmnElement="Process_01h17cd">
      <bpmndi:BPMNShape id="_BPMNShape_StartEvent_2" bpmnElement="StartEvent_0hn3ojf">
        <dc:Bounds x="156" y="81" width="36" height="36" />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Activity_0mtirml_di" bpmnElement="Activity_0mtirml">
        <dc:Bounds x="260" y="59" width="100" height="80" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Activity_1er8w44_di" bpmnElement="Activity_1er8w44">
        <dc:Bounds x="410" y="59" width="100" height="80" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Activity_0g6dibj_di" bpmnElement="Activity_0g6dibj">
        <dc:Bounds x="560" y="59" width="100" height="80" />
        <bpmndi:BPMNLabel />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNShape id="Event_0rzunrw_di" bpmnElement="Event_0rzunrw">
        <dc:Bounds x="712" y="81" width="36" height="36" />
      </bpmndi:BPMNShape>
      <bpmndi:BPMNEdge id="Flow_1yhw9no_di" bpmnElement="Flow_1yhw9no">
        <di:waypoint x="360" y="99" />
        <di:waypoint x="410" y="99" />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Flow_0n86246_di" bpmnElement="Flow_0n86246">
        <di:waypoint x="510" y="99" />
        <di:waypoint x="560" y="99" />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Flow_1glt1d0_di" bpmnElement="Flow_1glt1d0">
        <di:waypoint x="660" y="99" />
        <di:waypoint x="712" y="99" />
      </bpmndi:BPMNEdge>
      <bpmndi:BPMNEdge id="Flow_1sqn6r3_di" bpmnElement="Flow_1sqn6r3">
        <di:waypoint x="192" y="99" />
        <di:waypoint x="260" y="99" />
      </bpmndi:BPMNEdge>
    </bpmndi:BPMNPlane>
  </bpmndi:BPMNDiagram>
</bpmn:definitions>
{% endbpmn %}

{% raw %}
    {% bpmn %}
    <?xml version="1.0" encoding="UTF-8"?>
    <bpmn:definitions xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpmn="http://www.omg.org/spec/BPMN/20100524/MODEL" xmlns:bpmndi="http://www.omg.org/spec/BPMN/20100524/DI" xmlns:dc="http://www.omg.org/spec/DD/20100524/DC" xmlns:di="http://www.omg.org/spec/DD/20100524/DI" id="Definitions_1yojdrb" targetNamespace="http://bpmn.io/schema/bpmn" exporter="bpmn-js (https://demo.bpmn.io)" exporterVersion="10.2.0">
    <bpmn:process id="Process_01h17cd" isExecutable="false">
        <bpmn:startEvent id="StartEvent_0hn3ojf">
        <bpmn:outgoing>Flow_1sqn6r3</bpmn:outgoing>
        </bpmn:startEvent>
        <bpmn:task id="Activity_0mtirml" name="1. Collect Underpants">
        <bpmn:incoming>Flow_1sqn6r3</bpmn:incoming>
        <bpmn:outgoing>Flow_1yhw9no</bpmn:outgoing>
        </bpmn:task>
        <bpmn:task id="Activity_1er8w44" name="2. ?">
        <bpmn:incoming>Flow_1yhw9no</bpmn:incoming>
        <bpmn:outgoing>Flow_0n86246</bpmn:outgoing>
        </bpmn:task>
        <bpmn:sequenceFlow id="Flow_1yhw9no" sourceRef="Activity_0mtirml" targetRef="Activity_1er8w44" />
        <bpmn:task id="Activity_0g6dibj" name="3. Profit">
        <bpmn:incoming>Flow_0n86246</bpmn:incoming>
        <bpmn:outgoing>Flow_1glt1d0</bpmn:outgoing>
        </bpmn:task>
        <bpmn:sequenceFlow id="Flow_0n86246" sourceRef="Activity_1er8w44" targetRef="Activity_0g6dibj" />
        <bpmn:endEvent id="Event_0rzunrw">
        <bpmn:incoming>Flow_1glt1d0</bpmn:incoming>
        </bpmn:endEvent>
        <bpmn:sequenceFlow id="Flow_1glt1d0" sourceRef="Activity_0g6dibj" targetRef="Event_0rzunrw" />
        <bpmn:sequenceFlow id="Flow_1sqn6r3" sourceRef="StartEvent_0hn3ojf" targetRef="Activity_0mtirml" />
    </bpmn:process>
    <bpmndi:BPMNDiagram id="BPMNDiagram_1">
        <bpmndi:BPMNPlane id="BPMNPlane_1" bpmnElement="Process_01h17cd">
        <bpmndi:BPMNShape id="_BPMNShape_StartEvent_2" bpmnElement="StartEvent_0hn3ojf">
            <dc:Bounds x="156" y="81" width="36" height="36" />
        </bpmndi:BPMNShape>
        <bpmndi:BPMNShape id="Activity_0mtirml_di" bpmnElement="Activity_0mtirml">
            <dc:Bounds x="260" y="59" width="100" height="80" />
            <bpmndi:BPMNLabel />
        </bpmndi:BPMNShape>
        <bpmndi:BPMNShape id="Activity_1er8w44_di" bpmnElement="Activity_1er8w44">
            <dc:Bounds x="410" y="59" width="100" height="80" />
            <bpmndi:BPMNLabel />
        </bpmndi:BPMNShape>
        <bpmndi:BPMNShape id="Activity_0g6dibj_di" bpmnElement="Activity_0g6dibj">
            <dc:Bounds x="560" y="59" width="100" height="80" />
            <bpmndi:BPMNLabel />
        </bpmndi:BPMNShape>
        <bpmndi:BPMNShape id="Event_0rzunrw_di" bpmnElement="Event_0rzunrw">
            <dc:Bounds x="712" y="81" width="36" height="36" />
        </bpmndi:BPMNShape>
        <bpmndi:BPMNEdge id="Flow_1yhw9no_di" bpmnElement="Flow_1yhw9no">
            <di:waypoint x="360" y="99" />
            <di:waypoint x="410" y="99" />
        </bpmndi:BPMNEdge>
        <bpmndi:BPMNEdge id="Flow_0n86246_di" bpmnElement="Flow_0n86246">
            <di:waypoint x="510" y="99" />
            <di:waypoint x="560" y="99" />
        </bpmndi:BPMNEdge>
        <bpmndi:BPMNEdge id="Flow_1glt1d0_di" bpmnElement="Flow_1glt1d0">
            <di:waypoint x="660" y="99" />
            <di:waypoint x="712" y="99" />
        </bpmndi:BPMNEdge>
        <bpmndi:BPMNEdge id="Flow_1sqn6r3_di" bpmnElement="Flow_1sqn6r3">
            <di:waypoint x="192" y="99" />
            <di:waypoint x="260" y="99" />
        </bpmndi:BPMNEdge>
        </bpmndi:BPMNPlane>
    </bpmndi:BPMNDiagram>
    </bpmn:definitions>
    {% endbpmn %}
{% endraw %}
