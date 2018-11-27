require ('rspec')
require('sphinx')
require ('pry')

describe('#cat') do
  it("#makes the cat meow") do
    expect(meow()).to(eq("meow"))
  end

end
