class Riddle
  attr_accessor(:riddles)

  @@riddles = {
    "riddle1" => "ans1",
    "riddle2" => "ans2",
    "riddle3" => "ans3"
  }
  # def self.initialize()
  #   # @answer= answer
  # end

  def self.all()
    @@riddles
  end

  def add_new_riddle(riddle, answer) ##Adds a new question-answer pair in hash
    @@riddles.store(riddle, answer)
  end

  def self.random_key  ##Grabs a random question from the hash
    items = @@riddles.keys
    items[rand(items.length)]
  end

  def self.delete_riddle(key)  ##delete a question-answer pair in the hash
    @@riddles.delete(key)
  end

  def self.find_riddle(riddle)  ##Searches for a specific answer to a question
    @@riddles.fetch(riddle)
  end

  def self.random_value  ##Grabs a random answer from the hash - might not be used
    items = @@riddles.values
    items[rand(items.length)]
  end

  def self.compare_user_answer(original_question,user_answer)
    if user_answer === self.find_riddle(original_question)
      return true
    end
    return false
  end

  def self.ask_user_riddle_testing()
    if @@riddles != {}
      temp_question = self.random_key
      actual_answer = self.find_riddle(temp_question)
      puts temp_question
      puts "\nWhat is the answer?"
      temp_answer = gets.chomp
      if temp_answer == actual_answer
        puts "yeah you answered correctly"
        self.delete_riddle(temp_question)
      else
        puts "Nay, you goofed."
      end
    else
    puts "All riddles solved!"
    end
  end
end

sphinx = Riddle.new()
