require_relative('../db/sqlrunner')
require_relative('band')
require('pry-byebug')

class Musician 
    attr_reader :name, :instrument, :days_here, :id, :band_id

    def initialize( options )
        @name = options['name']
        @instrument = options['instrument']
        @days_here = options['days_here'].to_i if options['days_here']
        @id = options['id'].to_i if options['id']
        @band_id = options['band_id'].to_i if options['band_id']
    end

    def save()
            band_id = "Null"
            band_id = "#{@band_id}" if @band_id

            days_here = 0
            days_here = "'#{@days_here}'" if @days_here
        sql = "INSERT INTO musicians
        (name, instrument, days_here, band_id)
        VALUES
        ('#{@name}', '#{@instrument}', #{days_here}, #{band_id})
        returning *;"
        result = SqlRunner.run(sql)
        @id = result[0]['id'].to_i
    end

    def band()
        return Band.find_by_id(@band_id) if @band_id
    end

    def self.update( options )
        sql = "Update musicians SET name='#{ options['name'] }', instrument='#{ options['instrument'] }', days_here=#{ options['days_here'] }, band_id=#{ options['band_id']}
        WHERE id='#{ options['id'] }'"
        SqlRunner.run( sql )
    end


    def self.all()
        sql = "SELECT * FROM musicians;"
        musicians = SqlRunner.run(sql)
        result = musicians.map { |musician| Musician.new (musician) }
        return result
    end

    def self.find_by_id( id )
        sql = "SELECT * FROM musicians WHERE id=#{id};"
        musician = SqlRunner.run(sql)
        result = Musician.new( musician.first )
        return result
    end

    def self.find_by_band( band_id )
        sql = "SELECT * FROM musicians
        WHERE band_id = #{band_id};"
        musicians = SqlRunner.run(sql)
        result = musicians.map { |musician| Musician.new (musician) }
        return result
    end

    def self.delete( id )
      sql = "DELETE FROM musicians WHERE id=#{id};"
      SqlRunner.run( sql )
    end

end
