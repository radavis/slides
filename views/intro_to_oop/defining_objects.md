## Defining Objects

### We define how to create an object with the `class` keyword

```
# aardvark.rb

class Aardvark
  def initialize(name)
    @name = name
  end
end
```

```
[1] pry(main)> require_relative 'aardvark'
=> true
[2] pry(main)> fred = Aardvark.new("Fred")
=> #<Aardvark:0x007ffd9e069390 @name="Fred">
[3] pry(main)> fred.class
=> Aardvark
[4] pry(main)> Aardvark.superclass
=> Object
```

### The code in `aardvark.rb` is a template for creating Aardvark objects.
