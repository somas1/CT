---
jupytext:
  text_representation:
    extension: .md
    format_name: myst
    format_version: 0.13
    jupytext_version: 1.14.4
kernelspec:
  display_name: Python 3
  language: python
  name: python3
---

+++ {"id": "view-in-github", "colab_type": "text"}

<a href="https://colab.research.google.com/github/somas1/CT/blob/main/OOP/Thursday_Lesson_Inclass_Rangers63_(1).ipynb" target="_parent"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"/></a>

+++ {"id": "dQS6C-ZwM4KV"}

# Object-Oriented-Programming (OOP)

+++ {"id": "n3NO0M6BM4KX"}

## Tasks Today:

   

1) <b>Creating a Class (Initializing/Declaring)</b> <br>
2) <b>Using a Class (Instantiating)</b> <br>
 &nbsp;&nbsp;&nbsp;&nbsp; a) Creating One Instance <br>
 &nbsp;&nbsp;&nbsp;&nbsp; b) Creating Multiple Instances <br>
 &nbsp;&nbsp;&nbsp;&nbsp; c) In-Class Exercise #1 - Create a Class 'Car' and instantiate three different makes of cars <br>
3) <b>The \__init\__() Method</b> <br>
 &nbsp;&nbsp;&nbsp;&nbsp; a) The 'self' Attribute <br>
4) <b>Class Attributes</b> <br>
 &nbsp;&nbsp;&nbsp;&nbsp; a) Initializing Attributes <br>
 &nbsp;&nbsp;&nbsp;&nbsp; b) Setting an Attribute Outside of the \__init\__() Method <br>
 &nbsp;&nbsp;&nbsp;&nbsp; c) Setting Defaults for Attributes <br>
 &nbsp;&nbsp;&nbsp;&nbsp; d) Accessing Class Attributes <br>
 &nbsp;&nbsp;&nbsp;&nbsp; e) Changing Class Attributes <br>
 &nbsp;&nbsp;&nbsp;&nbsp; f) In-Class Exercise #2 - Add a color and wheels attribute to your 'Car' class <br>
5) <b>Class Methods</b> <br>
 &nbsp;&nbsp;&nbsp;&nbsp; a) Creating <br>
 &nbsp;&nbsp;&nbsp;&nbsp; b) Calling <br>
 &nbsp;&nbsp;&nbsp;&nbsp; c) Modifying an Attribute's Value Through a Method <br>
 &nbsp;&nbsp;&nbsp;&nbsp; d) Incrementing an Attribute's Value Through a Method <br>
 &nbsp;&nbsp;&nbsp;&nbsp; e) In-Class Exercise #3 - Add a method that prints the cars color and wheel number, then call them <br>
6) <b>Inheritance</b> <br>
 &nbsp;&nbsp;&nbsp;&nbsp; a) Syntax for Inheriting from a Parent Class <br>
 &nbsp;&nbsp;&nbsp;&nbsp; b) The \__init\__() Method for a Child Class (super()) <br>
 &nbsp;&nbsp;&nbsp;&nbsp; c) Defining Attributes and Methods for the Child Class <br>
 &nbsp;&nbsp;&nbsp;&nbsp; d) Method Overriding <br>
 &nbsp;&nbsp;&nbsp;&nbsp; e) In-Class Exercise #4 - Create a class 'Ford' that inherits from 'Car' class and initialize it as a Blue Ford Explorer with 4 wheels using the super() method <br>
7) <b>Classes as Attributes</b> <br>
8) <b>Exercises</b> <br>
 &nbsp;&nbsp;&nbsp;&nbsp; a) Exercise #1 - Turn the shopping cart program from yesterday into an object-oriented program <br>

+++ {"id": "cBwqLDX0M4KY"}

## Creating a Class (Initializing/Declaring)
<p>When creating a class, function, or even a variable you are initializing that object. Initializing and Declaring occur at the same time in Python, whereas in lower level languages you have to declare an object before initializing it. This is the first step in the process of using a class.</p>

```{code-cell} ipython3
:id: nZHRYcCeM4KZ

class Car():
    wheels = 4
    color = 'blue'
```python

+++ {"id": "oT17Jz5oM4KZ"}

## Using a Class (Instantiating)
<p>The process of creating a class is called <i>Instantiating</i>. Each time you create a variable of that type of class, it is referred to as an <i>Instance</i> of that class. This is the second step in the process of using a class.</p>

+++ {"id": "vrpbGjFhM4Ka"}

##### Creating One Instance

