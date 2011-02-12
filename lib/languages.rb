module ActionView
  module Helpers
    module FormOptionsHelper

      def language_select(object, method, priority_languages = nil, options = {}, html_options ={})
        InstanceTag.new(object,method, self, options.delete(:object)).to_country_select_tag(priority_languages, options, html_options)
      end

      class InstanceTag
        def language_select_tag(priority_languages, options, html_options)
          html_options = html_options.stringify_keys
          add_default_name_and_id(html_options)
          value = value(object)
          content_tag("select",
            add_options(
            language_options_for_select(value, priority_languages),
            options, value), html_options)
        end
      end

      class FormBuilder
        def language_select(method, priority_languages=nil, options={},html_options={})
          @template.language_select(@object_name, method, priority_languages, options.merge(:object => @object), html_options)
        end
      end
    end
  end
end