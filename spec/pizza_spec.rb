require './pizza'

describe Pizza do

  before (:each) do
  @pizza = Pizza.new
  end
  it "exists" do
    expect(Pizza).to be_a(Class)
  end
describe '.initialize' do
  it 'records all of the toppings' do
    toppings = [
    Topping.new('mushrooms', vegetarian: true),
    Topping.new('pepperoni')
    ]
    @pizza = Pizza.new(toppings)

    expect(@pizza.toppings).to eq(toppings)
  end
  it 'defaults the toppings to cheese only, if the pizza has no toppings' do

    expect(@pizza.toppings.size).to eq(1)
    expect(@pizza.toppings.first.name).to eq('cheese')
  end
end

describe '.vegetarian' do
  it 'return true if vegetarian is true' do

    expect(@pizza.vegetarian?).to eq(true)
  end
end

describe '.add_toppings' do
  it 'store arrays of toppings' do

  expect(@pizza.add_topping("peppers"))

  end
end

describe 'deliver!' do

  it 'Take record of delevery time for every take out pizza' do
    expect(@pizza.deliver!).to_not eq(Time.new)
  end
end

describe 'late?' do

  it 'check for late delivery' do
    @pizza.deliver!
    @pizza.delivered

    expect(@pizza.late?).to eq(false)
  end
end
end

describe Topping do
  it "exists" do
    expect(Topping).to be_a(Class)
  end
describe '.initialize' do
  it "sets the name of topping" do
    topping = Topping.new('olives')

    expect(topping.name).to eq('olives')
  end

  it 'sets whether or not the topping is vegetarian' do
    topping = Topping.new('bell peppers', vegetarian: true)

    expect(topping.vegetarian).to eq(true)
  end
end
end
