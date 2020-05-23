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

  def self.find_or_create_by_name(string_name)
    no_dups = self.find_by_name(string_name)
    if no_dups
      no_dups
    else
      self.create_by_name(string_name)
    end
  end

  def self.alphabetical
    sorted = self.all.sort_by {|song| song.name}
    sorted
  end

  # Given `Song.new_from_filename("Taylor Swift - Blank Space.mp3")`, the
  # constructor should return a new `Song` instance with the song name set to Blank
  # Space and the artist_name set to Taylor Swift. The filename input sent to
  # `Song.new_from_filename` in the format of `Taylor Swift - Blank Space.mp3` must
  # be parsed for the relevant components. Separate the artist name from the rest of
  # the data based on the `-` delimiter. Don't forget that when you parse the song
  # name, you have to remove the `'.mp3'` part of the string.
  
  def self.new_from_filename(filename)
    song_array = filename.split(" - ")
    song_array[1] = song_array[1].chomp(".mp3")
    song = self.new
    song_array[0] = song.name
    song_array[1] = song.artist_name
    
  end

  def self.create_from_filename
  end

  def self.destroy_all
    self.all.clear
  end

end
