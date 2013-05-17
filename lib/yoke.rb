require "yoke/version"

module Yoke
  class << self
    def run(cmd)
      puts system("#{cmd}")
    end
  end
end
