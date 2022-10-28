class ResumesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @resume = Resume.new
  end

  def create
    @resume = Resume.new(params_resume)
    if @resume.save
      flash[:success] = 'Title validate for the test'
      cookies[:resume_id] = @resume.id
      puts cookies[:resume_id]
      redirect_to skills_new_path
    else
      flash[:error] = 'Something went wrong'
      render 'new'
    end
  end

  def edit
  end

  private

  def params_resume
    params.require(:resume).permit(:title)
  end
end
