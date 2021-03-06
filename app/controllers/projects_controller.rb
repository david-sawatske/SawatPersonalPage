class ProjectsController < ApplicationController
  before_action :set_project, only: [:edit, :update, :show, :destroy]
  before_action :set_techs, only: [:edit, :update]

  access all: [],
         user: [],
         site_admin: :all

  def index
    @projects = Project.by_position
  end

  def new
    @project = Project.new
  end

  def create
    @projects = Project.new(project_params)

    if @projects.save
      redirect_to root_path, notice: 'Project created'
    else
      flash.now[:errors] = @projects.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to root_path, notice: 'Project was successfully updated'
    else
      flash.now[:errors] = @project.errors.full_messages
      render :new
    end
  end

  def show
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

  def destroy
    @project.destroy

    redirect_to root_path, notice: 'Project removed'
  end

  def sort
    params[:order].each do |key, value|
      Project.find(value[:id]).update(position: value[:position])
    end

    head :ok
  end

  private
    def set_project
      @project = Project.find(params[:id])
    end

    def set_techs
      @technologies = Technology.all
    end

    def project_params
      params.require(:project).permit(:title,
                                      :image,
                                      :description,
                                      technologies_attributes: [:id, :name, :icon, :_destroy])
    end
end
