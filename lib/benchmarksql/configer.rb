require "forwardable"
require "ostruct"
require 'json'

module Benchmarksql
  class Configer
    extend Forwardable
    
    @@real_conf_obj = OpenStruct.new

    def self.load(config_path)   
      json_obj = JSON.parse( File.read(config_path) )
      @@real_conf_obj.conn = json_obj["conn"] 
      self.new     	 
    end
    
    def_delegators :@@real_conf_obj, :conn

  end
end

