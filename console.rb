require('pry-byebug')
require_relative('./models/bounty.rb')

Bounty.delete_all()

bounty1 = Bounty.new({
    'name' => 'Ross',
    'species' => 'human',
    'bounty_value' => '100',
    'fav_weapon' => 'Gun'
  })

bounty2 = Bounty.new({
    'name' => 'Craig',
    'species' => 'wolf',
    'bounty_value' => '200',
    'fav_weapon' => 'Lasso'
  })

bounty1.add()
bounty2.add()

# bounty1.delete()

bounty2.name = "Lost Cowboy"

bounty2.update()

hunters = Bounty.all()

hunter = Bounty.find(11)

binding.pry
nil
