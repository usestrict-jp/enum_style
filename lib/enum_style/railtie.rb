module EnumStyle
  class Railtie < Rails::Railtie

    def preload

      file_path = ::Rails.root.join('config', 'enum_style.yml')
      result = File.exist?(file_path) ? YAML.load(ERB.new(IO.read(file_path))).result : {}

      Kernel.const_set('EnumStyles', result)
    end

    initializer "enum_style" do
      ActiveSupport.on_load(:active_record) do
        extend EnumStyle::Style
      end
    end

    config.before_configuration { preload }
  end
end
