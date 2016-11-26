require_relative('../db/sqlrunner')

class Band

    attr_reader :name, :id

    def initialize( options )
        @name = options['name']
        @id = options['id'].to_i if options['id']
    end

 def save()
     sql = "INSERT INTO bands (name) 
     VALUES ('#{@name}') RETURNING *;"
     result = SqlRunner.run(sql)
     @id = result.first()['id'].to_i
 end