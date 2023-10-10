%call function
a = 3.0;
b = 12.0;
prod = multTwoNumEx(a, b); %note no semicolon in definition nor call


factoriala = factorialExample(a);
fprintf("The factorial of a is "+factoriala+"\n");

str = "Meow Woof";
newStr = splitAStringEx(str);
%this function will return an array, so we have to assign 
%its output to two variables
s1 = newStr(1);
s2 = newStr(2);
fprintf("string one is "+s1+"\n");
fprintf("string two is "+s2+"\n");

%i don't know how to show pass-by-reference without threading.

%functions must be defined at the bottom of a file
function product = multTwoNumEx(a, b) %define function multiply two numbers
  product = a*b;
  fprintf("The product is " + product +"\n");
end

%https://www.mathworks.com/matlabcentral/answers/
%216376-how-do-i-define-the-recursive-function
function f = factorialExample(n) 
   if n <= 0
     f = 1;
   else
     f = n * factorialExample(n-1);
   end
end

%this function will take in a string and split it at the whitespaces
%for this purpose we'll only use two, but you can also return an array of 
%strings as one value to keep it consistent
function s = splitAStringEx(str)
    s = split(str);
end    