# frozen_string_literal: true

class QuestionsController < ApplicationController
  def ask; end

  def answer
    if params[:question] == 'I am going to work'
      @answer = 'GREAT!'
    elsif params[:question].match?(/^.*\?.*$/)
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
