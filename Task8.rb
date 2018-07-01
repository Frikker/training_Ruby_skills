module AttrAccessorWithHistory
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s
    attr_reader attr_name
    module_eval "
    def @#{attr_name}_history
      @#{attr_name}_history = []
    end"
    module_eval "
      def @#{attr_name}=(value)
        @#{attr_name}_history << value
        @#{attr_name} = value
      end"
  end
end

class Class
  include AttrAccessorWithHistory
end