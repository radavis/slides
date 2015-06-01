## Getters and Setters and Instance Variables

```
# bear.rb

class Bear
  def initialize(name, age)
    @name = name
    @age = age
    @tagged = false
  end

  def name
    @name
  end

  def age
    @age
  end

  def tagged
    @tagged
  end

  def tagged=(boolean)
    @tagged = boolean
  end
end
```

```
[1] pry(main)> require_relative 'bear'
=> true
[2] pry(main)> mr_ruxpin = Bear.new("Mr. Ruxpin", 30)
=> #<Bear:0x007fab4991fe50 @age=30, @name="Mr. Ruxpin", @tagged=false>
[3] pry(main)> mr_ruxpin.name
=> "Mr. Ruxpin"
[4] pry(main)> mr_ruxpin.age
=> 30
[5] pry(main)> mr_ruxpin.tagged = true
=> true
[6] pry(main)> mr_ruxpin.tagged
=> true
```
