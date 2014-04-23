class Pizza
   attr_accessor :toppings

  def initialize(toppings = [Topping.new('cheese', vegetarian: true)])
    @toppings = toppings
  end
         # Alternative method by Mike
  # def initialize(*toppings)
  #   if toppings ==[]
  #     @toppings = [Topping.new("cheese")]
  #   else
  #     @toppings = toppings
  #   end
  # end

  def vegetarian?
    @toppings.all? do |topping|
      topping.vegetarian == true
    end
  end

       # Alternative method by Mike
  # def vegetarian?
  #   @toppings.each do |topping|
  #     if topping.vegetarian != true
  #       return false
  #     end
  #   end
  #   true


  def add_topping(toppings)
    @toppings << toppings
  end
end

class Topping
  attr_reader :name, :vegetarian

  def initialize(name, vegetarian: false )
    @name = name
    @vegetarian = vegetarian
  end
end
