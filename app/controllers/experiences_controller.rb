class ExperiencesController < ApplicationController
  def new
    @experience_save = Experience.where("resume_id = #{resume}")
    puts 'begin test for resume id'
    puts @experience_save
    puts 'end test for experience'
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(params_experience)
    @experience.resume_id = session[:resume_id]
    if @experience.save
      flash[:success] = 'Object successfully created'
      redirect_to new_experience_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def show
  end

  private

  def params_experience
    params.require(:experience).permit(:title, :begin_date, :end_date, :location, :body)
  end

  def resume
    session[:resume_id]
  end
end
