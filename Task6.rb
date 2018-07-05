require './Task5.rb'

class JellyBean < Dessert
  attr_accessor :flavor

  def initialize(name, calories, flavor)
    super(name, calories)
    @flavor = flavor
  end

  def delicious?
    !@flavor.casecmp('black lacorice')
  end
end
