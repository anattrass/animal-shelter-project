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
    'days_here' => 37,
    'musician_pic_url' => 'https://s-media-cache-ak0.pinimg.com/564x/f8/36/09/f83609f29b7212e3309b21848289b8b0.jpg',
    'band_id' => band1.id()
    })

musician2 = Musician.new({
    'name' => 'M Shadows',
    'instrument' => 'Vox',
    'days_here' => 46,
    'musician_pic_url' => 'http://orig02.deviantart.net/a6d9/f/2010/038/f/0/m_shadows_sonisphere_by_urban01_c.jpg',
    'band_id' => band2.id()
    })

musician3 = Musician.new({
    'name' => 'Slash',
    'instrument' => 'Guitar',
    'days_here' => 31,
    'musician_pic_url' => 'http://images5.fanpop.com/image/photos/30900000/slash-slash-30982572-377-500.jpg',
    'band_id' => band3.id()
    })


musician1.save()
musician2.save()
musician3.save()

musicians = Musician.all()
bands = Band.all()
