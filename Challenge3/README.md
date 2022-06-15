Challenge #3

We have a nested object, we would like a function that you pass in the object and a key and get back the value. How this is implemented is up to you.

 

Example Inputs

object = {“a”:{“b”:{“c”:”d”}}}

key = a/b/c

 

object = {“x”:{“y”:{“z”:”a”}}}

key = x/y/z

value = a

 

## First things first - Why Node?

> I have worked on Node Js for 8 months, Python and Node Js are 2 languages I have worked on. During that time I written some test cases, so using that knowlegde and with the help on internet written this solution.

# Approach

Defined a function that takes two parameters 

> object : the full JSON object
> keys : an Array of keys in the order

 
 # Assumptions

 - There will be at least **one key** to search 
 - Any invalid key will return **null**
 - The Keys are given in the order as it would appear in the JSON tree

 # Testing

I am going to use Mocha javascript testing framework to do the unit testing 


 # Environment

 - Clone the project
- `git clone https://github.com/navneet109/challenges/Challenge3`

 - Install dependencies using 
 >npm install
 - Test the project
 >npm test  

