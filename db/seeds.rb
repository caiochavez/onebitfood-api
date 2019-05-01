Product.destroy_all
ProductCategory.destroy_all
Restaurant.destroy_all
Category.destroy_all

puts 'Criando Categorias'

path_image = 'public/images/categories/mexican.jpg'
c = Category.create(id: 1, title: 'mexicana')
c.image.attach(io: File.open(path_image), filename: 'mexican.jpg')

path_image = 'public/images/categories/italian.jpeg'
c = Category.create(id: 2, title: 'italiana')
c.image.attach(io: File.open(path_image), filename: 'italian.jpeg')

path_image = 'public/images/categories/japonese.jpeg'
c = Category.create(id: 3, title: 'japonesa')
c.image.attach(io: File.open(path_image), filename: 'japonese.jpeg')

path_image = 'public/images/categories/vegan.jpeg'
c = Category.create(id: 4, title: 'vegana')
c.image.attach(io: File.open(path_image), filename: 'vegan.jpeg')

path_image = 'public/images/categories/peruvian.jpg'
c = Category.create(id: 5, title: 'peruana')
c.image.attach(io: File.open(path_image), filename: 'peruvian.jpg')

puts 'Cadastrando Restaurantes'

# Mexican Restaurants

path_image = 'public/images/restaurants/1.jpeg'
r = Restaurant.create!(
  name: 'Los Sombreros',
  description: 'Nossa missão tem sido ajudar as pessoas a alcançar seus objetivos de saúde e bem estar',
  status: 'open',
  delivery_tax: 5.50,
  state: 'SP',
  city: 'São Paulo',
  street: 'Melo Barreto',
  number: '1393',
  neighborhood: 'Brás',
  category_id: 1
)
r.image.attach(io: File.open(path_image), filename: '1.jpg')
pc = ProductCategory.create!(title: 'Pratos Mexicanos', restaurant: r)
prod = Product.create!(name: 'Nacho Guacamole', price: 19, description: 'Tortilhas com Guacamole', product_category: pc)
prod.image.attach(io: File.open('public/images/products/nachosg.jpg'), filename: 'nachosg.jpg')
prod = Product.create!(name: 'Nacho', price: 19, description: 'Tortilhas com milho', product_category: pc)
prod.image.attach(io: File.open('public/images/products/nachosg2.jpeg'), filename: 'nachosg2.jpeg')

path_image = 'public/images/restaurants/2.jpeg'
r = Restaurant.create!(
  name: 'Olá Que Tal',
  description: 'Para alcançar e manter essa distinção em comida e vinho, serviço, ambiente ...',
  status: 'open',
  delivery_tax: 5.50,
  state: 'SP',
  city: 'São Paulo',
  street: 'Viela Eugênio Monteiro Junior',
  number: '659',
  neighborhood: 'Paraíse',
  category_id: 1
)
r.image.attach(io: File.open(path_image), filename: '2.jpg')
pc = ProductCategory.create!(title: 'Pratos Mexicanos', restaurant: r)
prod = Product.create!(name: 'Burrito', price: 19, description: 'Tortilhas com Guacamole', product_category: pc)
prod.image.attach(io: File.open('public/images/products/bt.jpg'), filename: 'bt.jpg')
prod = Product.create!(name: 'Quesadilha', price: 25, description: 'Tortilhas de queijo', product_category: pc)
prod.image.attach(io: File.open('public/images/products/quesa.jpeg'), filename: 'quesa.jpeg')

# Italian Restaurants

