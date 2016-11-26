require_relative('../db/sqlrunner')

class Band

    attr_reader :name, :id

    def initialize( options )
        @name = options['name']
        @id = options['id'].to_i if options['id']
    end

 