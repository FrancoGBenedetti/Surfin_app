# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Category-create 
#Producto.destroy_all
#Category.destroy_all
#Brand.destroy_all

=begin
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

#Category-create end

#-------------------------------------------------------

#Brand-create 

#FENDER
Brand.destroy_all

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

=end




#Brand-create end



#Products Create



Product.create(name: 'Fender Stratocaster 1983', description: 'Guitarra Fender del 83, Excelente Estado!', price: '1.200.000', category_id: '1', brand_id: '1',user_id: '1' )
Product.create(name: 'Epiphone Wildkat 2004', description: 'Guitarra Epiphone wildkat NUeva! ', price: '458.000', category_id: '1', brand_id: '7',user_id: '1' )
Product.create(name: 'Fender Stratocaster 1983', description: 'Guitarra Fender del 83, Excelente Estado!', price: '1.200.000', category_id: '1', brand_id: '1',user_id: '1' )
Product.create(name: 'Epiphone Wildkat 2004', description: 'Guitarra Epiphone wildkat NUeva! ', price: '458.000', category_id: '1', brand_id: '7',user_id: '1' )
Product.create(name: 'Fender Stratocaster 1983', description: 'Guitarra Fender del 83, Excelente Estado!', price: '1.200.000', category_id: '1', brand_id: '1',user_id: '1' )
Product.create(name: 'Epiphone Wildkat 2004', description: 'Guitarra Epiphone wildkat NUeva! ', price: '458.000', category_id: '1', brand_id: '7',user_id: '1' )
Product.create(name: 'Fender Stratocaster 1983', description: 'Guitarra Fender del 83, Excelente Estado!', price: '1.200.000', category_id: '1', brand_id: '1',user_id: '1' )
Product.create(name: 'Epiphone Wildkat 2004', description: 'Guitarra Epiphone wildkat NUeva! ', price: '458.000', category_id: '1', brand_id: '7',user_id: '1' )
Product.create(name: 'Fender Stratocaster 1983', description: 'Guitarra Fender del 83, Excelente Estado!', price: '1.200.000', category_id: '1', brand_id: '1',user_id: '1' )
Product.create(name: 'Epiphone Wildkat 2004', description: 'Guitarra Epiphone wildkat NUeva! ', price: '458.000', category_id: '1', brand_id: '7',user_id: '1' )


#Products Create End