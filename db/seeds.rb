# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


carousels = Carousel.create([
    { title: 'Walentynki!', 
      caption: 'Walentynkowa promocja -10% na wszystko. Skorzystaj z okazji i zrób ukochanej niebanalny prezent.', 
      image: File.open(File.join(Rails.root, '/app/assets/images/img0.jpg')),
      visible: true,
      promotion: true},
    { title: 'Znajdź litery', 
      caption: 'Litery znajdują się wszędzie. Przyjrzyj się uważnie otoczeniu i odkryj, że występują one w wodzie, powietrzu i na lądzie.', 
      image: File.open(File.join(Rails.root, '/app/assets/images/img1.jpg')),
      visible: true,
      promotion: false},
    { title: 'Zbuduj wyraz używając zdjęć', 
      caption: 'Nasza kolekacja liter jest podzielona na wiele kategorii. Podobnie jak Ciebie, ogranicza nas tylko wyobraźnia.', 
      image: File.open(File.join(Rails.root, '/app/assets/images/img2.jpg')),
      visible: true,
      promotion: false},
    { title: 'Dobierz ramkę i tło', 
      caption: 'Jesteś na ostatniej prostej, by skomponować swój obraz. Dobierz ramkę i tło, złóż zamówienie i czekaj na paczkę.', 
      image: File.open(File.join(Rails.root, '/app/assets/images/img3.jpg')),
      visible: true,
      promotion: false}
])