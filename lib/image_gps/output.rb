require 'image_gps/format/csv.rb'
require 'image_gps/format/html.rb'

module ImageGps
  class Output
    FORMAT = [
      'csv',
      'html'
    ]

    HEADERS = [
      'Name',
      'Latitude',
      'Longitude'
    ]

    FILE_NAME = 'exif_gps'

    def initialize(format_name:, directory:)
      @directory = directory
      @format = format(format_name)
    end

    def save(images)
      @format.write_file(images: images, headers: HEADERS)
    end

    def format(name)
      raise 'Format not supported' unless FORMAT.include?(name)
      format_class = "ImageGps::Format::#{name.capitalize}"
      klass = Object.const_get(format_class)
      klass.new(file_path)
    end

    def file_path
      "#{@directory}#{FILE_NAME}"
    end
  end
end