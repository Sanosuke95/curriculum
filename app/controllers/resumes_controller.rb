class ResumesController < ApplicationController
  
  before_action :check_data, only: [:new]

  def index
  end

  def show
    @resume = Resume.find(params[:id])
  end

  def new
    @resume = Resume.new
  end

  def create
    @resume = Resume.new(params_resume)
    if @resume.save
      flash[:success] = 'Title validate for the test'
      cookies[:resume_id] = @resume.id
      redirect_to new_skill_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @resume = Resume.find(params[:id])
  end

  def update
    @resume = Resume.find(params[:id])
    if @resume.update(params_resume)
      flash[:success] = 'Object was successfully updated'
      redirect_to @resume
    else
      flash[:error] = 'Something went wrong'
      render :edit
    end
  end

  def destroy
    @resume = Resume.find(params[:id])
    @resume.destroy

    cookies.delete :resume_id
    redirect_to new_resume_path, status: :see_other
  end

  private

  def params_resume
    params.require(:resume).permit(:title, :body)
  end

  def check_data
    redirect_to resume_path(cookies[:resume_id]) if cookies[:resume_id]
  end
  
end
