# Coding Architecture I: Week 02

This week, we will talk about iterable data types: lists, sets, tuples, as well as continue exploring different built-in functions. 

The goal of this week is to **understand and apply simple list algorithms**.

The following files are useful to follow the lecture content:

- [Lists and Loops](01-lists-and-loops.gh)
- [Sets and Duplicates](02-sets-and-duplicates.gh)
- [Strings](03-strings.gh)

## Assignment 01

Details about submission are available on Moodle. The task and files required to solve it are below:

- [Assignment files](../../assignments/A01-area-checker/)


## Micro exercises

The following are very simple micro exercises that you can go through to practice some of the concepts of the current lecture. Each of them should not take more than 5 minutes to complete.

1. In a GHPython component with two input parameters `x` and `y`, with **item access**, write a program that sums both input parameters and prints the output.

2. In a GHPython component with one input parameter `numbers` with **list access**, write a program that sums all numbers and prints the output.

3. In the previous component, print the max and min values of the list.

4. In the previous component, print the median value of the list.

5. In the previous component, print the average of all values of the list.

6. In the previous component, print the list sorted in ascending order. Then print the list sorted in descending order.

7. In a GHPython component with two input parameters called `first_list` and `second_list`, both with **list access**, write a program that prints the pairs of elements of each list, eg. the first element of `first_list` with the first of `second_list`, then second element of `first_list` with the second of `second_list`, and so on.

8. In a GHPython component, define two variables `a` and `b` with two different values, eg. `42` and `23` respectively. Then, swap the values of the two variables, so that `a` becomes `23` and `b` becomes `42`. Print the values of `a` and `b` before and after the swap.

9. In a GHPython component, define a variable called `values` and assign an empty list to it. Then append the values 0 to 9 to the list. Print the list.

10. In a GHPython component, define a variable called `duplicates` and assign a list containing duplicates, eg. `[20, 20, 5, 32, 66, 20, 32, 9]`. Then, write a program that removes all duplicates from the list. Print the list before and after the removal.

11. In a GHPython component with one input parameter `x` with **item access** connected with a number slider of decimal values, write a program rounds the value up to 2 decimal places. Print the output.

<details>
  <summary><b>Solutions</b></summary>


1. 

```python
print(x + y)
```

2. 
    
```python
print(sum(numbers))
```

3. 

```python
print(max(numbers))
print(min(numbers))
```

4.
    
```python
numbers.sort()
median_index = len(numbers) / 2
print(numbers[mean_index])
```

or 

```python
median_index = len(numbers) // 2
print(sorted(numbers)[median_index])
```

5. 
    
```python
print(sum(numbers) / len(numbers))
```

6. 
    
```python
print(sorted(numbers))
print(sorted(numbers, reverse=True))
```


7. 

```python
for i, j in zip(first_list, second_list):
    print(i, j)
```

or 

```python
for i in range(len(first_list)):
    print(first_list[i], second_list[i])
```

8. 

```python
a = 42
b = 23
print(a, b)
a, b = b, a
print(a, b)
```

9. 

```python
values = []
for i in range(10):
    values.append(i)
print(values)
```

or 

```python
values = list(range(10))
print(values)
```

10. 
    
```python
duplicates = [20, 20, 5, 32, 66, 20, 32, 9]
print(duplicates)
de_duplicated = list(set(duplicates))
print(de_duplicated)
```

11.
    
```python
print(round(x, 2))
```
</details>
