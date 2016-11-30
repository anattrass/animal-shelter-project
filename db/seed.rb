require_relative('../models/musician.rb')
require_relative('../models/band.rb')

band1 = Band.new({
    'name' => 'Slipknot',
    'logo_url' => 'http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=28801569'
    })

band2 = Band.new({
    'name' => 'Guns N Roses',
    'logo_url' => 'http://images.sk-static.com/images/media/profile_images/artists/509644/huge_avatar'
    })

band3 = Band.new({
    'name' => 'Avenged Sevenfold',
    'logo_url' => 'http://allaboutwindowsphone.com/images/appicons/129817.png'
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
