require_relative('../db/sqlrunner')
# require_relative('band')

class Musician 
    attr_reader :name, :instrument, :days_here, :musician_pic_url, :id

    def initialize( options )
        @name = options

