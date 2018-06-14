class JellyBean < Dessert
  attr_accessor :flavor

  def delicious?
    !@flavor.casecmp?('black lacorice')
  end
end