require './sweets_on_plate.rb'
require './cookie.rb'
require './candy.rb'
require './waffle.rb'

class Main
  def self.main(args)
    sweets_on_plate1 = SweetsOnPlate.new()
    puts sweets_on_plate1.characteristic
    puts "Здається, на тарілці нема солодощів. Виправимо це!"
    sweets_on_plate1.add(Candy.new("білочка", 2, "праліне"))
    sweets_on_plate1.add(Waffle.new("слівка ленівка", 1, "сливки"))
    puts sweets_on_plate1.characteristic
    puts "Ми поклали солодощі на тарілку, можемо тепер їх з'їсти"
    if sweets_on_plate1.eat
      puts "Ми з'їли всі солодощі за тарілки..."
    end
    puts sweets_on_plate1.get_name
    if sweets_on_plate1.eaten
      puts "Перевірка показує, що ми з'їли всі солодощі за тарілки..."
    end
    puts "\nХочеться ще, візьмемо другу тарілку та заповнимо її теж"
    sweets_on_plate2 = SweetsOnPlate.new()
    sweets_on_plate2.add(Cookie.new("есмеральда", 3, "шоколад"))
    sweets_on_plate2.add(Cookie.new("есмеральда", 2, "горіх"))
    sweets_on_plate2.add(Waffle.new("вафля рошен", 2, "молоко"))
    sweets_on_plate2.add(Candy.new("шоколадне яйце", 1, "праліне"))
    puts "Маємо таку кількість одиниць солодощів на тарілці: #{sweets_on_plate2.get_amount}"
    puts "Так, що в нас на тарілці?"
    puts sweets_on_plate2.characteristic
    puts "Поїмо нарешті"
    if sweets_on_plate2.eat
      puts "Поїли. Супер, але хочеться ще. Але щоб не перемивати тарілку просто покладемо сюди знов"
    end
    cookie = Cookie.new("есмеральда", 2, "горіх")
    sweets_on_plate2.add(Waffle.new("слівка ленівка", 2, "сливки"))
    sweets_on_plate2.add(cookie)
    puts sweets_on_plate2.characteristic
    puts "Передумала, не хочу печиво. Приберу назад"
    sweets_on_plate2.remove(cookie)
    puts sweets_on_plate2.characteristic
    if sweets_on_plate2.eat
      puts "Поїли. Тепер помиємо посуд та підемо по справах"
    end
    sweets_on_plate1.clear
    puts "Помили першу тарілку"
    sweets_on_plate2.clear
    puts "Помили другу тарілку"
  end

  Main.main("")

end