require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def files
    files = Dir.glob("#{@path}/*.mp3")
    files.each {|f| f.split("mp3s/")[1]}
    binding.pry
  end

  def import

  end

end
