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

  # Build a class constructor `Song.create_by_name` that takes in the string name of
  # a song and returns a song instance with that name set as its name property and
  # the song being saved into the `@@all` class variable.
  # 
  # Consider:
  # 
  # ```ruby
  # song = Song.create_by_name("The Middle")
  # #=> #<Song:0x007fd2a2989ff0 @name="The Middle">
  # song
  # #=> #<Song:0x007fd2a2989ff0 @name="The Middle">
  # Song.all.include?(song)
  # #=> true
  # ```

  def self.create_by_name(string_name)
    
  end

  def self.find_by_name
  end

  def self.find_or_create_by_name
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
