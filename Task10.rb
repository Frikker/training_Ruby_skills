class CartesianProduct
  attr_accessor :result
  def initialize(array1, array2)
    @result = []
    array1.each { |i|
      array2.each { |j|
        @result << [i, j]
      }
    }
  end

  def each
    @result.each { |elm| yield(elm) }
  end
end