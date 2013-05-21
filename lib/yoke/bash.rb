module Yoke
  class Bash
    class << self
      def custom_path
        File.join(Dir.home)
      end

      def setup
        unless File.exists?(custom_path)
          File.open(custom_path, 'a') do |file|
            file.puts "source ~/#{Yoke::Base::FILENAME}"
          end
        end
      end
    end
  end
end