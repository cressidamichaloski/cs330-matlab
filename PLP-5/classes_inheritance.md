# Classes and Inheritance

Matlab supports object-oriented programming through the use of classes, methods, objects, and inheritance. 

To create a class, use the classdef syntax. 

```
classdef scope

```

To add properties (attributes in other languages) define the properties below classdef.

```
classdef Person
  properties (Constant) %restricts modification
      id
  end
  properties (Dependent) %set only when asked for by client
      location
  end
  properties %no modifications, can be seen and edited by client
      name
      age
      sex
end

```

To implement methods, define them within a methods code block
```
classdef Person
%skipping properties
  methods
    function newname(obj, n) %obj refers to the class itself
      obj.name = n;
    end
  
    function get.location(obj, l)
      obj.location = l;
    end
    
  end
```

MATLAB also supports inheritance. In order to create a subclass of the Scope class, we use classdef ClassName < SuperClass.

```
classdef Student < Person
  %you have all of the methods and properties, and can add more if you'd like.

  properties
    school

  methods
    function newschool(obj, s)
      obj.school = s;
    end

  function o = oldestToDate(obj)
      o = (obj.age-7)+2;
  end

```
To instantiate a class as an object, we call it and set a name to it.

```
abby = Person(1, "Abby", 20, "F");

abby.newname("Abigail");
disp(abby.name);

lyla = Student(2, "Lyla", 21, "F", "Simmons");
o = lyla.oldestToDate();
disp(o);

```

One more important thing to know about classes in MATLAB is the "handle" versus "value" classes. Handle classes use something similar to pass-by-reference.     

In order to define a handle class, it should inherit from the built-in handle class.

```
classdef myHandle < handle
```
When you create multiple objects of the same handle class, they will refer to the same object.

```
a = myHandle;
b = myHandle;
```
If you change a property in a, that same change will be reflected in b, since they are the same.    
MATLAB functions are value classes by default, so only use handle classes in specific cases where you need only one object in multiple places. 
