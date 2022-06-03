#!/usr/bin/env python
# coding: utf-8

# In[37]:


# implement the classes listed below 
class FoodItem:
    def __init__(self, name="J's Diner", price):
        self.name = name
        self.price = price

class Burger(FoodItem):
    def __init__(self, name, price, patty="chicken", condiments=None):
        FoodItem.__init__(self, name, price)
        self.patty = patty
        self.condiments = self.condiments
    
    if patty in ['chicken', 'fish', 'beef']:
        self.price += 5
    
class Drink(FoodItem):
    def __init__(self, name, price, drink_type="coke",size="s"):
        FoodItem.__init__(self, name, price)
        self.drink_type = drink_type
        self.size = size
        
    if drink_type == 'coke':
        self.price += 1
    elif drink_type == 'ice tea':
        self.price += 2
    elif drink_type == 'milkshake':
        self.price += 3
        
        
class Side(FoodItem):
    def __init__(self, name, price, side_type="fries", sauce=None):
        FoodItem.__init__(self, name, price)
        self.side_type = side_type
        self.sauce = sauce
        
    if side_type in ['fries', 'onion rings', 'salad']:
        self.price += 2
    
class Combo(FoodItem):
    def __init__(self, name, price, patty, condiments, drink_type, size, side_type, sauce):
        FoodItem.__init__(self, name, price)
        Burger.__init__(self, patty, condiments)
        Drink.__init__(self, drink_type, size)
        Side.__init__(self, side_type, sauce)
        
class Order:
    def __init__(self):
        self.foods = list()
        self.price = 0
        self.is_combo = False
    
    def add_food(self, food):
        self.foods.append(food)
        
    def add_combo(self):
        self.is_combo = True
    
    def total_price(self):
        
    
def user_input_burger():
    b = Burger()
    patty_menu = ['chicken', 'fish', 'beef']
    #ask user for input and store it in burger object 
    while True:
        b.patty = input('What patty do you want? Chicken, Fish or Beef?').lower()
        if b.patty not in patty_menu:
            print('This is an invalid choice. Please try again!')
            continue
    while True:
        b.condiments = input('Do you want chilli? Yes/No').lower()
        if b.condiments not in ['yes', 'no']:
            print('This is an invalid choice. Please try again!')
            continue  
    return b
 
def user_input_drink():
    d = Drink()
    drink_menu = ['milkshake' , 'coke', 'ice tea']
    #ask user for input and store it in drink object
    while True:
        b.drink_type = input('What drink do you want? Milkshake, Coke or Ice Tea?').lower()
        if b.drink_type not in drink_menu:
            print('This is an invalid choice. Please try again!')
            continue
    while True:
        b.size = input('What drink size do you want? M or L').lower()
        if b.size not in ['m', 'l']:
            print('This is an invalid choice. Please try again!')
            continue      
    return d
 
def user_input_side():
    s = Side()
    #ask user for input and store it in side object 
    return s
 
def user_input_combo():
    c = Combo()
    #ask user for input and store it in combo object 
    #a combo must include one burger, one side, and one drink
    return c
 
def take_order():
    #ask user for name for the order 
    #repeat taking order until client is done 
    #display order details
    #display a thank you message
    print("Welcome to Burger Shop")
 
take_order()

