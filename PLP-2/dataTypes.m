%Common Data Types and Issues in MATLAB

firstVar = 1;
c = class(firstVar);
fprintf(c);
fprintf('\n');
%x is a double, which is the default numeric data type. There are a variety
%of numeric datatypes, mostly for efficient memory storage.
%since matlab is matrix based, doubles are actually double-precision
%matrices. X is a 1x1 matrix.
disp(size(firstVar));


secVar = "string";
secVar = class(secVar);
fprintf(secVar);
fprintf('\n');

%y is a string

secVar = 'a';
cSecVar = class(secVar);
fprintf(cSecVar);
fprintf('\n');
%y is now a char, delimited by single quotes. 
%y as a variable is also mutable.


%fprintf(x+y); will throw an error because these data types are
%incompatible

thirdVar = "30";
cThirdVar = class(thirdVar);
fprintf(cThirdVar);
fprintf('\n');
%int32(z);  you cannot convert from string to int32
%fprintf(class(z));

firstVar = int32(firstVar);
fprintf(class(firstVar));
fprintf('\n');

intPlusDouble = firstVar + 3.5;
disp("int plus double is");
disp(intplusdouble); %narrowing conversion since int is the 
%leftmost data type

firstVar = logical(firstVar);
fprintf(class(firstVar));
%logical is the built in Boolean class

%fprintf(x+5); will throw an error. 

secVar = 4.6;
secVar = int32(secVar); %will round to closest whole number according to IEEE standards
disp(secVar); %you can also use disp as a print function for variables.

firstMat = [1 2 3];
disp(firstMat);
fprintf(class(firstMat));
disp(size(firstMat));
disp(whos("firstMat")); %can use whos to get info about a variable

secMat = [1; 2];
whos("secMat");
% secMat = [1; 2 3]; will throw an error because the dimensions of an array
% must be consistent.

keys = [3 2 1]; %dim of key/val must be compatible.
values = [1 2 3];
dict = dictionary(keys, values);
whos("dict");