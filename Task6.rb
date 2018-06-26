require './Task5.rb'

class JellyBean < Dessert
  attr_accessor :flavor

  def initialize(name = '', calories = 0, flavor = '')
    @name = name
    @calories = calories
    @flavor = flavor
  end

  def delicious?
    !@flavor.casecmp?('black lacorice')
  end
end