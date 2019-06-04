module ImageGps
  class Directory
    def initialize(path:)
      @path = path
    end

    def images
      file_paths.map do |file_path|
        Image.new(path: file_path)
      end
    end

    def file_paths
     Dir["#{@path}/**/*.{jpg,jpeg}"]
    end
  end
end