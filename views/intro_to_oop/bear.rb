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
