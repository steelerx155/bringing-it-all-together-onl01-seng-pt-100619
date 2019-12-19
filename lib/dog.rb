class Dog
  
  attr_accessor :name, :breed, :id
  
 def initialize(id: nil, name: , breed:)
    @id = id
    @name = name
    @breed = breed
  end

    def self.create_table 
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS dogs (
      id INTEGER PRIMARY KEY,
      name TEXT,
      breed TEXT
      )
      SQL
     DB[:conn].execute(sql)
    end
  
  def self.drop_table
    sql = "DROP TABLE IF EXISTS DOGs"
    DB[:conn].execute(sql)
  end
    
   def save
    sql = <<-SQL
      INSERT INTO dog (name, BREED) 
      VALUES (?, ?)
    SQL
 
    DB[:conn].execute(sql, self.name, self.breed)
 
  end
     
  
end



    