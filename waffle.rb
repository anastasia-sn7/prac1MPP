require './sweet.rb'

class Waffle < Sweet
  attr_reader :filling

  def initialize(name, amount, filling)
    super(name, amount)
    @filling = filling
  end

  def characteristic
    "Вафля з назвою '#{name}' має начинку: #{filling}"
  end
end