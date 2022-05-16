class PagesController < ApplicationController

  def ask
  end


  def answer
    @coach = ''
    @ask = params[:message]
    if @ask == 'I am going to work'
      @coach = 'Great!'
    elsif @ask.include?('?')
      @coach = 'Silly question, get dressed and go to work!.'
    else
      @coach = "I don't care, get dressed and go to work!."
    end
  end
end
