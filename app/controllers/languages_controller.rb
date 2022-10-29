class LanguagesController < ApplicationController
  def new
    @language = Language.new
  end

  def create
    @language = Language.new(params_language)
     @language.resume_id = cookies[:resume_id]
    if @language.save
      flash[:success] = "Object successfully created"
      redirect_to @language
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  

  def show
  end

  def edit
  end

  private

  def params_language
    params.require(:language).permit(:name, :level)
  end
end
