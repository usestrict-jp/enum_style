module EnumStyle

  module Style

    # overwrite the enum method
    def enum( definitions )
      super( definitions )
      definitions.each do |name, _|
        Helper.define_attr_style_method(self, name)
      end
    end

    def self.extended(receiver)
      # receiver.class_eval do
      #   # alias_method_chain :enum, :enum_help
      # end
    end

  end

  module Helper

    def self.define_attr_style_method(klass, attr_name)

      attr_style_method_name = "#{attr_name}_style"

      klass.define_method(attr_style_method_name) do

        styles = EnumStyles[klass.to_s.underscore]

        styles ? styles[attr_name.to_s][self.send(attr_name)] : nil
      end
    end
  end
end
