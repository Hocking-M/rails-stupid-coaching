class PagesController < ApplicationController
  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def ask

  end

  def coach_answer(question)
    if question == "I am going to work"
      "Great!"
    elsif question.include?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end

# If the message is I am going to work, the coach will answer Great!
# If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
# Otherwise the coach will answer I don't care, get dressed and go to work!
