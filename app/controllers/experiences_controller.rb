class ExperiencesController < ApplicationController
  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(params_experience)
    @experience.resume_id = cookies[:resume_id]
    if @experience.save
      flash[:success] = 'Object successfully created'
      redirect_to new_experience_path
    else
      flash[:error] = 'Something went wrong'
      render 'new'
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
end
