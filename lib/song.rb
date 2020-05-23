class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song= self.new
    song.save
    song
  end

  def self.new_by_name(string_name)
    song = self.new
    song.name = string_name
    # song.save
    song
  end

  def self.create_by_name(string_name)
    song = self.new
    song.name = string_name
    song.save
    song
  end

  def self.find_by_name(string_name)
    self.all.detect {|s| s.name == string_name}
  end

  # In order to prevent duplicate songs being created that actually represent the
  # same song (based on the song name), we're going to build a
  # `Song.find_or_create_by_name` class method. This method will accept a string
  # name for a song and either return a matching song instance with that name or
  # create a new song with the name and return the song instance.

  def self.find_or_create_by_name(string_name)
    no_dups = self.find_by_name
    # all.detect {|s| s.name == string_name}
    if no_dups == nil
      song = self.new
      song.name = string_name
      song.save
      song
    else
      self.create_by_name
    end
  end

  def self.alphabetical
  end

  def self.new_from_filename
  end

  def self.create_from_filename
  end

  def self.destroy_all
    self.all.clear
  end

end
