class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  # Build a class constructor `Song.create` that initializes a song and saves it to
  # the `@@all` class variable either literally or through the class method
  # `Song.all`. This method should return the song instance that was initialized and
  # saved.

  def self.create
    @@all << self.new
  end

end
