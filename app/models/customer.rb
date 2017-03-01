class Customer
  attr_accessor :first_name, :last_name

  def initialize(name)
    @name = name
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
