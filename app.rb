require('sinatra')
require('sinatra/reloader')
require('./lib/sphinx')
require('pry')


get('/') do
  sphinx = Riddle.new()
    if Riddle.all != {}
    @user_riddle = Riddle.random_key()
    @actual_ans = Riddle.find_riddle(@user_riddle)
    erb(:input)
    else
      erb(:gameover)
    end
end

post('/output') do
  sphinx = Riddle.new()
  user_ans = params.fetch('ans').downcase
  @user_riddle = params.fetch("question")
  if Riddle.compare_user_answer(@user_riddle,user_ans) == true
  Riddle.delete_riddle(@user_riddle)
  erb(:output)
  else
  erb(:failure)
  Riddle.delete_riddle(@user_riddle)
  end
end
