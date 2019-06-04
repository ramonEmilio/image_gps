module ImageGps
  module Format
    class Base
      def initialize(file_path)
        @file_path = file_path
      end

      def write_file(images:, headers:)
        raise 'Implement in subclass'
      end

      def file
        "#{@file_path}.#{extension}"
      end

      def extension
        raise 'Implement in subclass'
      end
    end
  end
end