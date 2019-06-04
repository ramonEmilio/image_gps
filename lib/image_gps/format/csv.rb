require 'csv'
require 'image_gps/format/base.rb'

module ImageGps
  module Format
    class Csv < ImageGps::Format::Base
      def write_file(images:, headers:)
        ::CSV.open(file, 'w', write_headers: true, headers: headers) do |file|
          images.each do |image|
            file << [
              image.name,
              image.latitude,
              image.longitude
            ]
          end
        end
      end

      def extension
        'csv'
      end
    end
  end
end