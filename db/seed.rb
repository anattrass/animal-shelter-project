require_relative('../models/musician.rb')

musician1 = Musician.new({
    'name' => 'Corey Taylor',
    'instrument' => 'Vox',
    'house_id' => house1.id,
    'age' => 16
    })


musician1.save()
