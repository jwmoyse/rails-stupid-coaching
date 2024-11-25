class QuestionsController < ApplicationController
  def home
    @questions = [] # Placeholder
  end

  def ask
  end

  def answer
    @answers = [
      "There's a game soon, get ready!",
      "Did you forget your kit again?",
      "It's raining - no game."
    ]
    puts "Question received: #{params[:question]}"

    # Get the user's question from the form input
    @question = params[:question] || "" # Safeguard: default to an empty string if params[:question] is nil

    # Select a response based on the question's content or punctuation
    if @question.include?('!')
      @answer = @answers[0]
    elsif @question.include?('?')
      @answer = @answers[1]
    else
      @answer = @answers[2]
    end
  end
end

# class QuestionsController < ApplicationController


#   def home
#     @questions
#   end

#   def ask
#   end

#   def answer
#     @answers = ["There's a game soon, get ready!", "Did you forget your kit again?", "It's raining - no game."]
#     @answer = @answers.index {|phrase.include?('!')} || @answers.index {|x| x.include?('?')} || @answers.index {|x| x.include?('.')}

#     @question = params[:question]

#   end

# end
