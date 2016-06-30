module Terrafied
  class Builder
    def initialize
      @output = { "provider" => {},
                  "resource" => {}
                }
      use_resource_shortcuts!
    end

    attr_reader :output

    def provider(name, spec)
      @output["provider"][name.to_s] = spec
    end

    def resource(type, name, attributes)
      @output["resource"][type.to_s] ||= {}
      if @output["resource"][type.to_s][name.to_s]
        throw "Tried to create a resource of type #{type} called '#{name}' when one already exists"
      end
      @output["resource"][type.to_s][name.to_s] = attributes
    end

    def id_of(type,name)
      "${#{type}.#{name}.id}"
    end

    def output_of(type, name, *values)
      "${#{type}.#{name}.#{values.join(".")}}"
    end

    def add_resource_alias(type)
      define_singleton_method type.to_sym do |name, attributes={}|
        resource(type, name, attributes)
      end
    end

    def use_resource_shortcuts!
      Terrafied::DEFAULT_TYPES.each{|type| add_resource_alias(type)}
    end

    def aws_security_group(name, spec)
      default_spec = { tags: { Name: name }}
      resource('aws_security_group', name, default_spec.merge(spec))
    end

    def to_json
      JSON.pretty_generate(@output)
    end
  end
end
