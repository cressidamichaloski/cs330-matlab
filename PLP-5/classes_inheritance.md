# Classes and Inheritance

Matlab supports object-oriented programming through the use of classes, methods, objects, and inheritance. 

To create a class, use the classdef syntax. 

```
classdef scope

```

To add properties (attributes in other languages) define the properties below classdef.

```
classdef Scope
  properties (Constant) %restricts modification
      ScopeID
  end
  properties (Dependent) %set only when asked for by client
      CurrentUser
  end
  properties %no modifications, can be seen and edited by client
      SamplingRate
      FrequencyHz
      Data %data taken from measurement
      Name %name of experiment trial
end

```

To implement methods, define them within a methods code block
```
classdef Scope
%skipping properties
methods
  function obj = scope(ScopeID, SamplingRate, FrequencyHz, Data, Name)
  %insert function code here
  end

  function plot = plot(obj)
  %insert function code here
  end

  function fftrans = fastFourier(Data)
  %insert function code here
  end
end
  
end
```

MATLAB also supports inheritance. In order to create a subclass of the Scope class, we use classdef ClassName < SuperClass.

```
classdef CompressedScope < Scope
```
will finish soon

