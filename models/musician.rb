require_relative('../db/sqlrunner')
require_relative('band')

class Musician 
    attr_reader :name, :instrument, :days_here, :musician_pic_url, :id

    def initialize( options )
        @name = options['name']
        @instrument = options['instument']
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

end
