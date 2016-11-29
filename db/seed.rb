require_relative('../models/musician.rb')
require_relative('../models/band.rb')

band1 = Band.new({
    'name' => 'Slipknot'
    })

band2 = Band.new({
    'name' => 'Guns N Roses'
    })

band3 = Band.new({
    'name' => 'Avenged Sevenfold'
    })

band1.save()
band2.save()
band3.save()

musician1 = Musician.new({
    'name' => 'Corey Taylor',
    'instrument' => 'Vox',
    'days_here' => 35
    })

musician2 = Musician.new({
    'name' => 'M Shadows',
    'instrument' => 'Vox',
    'days_here' => 46
    })

musician3 = Musician.new({
    'name' => 'Slash',
    'instrument' => 'Guitar',
    'days_here' => 31
    })


musician1.save()
musician2.save()
musician3.save()

musicians = Musician.all()
bands = Band.all()
