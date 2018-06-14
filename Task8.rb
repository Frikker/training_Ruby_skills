class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s
    attr_reader attr_name
    class_eval %{
      def #{attr_name}_history
        @#{attr_name}_history ||= [nil]
      end

      def #{attr_name}=(value)
        #{attr_name}_history << value
        @#{attr_name} = value
      end
    }
  end
end