require_relative('../models/musician.rb')
require_relative('../models/band.rb')

band1 = Band.new({
    'name' => 'Slipknot'
    'logo_url' => 'http://logosvector.net/wp-content/uploads/2012/10/slipknot-vector-logo.png'
    })

band2 = Band.new({
    'name' => 'Guns N Roses'
    'logo_url' => 'http://cdn.gunsnroses.com/site/chamber-logo.png'
    })

band3 = Band.new({
    'name' => 'Avenged Sevenfold'
    'logo_url' => 'http://www.clker.com/cliparts/0/e/8/9/13522021041395002114avenged-sevenfold-logo-hi.png'
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
