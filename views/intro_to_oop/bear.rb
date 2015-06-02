class Bear
  def initialize(name, age, tagged=false)
    @name = name
    @age = age
    @tagged = tagged
  end

  def name
    @name
  end

  def age
    @age
  end

  def tagged=(boolean)
    @tagged = boolean
  end

  def speak
    "Hi! My name is #{@name}. I'm #{@age} years old."
  end

  private
  def tagged
    @tagged
  end

end
