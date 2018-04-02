class ProjectsController < ApplicationController
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

  private
    def project_params
      params.require(:project).permit(:title, :description, :image)
    end
end
