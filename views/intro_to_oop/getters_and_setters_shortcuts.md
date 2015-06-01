## Shortcuts for Getters and Setters

```
# bear.rb

class Bear
  attr_reader :name, :age, :tagged
  attr_writer :tagged

  # attr_accessor :tagged

  def initialize(name, age)
    @name = name
    @age = age
    @tagged = false
  end
end
```
