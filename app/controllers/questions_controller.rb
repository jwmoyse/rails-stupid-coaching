class QuestionsController < ApplicationController
  def home
  end

  def ask
  end

  def answer
    @answers = ["There's a game soon, get ready!", "Did you forget your kit again?", "It's raining - no game."]
    @answer = @answers.index {|phrase.include?('!')} || @answers.index {|x| x.include?('?')} || @answers.index {|x| x.include?('.')}

    @question = params[:question]

  end

end
