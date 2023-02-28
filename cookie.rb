require './sweet.rb'

class Cookie < Sweet
  attr_reader :powder

  def initialize(name, amount, powder)
    super(name, amount)
    @powder = powder
  end

  def characteristic
    "Печиво з назвою '#{name}' має присипку: #{powder}"
  end
end