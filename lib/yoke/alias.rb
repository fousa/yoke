module Yoke
  class Alias
    class << self
      def list
        return {} unless Yoke::Base.has_alias_file?

        aliases = {}
        File.readlines(Yoke::Base.alias_file_path).each do |line|
          if line.start_with? "alias"
            alias_extract = line.scan(/^alias\s(\w+)\=(.+)/).last
            aliases[alias_extract[0]] = alias_extract[1]
          end
        end
        aliases
      end
    end
  end
end