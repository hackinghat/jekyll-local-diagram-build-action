---
layout: default
title: Mathjax
nav_order: 2
---

# Mathjax

This is a showcase for [Mathjax](https://www.mathjax.org) diagrams to show what is possible with [Jekyll Local Build Action](https://github.com/jekyll-local-diagram-build-action) and to act as an integration test for [Jekyll Local Diagram](https://github.com/hackinghat/jekyll-local-diagram)

All diagrams are generated images, and can be shared as files.

## Examples

{% raw %}
    {% mathjax %}
    x = \frac {-b \pm \sqrt {b^2 - 4ac}}{2a}
    {% endmathjax %}
{% endraw %}

{% mathjax %}
x = \frac {-b \pm \sqrt {b^2 - 4ac}}{2a}
{% endmathjax %}

{% raw %}
    {% mathjax %}
    \lim\limits_{x \to \infty} \exp(-x) = 0
    {% endmathjax %} 
{% endraw %}

{% mathjax %}
\lim\limits_{x \to \infty} \exp(-x) = 0
{% endmathjax %} 