# Coding Architecture I: Week 03

The goal of this week is to understand **iteration and conditional** concepts, `list` and nested iterations, 
basic **geometry objects** and apply them to **create a filtered point grid**.

The following files are useful to follow the lecture content:

- [Grasshopper/Python basics III](01-grasshopper-python-basics-iii.gh)

There is no assignment this week.

## Micro exercises

The following are very simple micro exercises that you can go through to practice some of the concepts of the current lecture. Each of them should not take more than 5 minutes to complete. They are completely optional.

1. In a GHPython component, use a `for` loop to create a list of 10 or more points along the X axis. Use a fixed value for Y and Z, e.g. 0, 0. Assign the list to an output parameter (eg. `a`). Use the `Draw` component of COMPAS to visualize the output.

2. In a GHPython component, use a nested `for` loop to create a list of points in a grid. The grid should be 10x10 points. Use a fixed value for Z, e.g. `0`. Assign the list to an output parameter (eg. `a`). Use the `Draw` component of COMPAS to visualize the output.

3. In a GHPython component with two inputs `nx` and `ny`, repeat the previous exercise, but allow the size of grid to be configurable using sliders to define `nx` and `ny`. Take care of selecting the right "type hint", otherwise Grasshopper will not be happy.

4. In a GHPython component with two inputs `nx` and `ny`, repeat the previous exercise, but add a conditional statement inside the `for` loop to only append points to the list if the X coordinate is even.

5. In a GHPython component with two inputs `nx` and `ny`, repeat the previous exercise, but change the conditional statement to only append points that form diagonal lines (ie. the sum of x and y is even).

6. In a GHPython component with two inputs `nx` and `ny`, repeat the previous exercise, but instead of adding the condition inside the `for` loop, create a user-defined function that accepts `x`, `y`, `z` parameters and returns `True` or `False`. Use the function inside the `for` loop to decide whether to append the point to the list or not.

7. In a GHPython component with two inputs `nx` and `ny`, repeat the previous exercise, but use the `product` function of the `itertools` module instead of using nested `for` loops.

<details>
  <summary><b>Solutions</b></summary>

1.

```python
from compas.geometry import Point

a = []
for x in range(10):
    a.append(Point(x, 0, 0))
```

2. 

```python
from compas.geometry import Point

a = []
for x in range(10):
    for y in range(10):
        a.append(Point(x, y, 0))
```

3. 

```python
from compas.geometry import Point

a = []
for x in range(nx):
    for y in range(ny):
        a.append(Point(x, y, 0))
```

4. 

```python
from compas.geometry import Point

a = []
for x in range(nx):
    for y in range(ny):
        if x % 2 == 0:
            a.append(Point(x, y, 0))
```

5. 

```python
from compas.geometry import Point

a = []
for x in range(nx):
    for y in range(ny):
        if (x + y) % 2 == 0:
            a.append(Point(x, y, 0))
```

6. 

```python
from compas.geometry import Point

def is_diagonal(x, y, z):
    return (x + y) % 2 == 0

a = []

for x in range(nx):
    for y in range(ny):
        if is_diagonal(x, y, 0):
            a.append(Point(x, y, 0))
```

7.

```python
from compas.geometry import Point
from itertools import product

a = []

for x, y in product(range(nx), range(ny)):
    if (x + y) % 2 == 0:
        a.append(Point(x, y, 0))
```

or including the function

```python
from compas.geometry import Point
from itertools import product

def is_diagonal(x, y, z):
    return (x + y) % 2 == 0

a = []

for x, y in product(range(nx), range(ny)):
    if is_diagonal(x, y, 0):
        a.append(Point(x, y, 0))
```


</details>
