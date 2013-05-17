require "yoke/version"
require "yoke/base"

module Yoke
  class << self
    def run(cmd)
      puts system("#{cmd}")
    end
  end
end
