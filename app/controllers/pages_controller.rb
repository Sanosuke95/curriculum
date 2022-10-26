class PagesController < ApplicationController
  def home
    @resume = session[:resume_id]
    puts 'Test for the session id'
    puts @resume
    puts 'End of the test'
  end
end