```{code-cell} ipython3
---
colab:
  base_uri: https://localhost:8080/
id: AzJ8Nj7fM4Ka
outputId: 89c90bbc-28ee-480a-f364-ce0714d29bf1
---
ford = Car()
print(ford.wheels)
print(ford.color)
```

+++ {"id": "NTxb9M_eM4Kb"}

##### Creating Multiple Instances

```{code-cell} ipython3
---
colab:
  base_uri: https://localhost:8080/
  height: 236
id: ypQwugcaM4Kb
outputId: 057f0d3c-90e9-4252-f1e5-9806cf5a5c02
---
chevy = Car()
honda = Car()
porsche = Car()

print(type(porsche.color))
print(type(porsche.bumper))
```

+++ {"id": "yaiud8QqM4Kc"}

##### In-Class Exercise #1 - Create a Class 'Car' and Instantiate three different makes of cars

```{code-cell} ipython3
---
colab:
  base_uri: https://localhost:8080/
id: B25m-JNeM4Kd
outputId: df27c4c7-64dd-4353-8837-f145806a47d0
---
class Car():
  wheels = 4
  color = 'blue'

toyota = Car()
lexus = Car()
mercedes = Car()

print(toyota.wheels)
print(lexus.color)
print(mercedes.color)
```

+++ {"id": "VpAlDOCjM4Kd"}

## The \__init\__() Method <br>
<p>This method is used in almost every created class, and called only once upon the creation of the class instance. This method will initialize all variables needed for the object.</p>

```{code-cell} ipython3
---
colab:
  base_uri: https://localhost:8080/
id: 7YfhYvExM4Ke
outputId: aa751c9d-574f-4d4a-8c0f-860f90ad5d5c
---
class Car():
  engine = '4.7L' # contant attribute
  def __init__(self, wheels, color):
     self.wheels = wheels
     self.color = color

ford = Car(4, 'red')
chevy = Car(6, 'black')

print(ford.wheels)
print(chevy.wheels)
```

+++ {"id": "wUGhc6xhM4Ke"}

##### The 'self' Attribute <br>
<p>This attribute is required to keep track of specific instance's attributes. Without the self attribute, the program would not know how to reference or keep track of an instance's attributes.</p>

```{code-cell} ipython3
:id: hR74Cgv4M4Ke

# see above
```

+++ {"id": "97zRwIreM4Kf"}

## Class Attributes <br>
<p>While variables are inside of a class, they are referred to as attributes and not variables. When someone says 'attribute' you know they're speaking about a class. Attributes can be initialized through the init method, or outside of it.</p>

+++ {"id": "cB-WFgnsM4Kf"}

##### Initializing Attributes

```{code-cell} ipython3
:id: vY7zXZuPM4Kf

# see above

class Toy():
  kind = 'car'

  def __init__(self, rooftop, horn, wheels = 4):
     self.rooftop = rooftop
     self.horn = horn
     self.wheels = wheels

tonka_truck = Toy(1,1)
hotwheels_car = Toy(2,3,8)
```

+++ {"id": "dpm6gvbfM4Kf"}

##### Accessing Class Attributes

```{code-cell} ipython3
---
colab:
  base_uri: https://localhost:8080/
id: HX46VC0OM4Kf
outputId: fe35441c-4ab5-4241-b4de-9bb506f2acf2
---
# See Above
print(tonka_truck.horn)
print(hotwheels_car.wheels)

```

+++ {"id": "A3fqObq0M4Kg"}

##### Setting Defaults for Attributes

```{code-cell} ipython3
---
colab:
  base_uri: https://localhost:8080/
id: x1XGzHXyM4Kg
outputId: 4bcc7962-83ad-46f1-a70f-dcfae95a3ac4
---
class Car():
  engine = '4.7L' # contant attribute
  def __init__(self, wheels):
     self.wheels = wheels
     self.color = 'blue' # Cannot overwrite

honda = Car(4)
print(honda.color)
print(honda.wheels)
```

+++ {"id": "q-cICAyoM4Kg"}

##### Changing Class Attributes <br>
<p>Keep in mind there are global class attributes and then there are attributes only available to each class instance which won't effect other classes.</p>

```{code-cell} ipython3
:id: ibzEKpGBM4Kh

# see above
```

```{code-cell} ipython3
:id: 26YRo5glM4Kh


```

+++ {"id": "A7u6A-lNM4Kh"}

##### In-Class Exercise #2 - Add a doors and seats attribute to your 'Car' class then print out two different instances with different doors and seats

