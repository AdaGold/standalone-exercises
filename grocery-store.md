# Grocery Store
This exercise is another opportunity to practice Ruby object-oriented design and development.

Let's simulate a grocery store inventory system! We want to be able to keep track of the products in our grocery store. For each product, we want to track the quantity of that product as well as the location within the store (aisle).

### Think
1. Brainstorm about what nouns and verbs you associate with a grocery store inventory system
1. Go through each noun and see ask yourself if it would make sense as a class?
1. Think about how the classes will communicate. What _messages_ will they send and receive?

### Requirements

**Overall**

The grocery store inventory system needs to track the inventory of each product. If a product is "purchased" the quantity of that product should decrease. You need to figure out where to put this logic.

**Grocery Store**

At a minimum, each grocery store should:
- have a name
- store a collection of products
- associate these products with the aisle they are in
- find products in a specific aisle
- allow you to add new products

**Product**

At a minimum, each product should:
- have unique fields that describe the product
- include price logic which allows it to be discounted or full price

### Optional
Create a command-line interface for a user to interact with your grocery store. Allow users to interact with the grocery inventory system to do the operations above.
