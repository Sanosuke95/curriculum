class PagesController < ApplicationController
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
    cookies[:resume_id]
  end
end
