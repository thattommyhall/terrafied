@output = { "provider" => {},
            "resource" => {}
          }

class << self
  def provider(name, spec={})
    @output["provider"][name.to_s] = spec
  end

  def resource(type, name, spec={})
    @output["resource"][type.to_s] ||= {}
    if @output["resource"][type.to_s][name.to_s]
      throw "Tried to create a resource of type #{type} called '#{name}' when one already exists"
    end
    @output["resource"][type.to_s][name.to_s] = spec
  end

  def id_of(type,name)
    "${#{type}.#{name}.id}"
  end

  def output_of(type, name, *values)
    "${#{type}.#{name}.#{values.join(".")}}"
  end

  def add_resource_alias(type)
    define_singleton_method type.to_sym do |name, spec={}|
      resource(type, name, spec)
    end
  end

  def use_resource_shortcuts!
    require_relative 'resource_shortcuts'
  end
end

at_exit do
  require 'json'
  puts JSON.pretty_generate(@output)
end