```{code-cell} ipython3
---
colab:
  base_uri: https://localhost:8080/
id: 306T_0csM4Kh
outputId: d4a10c80-b065-4ffc-d36c-fb94ec5a0d4e
---
class Car():
  engine = '4.7L' # contant attribute
  def __init__(self, wheels, color, doors, seats):
     self.wheels = wheels
     self.color = color
     self.doors = doors
     self.seats = seats

ford = Car(4, 'blue', 4, 4)
corvette = Car(4, 'red', 2, 2)

print(ford.wheels, ford.color, ford.doors, ford.seats)
print(corvette.wheels, corvette.color, corvette.doors, corvette.seats)
```

+++ {"id": "6imec-0JM4Kh"}

## Class Methods <br>
<p>While inside of a class, functions are referred to as 'methods'. If you hear someone mention methods, they're speaking about classes. Methods are essentially functions, but only callable on the instances of a class.</p>

+++ {"id": "5TsZcxHPM4Kh"}

##### Creating

```{code-cell} ipython3
:id: KQXMNsePM4Kh

class ShoppingBag():
  '''
  The ShoppingBag class will have handles, capacity,
  and items to place inside.

  Attributes for the class:
  - handles: expected to be an integer
  - capacity: expected to be an integer
  - items: expected to be a list
  '''

  def __init__(self, handles, items = [], capacity = 10):
    self.handles = handles
    self.items = items
    self.capacity = capacity

  def showShoppingBag(self):
    if len(self.items) == 0:
      print('You have no items')
    else:
      print('You have items in your bag!!!')
      for item in self.items:
        print(item)

  def showCapacity(self):
    print(f'Your remaining capacity is: {self.capacity - len(self.items)}')

  def addToShoppingBag(self): # If capacity is full, reject new items.
    if len(self.items) == self.capacity:
      print('You have no room')
    else:
      product = input('What would you like to add? ')
      self.items.append(product)

  def showHandles(self):
    print(f'You have {self.handles} handles on your bag')

```

+++ {"id": "tsnPHhq7M4Ki"}

##### Calling

```{code-cell} ipython3
---
colab:
  base_uri: https://localhost:8080/
id: IAZ_eHz8M4Ki
outputId: 46611ed9-f894-40f6-d694-c239916200b9
---
# See Above
wholeFoodsBag = ShoppingBag(2)

def run():
  while True:
    response = input("What would you like to do?\n\nYou may:\n-Add\n-Show\n-Quit\n")

    if response.lower() == 'quit':
      wholeFoodsBag.showShoppingBag()
      print('Thanks for shopping')
      break
    elif response.lower() == 'add':
      wholeFoodsBag.addToShoppingBag()
    elif response.lower() == 'show':
      showChoice = input('What would you like to see: \n-Capacity\n-Handles\n-Shopping Bag\n')
      if showChoice.lower() == 'capacity':
        wholeFoodsBag.showCapacity()
      elif showChoice.lower() == 'handles':
        wholeFoodsBag.showHandles()
      else:
        wholeFoodsBag.showShoppingBag()
    else:
      print('That is not a valid option. Please enter add, show or quit.')
run()
```

+++ {"id": "zHF54CIhM4Ki"}

##### Modifying an Attribute's Value Through a Method

---


```{code-cell} ipython3
:id: e94wzCTYM4Ki


```

+++ {"id": "6VMAJIIUM4Ki"}

##### Incrementing an Attribute's Value Through a Method

```{code-cell} ipython3
:id: 4DBl63M-M4Kj


```

+++ {"id": "CroOsMb8M4Kk"}

##### In-Class Exercise #3 - Add a method that takes in three parameters of year, doors and seats and prints out a formatted print statement with make, model, year, seats, and doors

```{code-cell} ipython3
---
colab:
  base_uri: https://localhost:8080/
id: BblLs1hFM4Kk
outputId: 2c13593d-a90a-418a-fc00-24acc6326244
---
# Create class with 2 paramters inside of the __init__ which are make and model

# Inside of the Car class create a method that has 4 parameter in total (self,year,door,seats)

# Output: This car is from 2019 and is a Ford Expolorer and has 4 doors and 5 seats

class Car():
  def __init__(self, make, model):
    self.make = make
    self.model = model

  def yearDoorSeats(self, year, door, seats):
    print(f'This car is from {year} and is a {self.make} {self.model} and has {door} doors and {seats} seats')

ford = Car('Ford', 'Explorer').yearDoorSeats('2019', 4, 5)
ford
```

+++ {"id": "HbkElc8qM4Kk"}

## Inheritance <br>
<p>You can create a child-parent relationship between two classes by using inheritance. What this allows you to do is have overriding methods, but also inherit traits from the parent class. Think of it as an actual parent and child, the child will inherit the parent's genes, as will the classes in OOP</p>

