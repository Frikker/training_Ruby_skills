module MoneyConversation
  RATE = { euro: 43.61, dollar: 32.26, ruble: 1 }
  @@current_currency
  def euro
    @@current_currency = :euro
    self
  end

  def dollar
    @@current_currency = :dollar
    self
  end

  def ruble
    @@current_currency = :ruble
    self
  end

  def in(currency)
    currency = currency.to_s.delete('s').to_sym
    if RATE.key?(currency)
      if @@current_currency == currency
        self
      else
        res = self * RATE[@@current_currency]
        @@current_currency = currency
        res / RATE[currency]
      end
    end
  end
  alias :euros :euro
  alias :dollars :dollar
  alias :rubles :ruble
end

class NoSuchCurrency < StandardError
  def message
    puts "Can't convert to your currency"
  end
end

class Numeric
  include MoneyConversation
end


puts 10.dollars.in(:euro).in(:ruble)