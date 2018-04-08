# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Photo.destroy_all
Spec.destroy_all
Comment.destroy_all

Product.destroy_all
Category.destroy_all
Brand.destroy_all
Tag.destroy_all
User.destroy_all


Category.create(name: 'Guitarra Electrica')
Category.create(name: 'Guitarra Acustica')
Category.create(name: 'Bajo')
Category.create(name: 'Bateria y Percusion')
Category.create(name: 'Amplificadores')
Category.create(name: 'Efectos y Pedales')
Category.create(name: 'Teclados y Syntetizadores')
Category.create(name: 'Equipos de Dj')
Category.create(name: 'Pro Audio/Home Studio')
Category.create(name: 'Vientos')
Category.create(name: 'Cuerdas Frotadas')
Category.create(name: 'Accesorios')
Category.create(name: 'Partes')
#tags
Tag.create(name: 'Rock')
Tag.create(name: 'Música')
Tag.create(name: 'Punk')
Tag.create(name: 'Instrumentos')
Tag.create(name: 'Creativo')
Tag.create(name: 'Tocata')
Tag.create(name: 'Oferta')
Tag.create(name: 'Fender')
Tag.create(name: 'Folk')
Tag.create(name: 'Acustico')
Tag.create(name: 'Vintage')
Tag.create(name: 'Pop')
Tag.create(name: 'Home-studio')
Tag.create(name: 'DJ')
#-------------------------------------------------------

#Brand-create

#FENDER

Brand.create(name: 'Fender')
Brand.create(name: 'Squire')
Brand.create(name: 'Gretsch')
Brand.create(name: 'Jackson')
Brand.create(name: 'EVH')

#GIBSON
Brand.create(name: 'Gibson')
Brand.create(name: 'Epiphone')
Brand.create(name: 'Maestro')
Brand.create(name: 'Gibson')

Brand.create(name: 'Vox')
Brand.create(name: 'Orange')

Brand.create(name: 'Cort')

Brand.create(name: 'Electro Harmonix')
Brand.create(name: 'MXR')
Brand.create(name: 'Earthquake Devices')
Brand.create(name: 'Rowin')
Brand.create(name: 'Mooer')
Brand.create(name: 'Dunlop')

Brand.create(name: 'Elixir')
Brand.create(name: 'Dadario')

tags = Tag.all
cats = Category.all
brand = Brand.all
User.create(email: 'example@example.com', password:'123123')

40.times do
  User.create(email: Faker::Internet.email, password: '123123', phone: '9999999')
end

users = User.all



100.times do
  prod = Product.create(name: Faker::Commerce.product_name, description: Faker::Lovecraft.sentence, price: Faker::Commerce.price, category_id: cats.sample.id, brand_id: brand.sample.id, user_id: users.sample.id)
  rand(1..3).times do
    Spec.create(product_id: prod.id, tag_id: tags.sample.id)
  end
end
prods = Product.all

300.times do
  Comment.create(content: Faker::RickAndMorty.quote, product_id: prods.sample.id, user_id: users.sample.id)
end
