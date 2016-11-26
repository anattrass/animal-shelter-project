require_relative('../models/musician.rb')
require_relative('../models/band.rb')
require('pry-byebug')

band1 = Band.new({
    'name' => 'Slipknot'
    })

band1.save

musician1 = Musician.new({
    'name' => 'Corey Taylor',
    'instrument' => 'Vox',
    'days_here' => 37,
    'musician_pic_url' => 'https://s-media-cache-ak0.pinimg.com/564x/f8/36/09/f83609f29b7212e3309b21848289b8b0.jpg',
    'band_id' => band1.id()
    })


musician1.save()

binding.pry
nil
