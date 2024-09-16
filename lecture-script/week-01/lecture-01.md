# Coding Architecture I: HS24
 
## Week 01 - Python Basics

![Course Banner](./resources/allgemein/CAI-Banner_hs24.jpg)

## Table of Contents

- [Introduction](#introduction)
- [Overview](#overview)
- [Team](#team)
- [Course Administration](#course-administration)
  - [Semester Structure](#semester-structure)
  - [Room](#room)
  - [Moodle](#moodle)
  - [Tutoring Groups](#tutoring-groups)
  - [Grading](#grading)
  - [Assignments](#assignments)
  - [Software Requirements and Installation](#software-requirements-and-installation)
- [Intro to Programming](#intro-to-programming)
  - [Roadmap](#roadmap)
  - [What is Programming](#what-is-programming)
  - [Anatomy of Code](#anatomy-of-code)
  - [Grasshopper Introduction](#grasshopper-introduction)
- [Code Examples](#code-examples)
- [Assignment 0 (ungraded)](#assignment-0-ungraded)
- [Teaching Materials](#teaching-material)


## Introduction

**Coding Architecture I** is a programming class specifically designed for architects. The course focuses on demystifying technology — both software and hardware — and exploring the programmability of our world through digital, computational, and algorithmic design methods, enabling architects to grasp the fundamental principles and practical applications within our increasingly digital world.

This course is an entry point into the world of programming, with a specific emphasis on its application in architecture. You’ll learn how to use Python as the primary programming language, and we’ll work extensively with Rhino and Grasshopper to bridge the gap between text-based coding and 3D modeling. 

**Coding Architecture II**, which is available as a spring semester course will build upon the foundations laid in this course, teaching more advanced topics as well as  applications of computational architecture.

## Overview

Throughout the course, you will:

- Develop an understanding of essential programming concepts and algorithmic thinking.
- Learn to apply digital and computational methods in architectural design.
- Improve your problem-solving abilities by creating algorithmic solutions.
- Work on materializing your digital designs into the physical world.

Lectures, tutorials, and exercises will cover:

- Basic Grasshopper usage and code interaction, building on your existing knowledge.
- Basic to advanced programming skills using Python.
- Applications of Python programming within the architectural design environment.
- Practical examples of how these skills can be applied in digital fabrication and architecture.

No prior coding experience is required, making this course accessible to all students, regardless of their background. By the end of the course, you’ll be equipped with the tools and knowledge to incorporate digital technologies into your design processes effectively.

## Team

![Teaching Team](./resources/allgemein/Team_Overview_HS24.png)

<!-- This course is held by Gonzalo Casas. The first iteration (hs23) was designed by Halima Hassan, and subsequently revamped for the fall semester 24 by Lorin Wiedemeier.
We are supported by Francesco Milano, Alexandra Moisi, Lancelot Burwell, Eric Gozzi and Neroli Soso as TAs.

>not sure if necessary (just because) -->

## Course Administration

### Semester Structure

[![Semester Structure](./resources/lecture-01/Course-Structure.jpg)](./resources/lecture-01/Course-Structure.jpg)

<!-- --- -->
The semester structure for Coding Architecture I is designed to progressively build your skills in programming and computational design. The course begins with foundational lessons in Python, gradually introducing more complex topics such as Object-Oriented Programming (OOP), Computational Geometry and the COMPAS framework. Each week is dedicated to a specific theme, ensuring a comprehensive understanding of the key concepts.

Assignments are strategically spaced throughout the semester, starting with simpler tasks like constructing a brick wall, and advancing to more challenging projects, culminating in a final project that integrates all the learned skills. The schedule also includes tutored sessions and review periods, providing sufficient opportunity for guided practice and feedback. 

### Room

The course “Coding Architecture I” will take place on Thurdays from 15:45-18:30 (no break) in room **HCI J7**.

>Please note:  We will try to provide as many powerplugs as we can, but we may not be able to cover the entire room! We kindly request that you bring your laptops fully charged to each session.

### Moodle

Moodle will serve as our primary teaching platform. From there, you will access all course materials, relevant administrative information, download and submission links, and quizzes. Additionally, Moodle hosts the course forum, where you can ask questions and engage in discussions with your peers and instructors.

Follow this [LINK](https://moodle-app2.let.ethz.ch/course/view.php?id=22789)
to access to the Moodle course plattform.

<!-- ![Moodle Platform](./resources/lecture-01/MoodleScreenshot_01.png) -->
![Moodle Platform](./resources/lecture-01/MoodleScreenshot_02.png)

### Tutoring Groups

<p align="middle">
<img src="./resources/lecture-01/Tutor-Selection_hs24.jpg" alt="Tutor Selection" height="380"/>
</p>

To ensure a smooth learning experience, we have assigned 6 tutors who will serve as your points of contact throughout the semester. They will be available to assist you with any content-related or administrative questions you may have. We highly recommend signing up for a tutor on Moodle as soon as possible.

LINK: [Moodle: Tutor Selection](https://moodle-app2.let.ethz.ch/mod/choicegroup/view.php?id=1066037)

> Please note that *from October 29th to December 5th* Neroli Soso will only be available for tutoring **via Zoom** . If you prefer or don't mind digital communication, we encourage you to consider her as your tutor.

### Grading 

“Coding Architecture” is a dynamic and interactive course with a strong practical hands-on approach. Hence, it is strongly recommended that you attend and actively participate in the in-person course sessions. Furthermore the course sessions incorporate step by step tutorials that are solved together in class. Understanding each step explained in these tutorial sessions is essential for successfully completing the assignments on your own. During the session you will have the possibility to ask questions and engage with tutors which will maximize your learning process throughout the course.

See [here](https://moodle-app2.let.ethz.ch/mod/page/view.php?id=1066044) for details about the grading process and your requirements.

### Assignments

The course includes four major assignments that progressively increase in complexity, allowing you to test and improve your programming abilities. These assignments cover a range of topics, from basic list and loop operations to object-oriented programming. The culmination of the assignments is a final project where you will design an entire building complex in a real architectural context in Zürich. It is recommended to complete the assignment submissions well in advance of the review session deadline, which is at noon on the day of the session.

### Software Requirements and Installation

See [here](/getting-started/README.md) for details about software requirements and installation of the tools.


## Intro to Programming

### Roadmap

The "becoming a computational designer" roadmap is a comprehensive guide that outlines the necessary steps to becoming proficient in computational design. It covers foundational concepts such as data and algorithms, as well as more advanced topics. The roadmap also provides visual references, with equivalent concepts in Grasshopper highlighted in green and programming concepts highlighted in blue below:

See [here](/roadmap/README.md) for more information about the **Roadmap: becoming a computational designer**.

[![Roadmap](./resources/lecture-01/roadmap.jpg)](./resources/lecture-01/roadmap.jpg)

<!-- <div style="display: flex; justify-content: center; align-items: center; height: 1vh;">
    <p style="font-size: 75%;">
        ↑ click to view ↑
    </p>
</div> -->

### What is Programming

At its core, programming can be understood as the process of transforming data. You start with input data—whether numerical values, text, or other forms of information—apply a set of operations or processes to it, and produce output data. This transformation is fundamental to all programming tasks.

<!-- >Input → Process → Output -->

![What is Code](./resources/lecture-01/WhatIsProgramming_wide.jpg)

Consider Excel as a simple analogy: you might have a set of numbers to which you add another set or calculate their deviation from an average. The result is a new set of numbers—your output. What occurred in between is a data transformation.

Similarly, in Grasshopper, each component operates on this principle. You provide inputs, the component processes them internally, and then you get outputs. This process of input-output transformation is at the heart of both visual programming in Grasshopper and traditional text-based programming.

On a slightly more complex level, software can be seen as the combination of data structures and algorithms.

>*Data structures + Algorithms = Programs*

Data structures are essentially containers that hold data of varying complexity, while algorithms are step-by-step instructions executed in a specific order to perform a task.

### Anatomy of Code

Code, at its core, is a sequence of instructions executed from top to bottom, as opposed to the flow of components from left to right in Grasshopper. Understanding how to read and structure code is essential, as each line of code contributes to the overall functionality of a program. In this section, we'll break down the fundamental building blocks of Python code, likening them to architectural elements to make the concepts more intuitive.

#### Python Fundamentals

Just as bricks can be conceived of as the basic units of a building, the following elements are the minimal building blocks of Python code. Each component, whether a comment, data type, or basic expression, plays a crucial role in constructing a functional program.

```python
# -----------------------------------
# ------------ Comments -------------

# Single line comments start with a hash.

"""
This is a multi-line comment.
It can span multiple lines.
Ideal for longer descriptions.
"""

# -----------------------------------
# ----------- Data Types ------------

# Integer: Whole numbers without a decimal point.
integer_example = 42

# Float: Numbers that include a decimal point.
float_example = 4.2429

# String: A sequence of characters in either single or double quotes.
string_example = "42"
string_example_2 = "abc"

# Boolean: Represents two values: True or False.
boolean_example = True
```

#### Expresions and Assignments

Think of expressions and assignments as the walls that structure your code. They allow you to perform operations and store the results, giving your code a defined structure and purpose.

```python
# ------------------------------------
# ---- Expressions and Statements ----

# Expression: A combination of values and functions that are combined and interpreted by the interpreter to create a new value.
expression_example = 42 * 10  # Multiplies 42 by 10
addition_example = 3 + 5      # Adds 3 and 5

# Using a function in an expression
from math import sqrt
sqrt_example = sqrt(64)       # Calculates the square root of 64

# Statements: Instructions that a Python interpreter can execute.
print 42                       # Prints 42 to the console (Note: print is a statement in Python 2.7)

# Conditional statement
x = True
if x:
    print "x is True"         # Executes if x is True

# Return statement in a function
def get_number():
    return 42                 # Returns 42 from this function


# -------------------------------------
# ------------ Assignments ------------

# Assigning a value to a variable
a = 10                        # Assigns the integer 10 to variable a

# Assigning the result of an expression to a variable
b = a * 2                     # Multiplies a by 2 and stores the result in b
```

#### Control Structures and Functions

Control structures and functions are like the framework and utilities of your code, directing the flow and defining reusable operations. They allow you to build more complex and organized programs.

```python
# -------------------------------------
# --------- Control Structures --------

# If statement
if b > 10:
    print "b is greater than 10"

# For loop
for i in range(5):
    print i                   # Prints numbers 0 to 4

# While loop
count = 0
while count < 5:
    print count
    count += 1                # Prints numbers 0 to 4, incrementing count each time

# ----------------------------
# --------- Functions --------

# Defining a simple function
def add_numbers(x, y):
    return x + y              # Returns the sum of x and y

# Calling a function
result = add_numbers(5, 3)
print result                  # Prints 8
```

### Grasshopper Introduction

Grasshopper is a visual programming language and environment for Rhinoceros3D. It is commonly used in computational design and architecture to create parametric models and generative designs. We want to draw a parallel here to our ["conception of programming"](#what-is-programming), where we postulated that an *input* is somehow transformed by a *process*, resulting in an *output*.

By connecting components and algorithms in Grasshopper's visual interface, you can manipulate geometry, automate tasks, and explore design alternatives. To learn more about Grasshopper and its capabilities, refer to the [Teaching Material](https://gramaziokohler.arch.ethz.ch/teaching-materials/) section for in-depth resources and links.

![Grasshopper Basics](/lecture-script/resources/lecture-01/GrasshopperBasics.png)

## Code Examples

Follow this [Link](/examples/week-01/README.md) to find this week's relevant grasshopper files and teaching materials.

## Assignment 0 (Ungraded)

### Calculator

The task of the first (ungraded) assignment is to create a simple calculator program that can perform four basic arithmetic operations: addition, subtraction, multiplication, and division. 

Click the link [here](/assignments/A00-ungraded-assignment/README.md) to learn the details of the first assignment.

## Teaching Material

We have compiled a list of essential links and resources to support your learning throughout the semester. These materials cover foundational topics in programming, computational geometry, visual programming, Rhino, and Grasshopper. You will also find API references that include the methods, classes, and functions needed for your assignments and projects. Additionally, we've included a selection of books and other resources to help you deepen your understanding of the course topics. These resources are intended to provide you with the necessary tools and information as you progress through the course.

### Foundational Material

- [GKR Teaching Material](https://gramaziokohler.arch.ethz.ch/teaching-materials/)

### Rhino

- [Rhino User Guide](https://docs.mcneel.com/rhino/7/usersguide/en-us/index.htm)
- [Rhino Command List for 3D Modelling](https://docs.mcneel.com/rhino/7/help/en-us/commandlist/command_list.htm)
- [RhinoScript Syntax](https://developer.rhino3d.com/api/RhinoScriptSyntax/)
- [RhinoCommon API](https://developer.rhino3d.com/api/rhinocommon/)
- [Rhino Python Guide](https://developer.rhino3d.com/guides/rhinopython/)
- [Rhino Python 101 Primer](https://www.rhino3d.com/download/IronPython/6.0/RhinoPython101/)

### Grasshopper

- [GrasshopperDocs](https://grasshopperdocs.com)
- [Grasshopper Basics](https://gramaziokohler.arch.ethz.ch/teaching-materials/03_grasshopper/)
- [Grasshopper Python Basics](https://gramaziokohler.arch.ethz.ch/teaching-materials/04_python/)

### Python

- [Python Reference](https://docs.python.org/3/c-api/index.html)
- [Python Roadmap](https://roadmap.sh/python)

### COMPAS

- [COMPAS API](https://compas.dev/compas/latest/api/index.html)

### Books


- [Geometric Computation : Foundations for Design](https://gramaziokohler.arch.ethz.ch/teaching-materials/02_rhino/)
- [Morphing : a Guide to Mathematical Transformations for Architects and Designers](https://gramaziokohler.arch.ethz.ch/teaching-materials/03_grasshopper/)
- [AAD_algorithms-Aided Design : Parametric Strategies Using Grasshopper®](https://gramaziokohler.arch.ethz.ch/teaching-materials/04_python/)

### Books and other Resources

For online access using your ETH Account, you have to be in the ETH network or VPN.

- Ko, Joy, and Kyle Steinfeld. Geometric Computation : Foundations for Design. London: Routledge, 2018.
Online access with ETH Account: Link
[ Copy available at ETH Architecture and Civil Engineering Library ]  ISBN : 1-317-65907-4
- Choma, Joseph. Morphing : a Guide to Mathematical Transformations for Architects and Designers. London: Laurence King Publishing, 2015.
Online access with ETH Account: Link
[ Copy available at ETH Architecture and Civil Engineering Library ] ISBN : 1780674139

- Tedeschi, Arturo, and Fulvio Wirz. AAD_algorithms-Aided Design : Parametric Strategies Using Grasshopper®. Brienza (Potenza): Le Penseur, 2020.
ISBN : 9788895315300

### Video recordings
The lecture recordings will be available on the ETH Video Portal to serve as reference, however, presence during lectures is required.

---

<p align="middle">
<img src="./resources/allgemein/GKR-Logo.png" alt="Tutor Selection" height="150"/>
</p>