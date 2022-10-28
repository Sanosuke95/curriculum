class SkillsController < ApplicationController

  def index
  end

  def new
    @skill_save = Skill.where("resume_id = #{resume}")
    @skill_test = 'Hello toto'
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_param)
    @skill.resume_id = resume
    if @skill.save
      flash[:success] = 'Object successfully created'
      redirect_to @skill
    else
      flash[:error] = 'Something went wrong'
      render 'new'
    end
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:id])
    if @skill.update_attributes(skill_param)
      flash[:success] = 'Object was successfully updated'
      redirect_to @skill
    else
      flash[:error] = 'Something went wrong'
      render 'edit'
    end
  end

  private

  def skill_param
    params.require(:skill).permit(:title, :level)
  end

  def resume
    cookies[:resume_id]
  end
end
