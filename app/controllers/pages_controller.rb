class PagesController < ApplicationController
  def home
    @projects = Project.all
    @technologies = Technology.all
  end
end
