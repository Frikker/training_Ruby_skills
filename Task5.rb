class Dessert
  attr_accessor :name, :calories

  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def healthy?
    false if @calories > 200
    true
  end

  def delicious?
    true
  end
end