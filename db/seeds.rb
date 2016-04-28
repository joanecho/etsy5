Shop.delete_all
Listing.delete_all

antique_shop = Shop.new
antique_shop.name = "Antiques"
antique_shop.save

souvenirs = Shop.new
souvenirs.name = "Handmade Souvenirs"
souvenirs.save

item = Listing.new
item.shop_id = antique_shop.id
item.title = "Chess Set"
item.price = 5500
item.image_url = 'https://img1.etsystatic.com/130/0/10660606/il_570xN.1001000379_12s6.jpg'
item.num_favorites = 9
item.save
item = Listing.new
item.shop_id = antique_shop.id
item.title = "Vintage Metronome"
item.price = 4500
item.image_url = 'https://img1.etsystatic.com/101/1/6748972/il_570xN.847497769_b245.jpg'
item.num_favorites = 6
item.save

item = Listing.new
item.shop_id = souvenirs.id
item.title = "Australia Patch"
item.price = 1900
item.image_url = 'https://img1.etsystatic.com/135/1/12441066/il_570xN.989122949_hi7x.jpg'
item.num_favorites = 3
item.save
item = Listing.new
item.shop_id = souvenirs.id
item.title = "Baseball Helmet"
item.price = 2400
item.image_url = 'https://img1.etsystatic.com/071/0/6274838/il_570xN.804775557_co5d.jpg'
item.num_favorites = 13
item.save
