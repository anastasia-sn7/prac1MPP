require './sweet.rb'

class Candy < Sweet
  attr_reader :type

  def initialize(name, amount, type)
    super(name, amount)
    @type = type
  end

  def characteristic
    "Конфета з назвою '#{name}' є: #{type}"
  end
end