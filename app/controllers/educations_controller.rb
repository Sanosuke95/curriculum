class EducationsController < ApplicationController
  def new
    @education = Education.new
  end

  def create
    @education = Education.new(params_education)
    @education.resume_id = cookies[:resume_id]
    if @education.save
      flash[:success] = 'Object successfully created'
      redirect_to @education
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

  def params_education
    params.require(:education).permit(:title, :begin_date, :end_date, :location, :body)
  end
end
