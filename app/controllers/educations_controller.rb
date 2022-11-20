class EducationsController < ApplicationController
  def new
    @education_save = Education.where("resume_id = #{resume}")
    @education = Education.new
  end

  def create
    @education = Education.new(params_education)
    @education.resume_id = cookies[:resume_id]
    if @education.save
      flash[:success] = 'Object successfully created'
      redirect_to new_education_path
    else
      flash[:error] = 'Something went wrong'
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def show
  end

  private

  def params_education
    params.require(:education).permit(:title, :begin_date, :end_date, :location, :body)
  end

  def resume
    session[:resume_id]
  end
end
