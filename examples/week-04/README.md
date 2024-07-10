# Coding Architecture I: Week 04

The goal of this week is to understand the basic principles of object-oriented programming and apply them to the filtered 3D grid.

The following files are useful to follow the lecture content:

- [Classes & Objects](01-brick-objects.gh)
- [Math in Python](math-in-python.md)

## Assignment 02

Submission link is available on Moodle. The task and files required to solve it are below:

- [Assignment files](../../assignments/A02-filtered-point-grid/)

## Micro exercises

The following are very simple micro exercises that you can go through to practice some of the concepts of the current lecture. Each of them should not take more than 10 minutes to complete. They are completely optional.

1. Create a class called `House` with two attributes `name` and `address`. Create an instance of the class and print its name and address. Change the `address` in the instance and print again.

2. Create a function that calculates the volume of a cuboid given the parameters `width`, `height`, and `depth`. Call the function with different values to test it.

3. Create a class called `Brick` with attributes `width`, `height`, and `depth`. Add a method called `calculate_volume` (just like in the exercise above) that calculates and returns the volume of the brick. Create a few instances of the `Brick` class and call the `calculate_volume` method.

4. In a GHPython component with 3 inputs `width`, `height` and `depth`, repeat the definition of the class `Brick` from the previous exercise and add one method called `create_geometry` that returns a `Box` instance for the given inputs. Use the `Draw` component of COMPAS to visualize the output.

5.  Create a `Wall` class. Use a constructor (``__init__``) that requires `width`, `height`, and `thickness` of the wall as parameters. Add a method `calculate_volume` that returns the wall's volumne. Create an instance of `Wall` and print its volumne.

6. Create a `Building` class that has one attribute: a list of `Wall` instances as created in the previous exercise. Add a method called `calculate_volume_walls` that calculates the sum of all the volumes of all the building walls. Create an instance of `Building` with at least 4 wells and print the volumne of all its walls.

<details>
  <summary><b>Solutions</b></summary>

1. 
  
```python
class House(object):
    def __init__(self, name, address):
        self.name = name
        self.address = address

my_house = House("Home", "Josefstrasse 5")
print(my_house.name, my_house.address)
my_house.address = "Limmatstrasse 1"
print(my_house.name, my_house.address)
```

2. 

```python
def volume(width, height, depth):
    return width * height * depth

print(volume(1, 1, 1))
print(volume(2, 2, 2))
```

3.

```python
class Brick(object):
    def __init__(self, width, height, depth):
        self.width = width
        self.height = height
        self.depth = depth

    def calculate_volume(self):
        return self.width * self.height * self.depth

brick1 = Brick(2, 1, 10)
print(brick1.calculate_volume())

brick2 = Brick(2, 1, 5)
print(brick2.calculate_volume())
```

4. 
  
```python
from compas.geometry import Box

class Brick(object):
    def __init__(self, width, height, depth):
        self.width = width
        self.height = height
        self.depth = depth
    
    def calculate_volume(self):
        return self.width * self.height * self.depth

    def create_geometry(self):
        return Box.from_width_height_depth(self.width, self.height, self.depth)

my_brick = Brick(width, height, depth)
a = my_brick.create_geometry()
```

5. 
  
```python
class Wall(object):
    def __init__(self, width, height, thickness):
        self.width = width
        self.height = height
        self.thickness = thickness

    def calculate_volume(self):
        return self.width * self.height * self.thickness

my_wall = Wall(10, 10, 0.5)
print(my_wall.calculate_volume())
```

6. 

```python
# class Wall is same as previous micro exercise

class Building(object):
    def __init__(self, walls):
        self.walls = walls

    def calculate_volume_walls(self):
        volume = 0
        for wall in self.walls:
            volume += wall.calculate_volume()
        return volume


wall_1 = Wall(10, 10, 0.5)
wall_2 = Wall(10, 20, 0.7)
wall_3 = Wall(10, 10, 0.5)
wall_4 = Wall(10, 20, 0.7)

walls = [wall_1, wall_2, wall_3, wall_4]
my_building = Building(walls)
print(my_building.calculate_volume_walls())
```

</details>
