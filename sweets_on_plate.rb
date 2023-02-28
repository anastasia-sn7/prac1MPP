require './sweet.rb'

class SweetsOnPlate < Sweet
  def initialize
    @sweets = []
  end

  def add(sweet)
    @sweets.append(sweet)
    sweet.parent = self
  end

  def remove(sweet)
    @sweets.delete(sweet)
    sweet.parent = nil
  end

  def clear
    @sweets.clear
  end

  def get_name
    names = "Не з'їдені солодощі:"
    @sweets.each { |sweet| names += " '#{sweet.name}'" unless sweet.eaten }
    names
  end

  def get_amount
    amount = 0
    @sweets.each { |sweet| amount += sweet.amount unless sweet.eaten }
    amount
  end

  def eat
    @sweets.each { |sweet| sweet.eat unless sweet.eaten }
  end

  def eaten
    @sweets.all?(&:eaten)
  end

  def characteristic
    characteristics = "Характеристика не з'їдених солодощів:"
    @sweets.each { |sweet| characteristics += " '#{sweet.characteristic}'" unless sweet.eaten }
    characteristics
  end
end