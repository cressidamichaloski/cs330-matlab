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
    function set.name(obj, n) %obj refers to the class itself
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
    function set.school(obj, s)
      obj.school = s;
    end

  function o = oldestToDate(obj)
      o = (obj.age-7)+2;
  end

```
To 

