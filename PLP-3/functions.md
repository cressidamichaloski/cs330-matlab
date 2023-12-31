# Functions

## Write-up Questions (assigned by Nanette Veilleux of Simmons University)

What is the syntax for declaring a function in your language?         
In MATLAB, a function is declared by writing:     
function [returnValues] = functionName(inputs)        
{function body}     
end    
    
Are there any rules about where the function has to be placed in your code file so that it can run?    
Yes, functions should be defined at the end of a script file, below where they are called.    
    
Does your language support recursive functions?     
Yes, it does.    

Can functions in your language accept multiple parameters?  Can they be of different data types?    
Yes, MATLAB can accept multiple parameters, and yes, they can be of different datatypes.     
     
Can functions in your language return multiple values at the same time?  How is that implemented?  If not, are there ways around that problem?  What are they?     
Yes, it can. By defining the return values in the function declaration, the function will return the last value assigned to each of the return variables.     
    
Is your language pass-by reference or value?  Check your code against outside sources in case there is anything tricky going on (like in Perl).    
MATLAB is pass-by-value.     
(https://www.mathworks.com/help/matlab/matlab_prog/avoid-unnecessary-copies-of-data.html)     
     
Where are the arguments, parameters and local variables stored (value-on-stack, ref-to-heap-on stack) during execution?  
They are stored as a reference to the heap on the stack. However, if the called function modifies any of its arguments, MATLAB will make a copy of the original variable on the heap and modify that, instead. 
     
What are the scoping rules in your language (visibility and lifetime of variables before, during and after code blocks)?     
Scope is determined before runtime, and variables are only accessible within their functions. 
     
Are side-effects possible? Are there guard rails against side-effects?     
One possible side effect is the declaration of a "persistent" type of variable. This creates a global variable that can be modified from within a function. Defining a function or variable with a name that already exists (e.g. fprintf) may mask the built-in function or value depending on the version of MATLAB you use. 
     
Where are local variable values stored? (on the stack? On the heap?)     
Local variable are stored on the stack, with larger values stored in the heap with a reference stored in the stack.      

Are there any other aspects of functions in your language that aren't specifically asked about here, but that are important to know in order to write one?  What are they? (e.g. dynamic vs static scope)     
No.
