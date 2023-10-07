# Datatypes in MATLAB
## **(TO BE DELETED OR REVISED)**

Assignment given by Nanette Veilleux in CS330 at Simmons University.
     
Understanding how different types of data are represented in your programming language is a key step in being able to use it for bigger projects.  Research the naming conventions in your language for variables (i.e., are they case sensitive? do they have to start with lower case letters? Can they start with numbers? Symbols? do programmers use underscores, as in "last_name", or do they use camel case (lastName))?  Write a piece of code that creates variable of each of these common data types (where possible) and follows the naming conventions:

int     
string  
floating-point number  
boolean  
array/list  
dictionary (sometimes called a hash or a map, depending on your language)  
 

Note that not all languages will have all of these built-in types, and some might have other primitive types (for example, most C-family languages have pointers). If your language has other primitive types or doesn’t include some of the above types, modify your code as necessary.

 

In your example code, illustrate the important data type and operations features in your language. Write code that experiments with different operations applied on variables of the same data type and operations with variables of two different types: e.g. can you add ints and floats? Is the resulting variable an int (narrowing conversion) or a float (widening conversion)?  What about division? Can you put different data types in the same array or list?  Can one data type be converted to another either implicitly or explicitly (int to float, string to int, etc)? 

 

Discussion questions:
Does your language have keywords or reserved words? How many?    
     Yes, 62 from C and C++, and 80 not specified by those two languages.    
What are the naming requirements for variables in your language?     
     Starts with a letter, followed by letters, digits or underscores.    
What about naming conventions?  Are those enforced by the compiler/interpreter, or just standards in the community?    
     The standard in the MATLAB community is to name variables starting with a lowercase letter and use capital letters to delimit words, as the _ (denotes subscript) can cause issues if imported into LaTeX. Since MATLAB is primarily used for research purposes, this is a widespread issue.     
Is your language statically or dynamically typed?    
     Dynamically, you don't have to declare type when declaring a variable.    
Strongly typed or weakly typed?    
     Weakly typed, as data type conversions can happen during operations (between int32 and double, for example).    
Are some variables mutable while others are immutable?     
     MATLAB values are mutable by default.    
What are the operators available for each data type?
     Arthmetic and modulo operators are available for numeric and matrix data types. Common matrix operations such as matrix multiplication, left and right division, power, and complex conjugate are also available.     
Are mixed type operations allowed? If so, how are they accommodated?
     Mixed type operations are allowed between numeric datatypes. MATLAB accommodates this by assigning all of the varibales in an operation the same variable type as the leftmost term present. For example int+float=int, as the float term will be rounded to the nearest int.     
At what point are identifier names and operator symbols bound in your language? For example if you declare a (variable, class name, function name), when is it bound to the type, address? When are operators (+,*, etc.) bound to their operations?
Explicitly typed or implicitly typed? 


Describe the limitations (or lack thereof) of your programming language as they relate to the coding example portion of the assignment (adding ints and floats, storing different types in lists, converting between data types).  Are there other restrictions or pitfalls that the documentation mentions that you need to be aware of?
Are there built-in complex data types that are commonly used in your language? (hint: they’d probably appear fairly early in the documentation if so)


  
At what point are identifier names and operator symbols bound in your language?  
  For example if you declare a (variable, class name, function name), when is it bound to the type, address? When are operators (+,*, etc.) bound to their operations?  
Explicitly typed or implicitly typed? 
 
