require_relative('../db/sqlrunner')

class Band

    attr_reader :name, :id, :logo_url

    def initialize( options )
        @name = options['name']
        @id = options['id'].to_i if options['id']
        @logo_url = options['logo_url']
    end

    def save()
       sql = "INSERT INTO bands (name, logo_url) 
       VALUES ('#{@name}', '#{@logo_url}') RETURNING *;"
       result = SqlRunner.run(sql)
       @id = result.first()['id'].to_i
   end

   def self.all()
       sql = "SELECT * FROM bands;"
       bands = SqlRunner.run(sql)
       result = bands.map { |band| Band.new (band) }
       return result
   end

   def self.find_by_id( id )
       sql = "SELECT * FROM bands WHERE id=#{id}"
       band = SqlRunner.run(sql)
       result = Band.new( band.first )
       return result
   end

   def self.delete( id )
     sql = "DELETE FROM bands WHERE id=#{id};"
     SqlRunner.run( sql )
   end

end