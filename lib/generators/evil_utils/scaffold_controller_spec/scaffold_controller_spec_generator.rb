require 'rails/generators/resource_helpers'

module EvilUtils
  class ScaffoldControllerSpecGenerator < ::Rails::Generators::NamedBase
    include ::Rails::Generators::ResourceHelpers
    source_root File.expand_path('../templates', __FILE__)
    class_option :orm, :desc => "ORM used to generate the controller"

    def create_controller_spec
      template 'controller_spec.rb', File.join('spec/controllers', controller_class_path, "#{controller_file_name}_controller_spec.rb")
    end

    private

    def table_name_params
      "#{table_name}_params"
    end

    def file_name_params
      "#{file_name}_params"
    end

    def ns_file_name
      ns_parts.empty? ? file_name : "#{ns_parts[0].underscore}_#{ns_parts[1].singularize.underscore}"
    end

    def ns_parts
      @ns_parts ||= begin
                      matches = ARGV[0].to_s.match(/\A(\w+)(?:\/|::)(\w+)/)
                      matches ? [matches[1], matches[2]] : []
                    end
    end
  end
end
