class ProjectsController < ApplicationController
  before_action :authenticate_user!, only: %i[create update]
  before_action :project_params, only: %i[create update]

  def index
    @projects = Project.includes(:user).all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user_id = current_user.id

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def show; end

  def edit; end

  def update; end

  private

  def project_params
    params.require(:project).permit(
      :title,
      :description
    )
  end
end
