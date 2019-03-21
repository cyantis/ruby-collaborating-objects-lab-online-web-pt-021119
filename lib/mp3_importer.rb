class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def files
    files = MP3Importer.new('./spec/fixtures/*.mp3')

  end

  def import

  end

end
