module EnumStyle
  module Generators
    class InstallGenerator < ::Rails::Generators::Base

      desc "Generates a enum styles yml file."

      def self.source_root
        @_config_source_root ||= File.expand_path("../templates", __FILE__)
      end

      def generate_style_yml

        template 'enum_style.yml', 'config/enum_style.yml'
      end
    end
  end
end
