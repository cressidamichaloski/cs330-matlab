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
        % x > y = true
        fprintf("X is greater than Y");
    elseif x == y
        fprintf("X is equal to Y");
    else
        % x < y = true
        fprintf("X is less than Y");
    end
```
There are no other built-in selection statements.
If/elseif/else statements must terminate with an "end" statement     

In order to use short-circuiting logic and multiple conditions, MATLAB supports && || for 'and' and 'or' specifically.     
```
    x = 1;
    y = 5;
    z = 1;

    if x > y && y > z
        fprintf("X is greater than Y is greater than Z");
    elseif x < y || y < z
        fprintf("X is less than Y or Y is less than Z");
    else
        fprintf("No statement generated")
    end
```

In the selection statement "if x > y && y > z", the computer will not actually check if y > z because it has evaluated x > y to be false, making the entire statement false by default.     

