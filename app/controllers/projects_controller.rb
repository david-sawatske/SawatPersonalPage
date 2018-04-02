class ProjectsController < ApplicationController
  before_action :set_project, only: [:edit, :update, :show, :destroy]

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @projects = Project.new(project_params)

    if @projects.save
      redirect_to projects_path, notice: 'Project created'
    else
      flash.now[:errors] = @projects.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to projects_path, notice: 'Project was successfully updated'
    else
      flash.now[:errors] = @project.errors.full_messages
      render :new
    end
  end

  def show
  end

  def destroy
    @project.destroy

    redirect_to projects_url, notice: 'Project removed'
  end

  private
    def set_project
      @project = Project.find(params[:id])
    end

    def project_params
      params.require(:project).permit(:title, :description, :image)
    end
end
