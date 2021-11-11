class QuestionsController < ApplicationController
  def ask; end

  def answer
    search = params[:answer]
    #@answers = ['Great!', 'Silly question, get dressed and go to work!', 'I don\'t care, get dressed and go to work!
#']
    @answers = if search.downcase == 'I am going to work'
               'Great!'
               elsif search.ends_with?('?')
               'Silly question, get dressed and go to work!'
               else
               'I don\'t care, get dressed and go to work!'
               end
  end
end
