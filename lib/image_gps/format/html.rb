require 'image_gps/format/base.rb'

module ImageGps
  module Format
    class Html < ImageGps::Format::Base
      def initialize(file_path)
        @template = File.read("#{__dir__}/template.erb")
        super(file_path)
      end

      def write_file(images:, headers:)
        erb = ERB.new(@template).result(binding)
        
        File.open(file, 'w') do |f|
          f.write(erb)
        end
      end

      def extension
        'html'
      end
    end
  end
end