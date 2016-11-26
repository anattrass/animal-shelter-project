require_relative('../db/sqlrunner')
# require_relative('band')

class Musician 
    attr_reader :name, :instrument, :days_here, :musician_pic_url, :id

    def initialize( options )
        @name = options['name']
        @instrument = options['instument']
        @days_here = options['days_here'].to_i
        @musician_pic_url = options['musician_pic_url']
        @id = options['id'].to_i
        @band_id = options['band_id'].to_i

     