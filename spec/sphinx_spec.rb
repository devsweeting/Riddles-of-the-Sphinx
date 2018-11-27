require ('rspec')
require('sphinx')
require ('pry')

describe('Sphinx#ask_user_riddle') do
  it('Will let user add a riddle') do
    sphinx = Riddle.new()
    sphinx.add_new_riddle("riddle4", "ans4")
    expect(sphinx.riddles).to(eq({"riddle1"=>"ans1", "riddle2"=>"ans2", "riddle3"=>"ans3", "riddle4"=>"ans4"}))
  end

  it('Will delete a riddle') do
    sphinx = Riddle.new()
    sphinx.delete_riddle("riddle2")
    expect(sphinx.riddles).to(eq({'riddle1'=>'ans1', 'riddle3'=>'ans3'}))
  end

  it('Will find a riddle') do
    sphinx = Riddle.new()
    expect(sphinx.find_riddle("riddle2")).to(eq("ans2"))
  end

end
