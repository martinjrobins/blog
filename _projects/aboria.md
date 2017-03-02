---
layout: single
title: "Aboria"
excerpt:  "Aboria is a C++ library that supports the implementation of 
particle-based numerical methods"
header:
  overlay_color: "#333"
  cta_url: "https://github.com/martinjrobins/Aboria"
---

Here we define a particle-based method as consisting of three
key properties:


1. There exists a set of $N$ particles that have positions within an hypercube 
   of $n$ dimensions. The boundaries of the hypercube can optionally be 
   periodic.
2. The numerical method in question can be described in terms of non-linear
   operators on the $N$ particle positions and/or variables attached to these 
        particles.
3. These operators are defined solely by the particle positions and variables, 
   and generally (but not always) take the form of interactions between pairs of 
   closely spaced particles (i.e. neighbourhood interactions). There are no 
   pre-defined connections or edges between the particles.


Aboria provides:

1. A Standard Template Library (STL) compatible particle set, with facilities 
   for spatial search queries in $n$ dimensions, with optional periodic 
   boundaries
2. A Domain Specific Language (DSL) in C++ for specifying non-linear operators 
   on the particle positions and associated variables.