path_image = 'public/images/restaurants/3.jpeg'
r = Restaurant.create!(
  name: 'Bravo',
  description: 'Estamos empenhados em usar os melhores ingredientes em nossas receitas.',
  status: 'open',
  delivery_tax: 3.50,
  state: 'SP',
  city: 'São Paulo',
  street: 'Rua Coperema',
  number: '250',
  neighborhood: 'Jardim Jaú (Zona Leste)',
  category_id: 2
)
r.image.attach(io: File.open(path_image), filename: '3.jpg')
pc = ProductCategory.create!(title: 'Porções', restaurant: r)
prod = Product.create!(name: 'Berinjela à parmegiana', price: 78, description: 'Com arroz e fritas', product_category: pc)
prod.image.attach(io: File.open('public/images/products/berinjela.jpg'), filename: 'berinjela.jpg')
prod = Product.create!(name: 'Fritas', price: 35, description: 'Batata frita com bacon', product_category: pc)
prod.image.attach(io: File.open('public/images/products/fritas.jpg'), filename: 'fritas.jpg')

path_image = 'public/images/restaurants/4.jpeg'
r = Restaurant.create!(
  name: 'La Pergoletti',
  description: 'Nossa missão é estabelecer relações comerciais benéficas com diversos fornecedores',
  status: 'open',
  delivery_tax: 6.70,
  state: 'SP',
  city: 'São Paulo',
  street: 'Rua Joaquim Pinto',
  number: '929',
  neighborhood: 'Vila Gomes Cardim',
  category_id: 2
)
r.image.attach(io: File.open(path_image), filename: '4.jpg')
pc = ProductCategory.create!(title: 'Fogazzas (Individuais)', restaurant: r)
prod = Product.create!(name: 'Fogazza Bacon', price: 12, description: 'Bacon, parmesão e mussarela', product_category: pc)
prod.image.attach(io: File.open('public/images/products/fogazza.jpg'), filename: 'fogazza.jpg')
prod = Product.create!(name: 'Fogazza A moda da Casa', price: 12, description: 'Calabresa, bacon e parmesão', product_category: pc)
prod.image.attach(io: File.open('public/images/products/fogazza.jpg'), filename: 'fogazza.jpg')

# Japonese Restaurants

path_image = 'public/images/restaurants/5.jpeg'
r = Restaurant.create!(
  name: 'Sushi Eterno',
  description: 'Existimos para garantir que cada hóspede receba um serviço rápido, profissional e amigável.',
  status: 'open',
  delivery_tax: 7.50,
  state: 'SP',
  city: 'São Paulo',
  street: 'Avenida Manoel Domingos Pinto',
  number: '507',
  neighborhood: 'Parque Anhanguera',
  category_id: 3
)
r.image.attach(io: File.open(path_image), filename: '5.jpg')
pc = ProductCategory.create!(title: 'Entrada', restaurant: r)
prod = Product.create!(name: 'Temaki', price: 19.99, description: 'Enrolado de arroz com alga', product_category: pc)
prod.image.attach(io: File.open('public/images/products/temaki.jpeg'), filename: 'temaki.jpeg')
prod = Product.create!(name: 'Sashimi', price: 30.90, description: 'Peixe cru fatiado, salmão e atum', product_category: pc)
prod.image.attach(io: File.open('public/images/products/sashimi.jpg'), filename: 'sashimi.jpg')

#Vegan Restaurants

path_image = 'public/images/restaurants/7.jpeg'
r = Restaurant.create!(
  name: 'Club Life',
  description: 'Nossa especialidade, pratos vegetais de alta qualidade, com opções de alimentos integrais',
  status: 'open',
  delivery_tax: 5.70,
  state: 'SP',
  city: 'São Paulo',
  street: 'Alameda dos Uapês',
  number: '933',
  neighborhood: 'Planalto Paulista',
  category_id: 4
)
r.image.attach(io: File.open(path_image), filename: '7.jpg')
pc = ProductCategory.create!(title: 'Saladas, molhos e wraps', restaurant: r)
prod = Product.create!(name: 'Coleslaw', price: 8.99, description: 'Repolho roxo, couve e cebola', product_category: pc)
prod.image.attach(io: File.open('public/images/products/coleslaw.jpg'), filename: 'coleslaw.jpg')
prod = Product.create!(name: 'Side salad', price: 9.90, description: 'Mix de folhas com cenoura ralada', product_category: pc)
prod.image.attach(io: File.open('public/images/products/side-salad.jpeg'), filename: 'side-salad.jpeg')