+++ {"id": "zySndDy8M4Kk"}

##### Syntax for Inheriting from a Parent Class

```{code-cell} ipython3
:id: dKNwUO2JM4Kk


```

+++ {"id": "V1CcgnNaM4Kl"}

##### The \__init\__() Method for a Child Class - super()

```{code-cell} ipython3
:id: q4hPDVZqM4Kl


```

+++ {"id": "qM00AZRmM4Kl"}

##### Defining Attributes and Methods for the Child Class

```{code-cell} ipython3
:id: dC47CT1xM4Kl

# See Above
```

+++ {"id": "mxxAjgc9M4Km"}

##### Method Overriding

```{code-cell} ipython3
:id: JORNjYquM4Km

# See Above
```

+++ {"id": "gryWMHTtM4Km"}

## Classes as Attributes <br>
<p>Classes can also be used as attributes within another class. This is useful in situations where you need to keep variables locally stored, instead of globally stored.</p>

```{code-cell} ipython3
:id: 1LqspaS7M4Km


```

+++ {"id": "zEpfEdvfM4Km"}

# Exercises

+++ {"id": "cuKXNHyvM4Km"}

### Exercise 1 - Turn the shopping cart program from yesterday into an object-oriented program

The comments in the cell below are there as a guide for thinking about the problem. However, if you feel a different way is best for you and your own thought process, please do what feels best for you by all means.

```{code-cell} ipython3
---
colab:
  base_uri: https://localhost:8080/
id: mCOWwBTeM4Km
outputId: 764f6246-44fe-4398-a30b-6e31c2ea243a
---
from IPython.core.formatters import traceback
from IPython.core.display import clear_output
import traceback
# Create a class called cart that retains items and has methods to add, remove, and show

class Cart():
    '''
    The Cart class will have items and methods to add, remove and show these
    items.

    The Cart will do the following:
      1) Takes in input
      2) Stores user input into a dictionary
      3) The User can add or remove items
      4) The User can see items currently in cart
      5) The program Loops until user 'quits'
      6) Upon quiting the program, print out all items in the user's cart

    Attributes for this class:
    cart: expected to be a dictionary.
    '''

    def __init__(self, cart = {}):
      self.cart = cart

    def showCart(self):
      if len(self.cart.items()) == 0:
        print('You have no items in your cart.\n')
      else:
        for key, value in self.cart.items():
          print(f"You have the following items in your cart: {key} -> {value}")

    def addItem(self):
      clear_output()
      item = input('What would you like to add?\n')
      self.cart[len(self.cart)+1] = item
      print(f"Added {item} to your cart")
      self.showCart()

    def removeItem(self):
      self.showCart()
      if self.cart:
        try:
          item = input('Which numbered item would you like to remove?\n\n')
          removed = self.cart.pop(int(item))
          print(f'Removed {removed} from your cart.')
        except:
          traceback.print_exc()
          print("Sorry, I can't do that. Try something else")
      else:
        print('Your cart is empty!')

      self.showCart()

    def clear(self):
      self.cart.clear()
      print('Your cart has been cleared.')

def main():
  cart = Cart()
  while True:
    command = input('\nWhat would you like to do? \n-Show/\n-Add/\n-Remove/\n-Clear \n-Quit?\n')

    if command.lower() == 'show':
      cart.showCart()
    if command.lower() == 'add':
      cart.addItem()
    if command.lower() == 'remove':
      cart.removeItem()
    if command.lower() == 'clear':
      cart.clear()
    if command.lower() == 'quit':
      if cart.cart:
        print('You have the following items in your cart:\n')
        cart.showCart()
      print('\nGoodbye!')
      break



main()


```

+++ {"id": "mIjKvMUkM4Km"}

### Exercise 2 - Write a Python class which has two methods get_String and print_String. get_String accept a string from the user and print_String print the string in upper case

```{code-cell} ipython3
---
colab:
  base_uri: https://localhost:8080/
id: wsQbfnhOM4Km
outputId: 456d482b-46b7-4610-d676-b5a1dadda416
---
class PrintStuff():
  '''
  The PrintStuff class will take a string from a user using a get_String() method
  and will print the user string in upper case using the print_String() method.

  Attributes:
  userInput: expected to be a string
  '''
  def __init__(self, userInput = ''):
    self.userInput = userInput

  def get_String(self):
    self.userInput = input('What do you want to say?:\n')
  def print_String(self):
    print(self.userInput.upper())

newString = PrintStuff()
newString.get_String()
newString.print_String()
```
