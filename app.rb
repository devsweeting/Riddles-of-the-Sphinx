require('sinatra')
require('sinatra/reloader')
require('./lib/sphinx')
require('pry')


get('/') do
  sphinx = Riddle.new()
  @user_riddle = sphinx.random_key()
  @actual_ans = sphinx.find_riddle(@user_riddle)
  erb(:input)
end

post('/output') do
  sphinx = Riddle.new()
  user_ans = params.fetch('ans')
  @user_riddle = params.fetch("question")
  sphinx.compare_user_answer(@user_riddle,user_ans)
  binding.pry
end
