require 'exif'

module ImageGps
  class Image
    def initialize(path:)
      @path = path
      @gps_data = exif_data[:gps]
    end

    def latitude
      float_value(@gps_data[:gps_latitude])
    end

    def longitude
      float_value(@gps_data[:gps_longitude])
    end

    def name
      File.basename(@path)
    end

    def exif_data
      Exif::Data.new(File.open(@path))
    rescue => exception
      {
        gps: {} 
      }
    end

    def float_value(coordinates)
      return if coordinates.nil?

      d, m, s = coordinates.map(&:to_r)
      value = d + m / 60 + s / 3600
      value.to_f
    end
  end
end