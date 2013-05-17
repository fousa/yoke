module Yoke
  class Alias
    class << self
      def list
        return {} unless Yoke::Base.has_alias_file?

        aliases = {}
        File.readlines(Yoke::Base.alias_file_path).each do |line|
          if line.start_with? "alias"
            alias_extract = line.scan(/^alias\s(\w+)\=\"cd (.+)\"$/).last
            aliases[alias_extract[0]] = alias_extract[1]
          end
        end
        aliases
      end

      def add(path, name)
        Yoke::Base.create_alias_file
        if list.has_key?(name)
          false
        else
          File.open(Yoke::Base.alias_file_path, 'a') do |file|
            file.puts alias_string(name, path)
          end
          true
        end
      end

      def remove(path, name)
        return false unless Yoke::Base.has_alias_file?

        if list.has_key?(name)
          content = []
          File.readlines(Yoke::Base.alias_file_path).each do |line|
            if line.start_with? "alias"
              alias_extract = line.scan(/^alias\s(\w+)\=\"cd (.+)\"$/).last
              if alias_extract[0] != name
                content << line
              end
            else
              content << line
            end
          end
          File.open(Yoke::Base.alias_file_path, "w") do |file|
            content.each { |line| file.puts line }
          end
        else
          false
        end
      end

      def alias_string(name, path)
        "alias #{name}=\"cd #{path}\""
      end
    end
  end
end