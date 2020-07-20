class Waiter
  attr_accessor :name, :exp
  @@all = []
  def initialize(name, exp)
    @name = name
    @exp = exp
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(customer, total, tip = 0)
    Meal.new(self, customer, total, tip)
  end

  def meals
    meals = Meal.all.select {|meal| meal.waiter == self}
    meals
  end

  def best_tipper
    best_tipped_meal = meals.max
    best_tipped_meal
  end
end
