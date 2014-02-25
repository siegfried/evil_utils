require 'rails/generators/resource_helpers'

module EvilUtils
  class ScaffoldControllerGenerator < ::Rails::Generators::NamedBase
    include ::Rails::Generators::ResourceHelpers

    source_root File.expand_path("../templates", __FILE__)
    check_class_collision suffix: "Controller"
    class_option :orm, banner: "NAME", type: :string, required: true, desc: "ORM to generate the controller for"
    argument :attributes, type: :array, default: [], banner: "field:type field:type"
    hook_for :scaffold_controller_spec

    def create_controller_files
      template "controller.rb", File.join('app/controllers', controller_class_path, "#{controller_file_name}_controller.rb")
    end
  end
end
