module CheckPalindrome
  def palindrome?(arg = self)
    check_class(arg)
  end

  def check_class(arg)
    arg = arg.join.downcase if arg.class == Array
    if arg.class == String
      arg = arg.downcase.delete('^a-zA-Z0-9')
      arg.eql?(arg.reverse)
    end
  end
end

class Object
  include CheckPalindrome
end