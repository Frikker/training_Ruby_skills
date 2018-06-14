module MoneyConversation
  DOLLAR = 32.26
  EURO = 43.61
  def in(arg)
    case arg
    when :dollars,:dollar
      self / DOLLAR
    when :euros, :euro
      self / EURO
    when :rubles, :ruble
      self
    else
      raise NoSuchCurrency
    end
  end
end
class NoSuchCurrency < StandardError
  def message
    puts "Can't convert to your currency"
  end
end

class Numeric
  include MoneyConvertation
  def dollars
    self * DOLLAR
  end

  def euros
    self * EURO
  end

  def rubles
    self
  end
end