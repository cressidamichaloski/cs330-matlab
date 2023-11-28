# Selection, Loops, and Repetition

In MATLAB, selection, loops, and repetition are all built-in.       

## Booleans
For selection, Boolean values are used. Boolean values (true/false binary) are denoted by:      
True:     
`true`

False:
`false`

## Selection
Matlab uses if/elseif/else statements. These statements check whether an expression evaluates to true or false.      
For example:     

```
%Checking values of numbers:
    x = 5;
    y = 10;

    if x > y
      fprintf("X is greater than Y");
    elseif x == y
      fprintf("X is equal to Y");
    else % x < y
      fprintf("X is less than Y");
```
