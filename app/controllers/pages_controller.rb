class PagesController < ApplicationController
  before_action :clean_session
  def home
    @resume = cookies[:resume_id]
    puts 'Test for the session id'
    puts @resume
    puts 'End of the test'
  end

  def preview
    @resume = Resume.find(resume)
    @skills = Skill.where("resume_id = #{resume}")
    @experiences = Experience.where("resume_id = #{resume}")
  end

  private

  def resume
    session[:resume_id]
  end

  def clean_session
    session.delete :resume_id
  end
end
