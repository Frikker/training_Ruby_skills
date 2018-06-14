module CheckPalindrome
  def palindrome?
    self == reverse
  end

  def check_class
    if self.class == Array
      join.palindrome?
    elsif self.class == String
      palidrome?
    end
  end
end

class String
  include CheckPalindrome
end

class Array
  include CheckPalindrome
end