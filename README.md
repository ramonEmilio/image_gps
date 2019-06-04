# Exif GPS Data extraction

EXIF GPS data extraction.

# Setup

    $ gem install specific_install
    $ gem specific_install git@github.com:vaberay/exif-gps.git

    Make sure you have installed `libexif`: 

# Usage

  Scan files recursively and output file

    $ image_gps extract

  Specify the directory to scan

    $ image_gps  -d ~/Desktop extract

  Output file directory.

    $ image_gps -o ~/Desktop extract

  Output format

    $ image_gps -f html extract

  manual

    $ image_gps help