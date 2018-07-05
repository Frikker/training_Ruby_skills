module AttrAccessorWithHistory
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s
    attr_reader attr_name
    define_module("#{attr_name}_history"){ instance_variable_get("#{attr_name}_history ")= []}
    define_module("#{attr_name}"){|value|
      var = instance_variable_get("#{attr_name}_history")
      var ||= []
      var << value
      
      instance_variable_set("@#{attr_name}_history", var)
      instance_variable_set("@#{attr_name}", value)
    }
  end
end

class Class
  include AttrAccessorWithHistory
end
