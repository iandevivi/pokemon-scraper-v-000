class Pokemon

  attr_accessor :name, :type, :db, :id, :hp

  @@all = []

  def initialize(id, name, type, db)
    @id = id
    @name = name
    @type = type
    @db = db
    @@all << self
  end

  def self.all
    @@all
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(id, db)
    db.execute("SELECT * FROM pokemon WHERE id = ?", id)
  end

  # def execute_create_hp_column()
  # end

end
