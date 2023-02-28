class Sweet
  attr_reader :name, :amount, :eaten
  attr_accessor :parent

  def initialize(name, amount)
    @name = name
    @amount = amount
    @eaten = false
  end

  def add(component)
    raise NotImplementedError, "#{self.class} не імплементував метод '#{__method__}'"
  end

  def remove(component)
    raise NotImplementedError, "#{self.class} не імплементував метод '#{__method__}'"
  end

  def eat
    if eaten
      false
    else
      @eaten = true
      true
    end
  end

  def characteristic
    to_s
  end

  def to_s
    "#{name} (#{amount})"
  end
end