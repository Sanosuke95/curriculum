class PagesController < ApplicationController
  def home
    @resume = cookies[:resume_id]
    puts 'Test for the session id'
    puts @resume
    puts 'End of the test'
  end

  def preview
    
  end
end
