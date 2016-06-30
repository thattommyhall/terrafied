require "terrafied/version"
require "terrafied/default_types"
require "terrafied/builder"

require 'json'

module Terrafied
  def self.build(&block)
    builder = Builder.new
    builder.instance_eval(&block)
    builder.output
  end
end
