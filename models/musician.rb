require_relative('../db/sqlrunner')
require_relative('band')

class Musician 
    attr_reader :name, :instrument, :days_here, :musician_pic_url, :id

    def initialize( options )
        @name = options['name']
        @instrument = options['instrument']
        @days_here = options['days_here'].to_i
        @musician_pic_url = options['musician_pic_url']
        @id = options['id'].to_i
        @band_id = options['band_id'].to_i
    end


    def save()
        sql = "INSERT INTO musicians
        (name, instrument, days_here, musician_pic_url, band_id)
        VALUES
        ('#{@name}', '#{@instrument}', #{@days_here}, '#{@musician_pic_url}', #{@band_id})
        returning * ;"
        result = SqlRunner.run(sql)
        @id = result[0]['id'].to_i
    end

    # def band()
    #     return Band.find_by_id(@band_id)
    # end

    def self.all()
        sql = "SELECT * FROM musicians;"
        musicians = SqlRunner.run(sql)
        result = musicians.map { |musician| Musician.new (musician) }
        return result
    end

    # def self.find_by_id( id )
    #     sql = "SELECT * FROM musicians WHERE id=#{id}"
    #     musician = SqlRunner.run(sql)
    #     result = Musician.new( musician.first )
    #     return result
    # end

    # def self.find_by_house( band_id )
    #     sql = "SELECT * FROM musicians
    #     WHERE band_id = #{band_id};"
    #     musicians = SqlRunner.run(sql)
    #     result = musicians.map { |musician| Musician.new (musician) }
    #     return result
    # end

end
