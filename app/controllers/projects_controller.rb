class ProjectsController < ApplicationController
  def index
    # Show all projects on index page
    @projects = Project.all
    @experiences = Experience.all
    @educations = Education.all
  end

  def show
    # Find project by ID and serve to "show" page
    @project = Project.find(params[:id])
  end

  def new
    # Create a new instance of Project
    @project = Project.new
  end

  def create
    # Create a new instance of Project with project_params
    @project = Project.new(project_params)

    if @project.save
      # If project successfully saves, notify user and redirect to
      # the project "show" page.
      flash[:success] = "Successfully added project."
      redirect_to root_path
    else
      # If project did not successfully save, alert user and send
      # back to "new" page.
      flash[:error] = "There was a problem adding that project."
      render action: :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(project_params)
      # If project attributes successfully update, notify user and
      # redirect to the project "show" page.
      flash[:success] = "Successfully saved project."
      redirect_to project_path
    else
      # If project attributes did not successfully update, alert
      # user and send back to the "edit" page.
      flash[:error] = "That project could not be saved."
      render action: :edit
    end
  end

  def destroy
    @project = Project.find(params[:id])
    # If project is successfully deleted, notify user.
    # Otherwise, alert the user of the error.
    if @project.destroy
      flash[:notice] = "Project was deleted."
    else
      flash[:error] = "Project could not be deleted."
    end

    redirect_to project_path
  end

  private
  def project_params
    # Permit user to modify these attributes for each Project.
    params[:project].permit(:title, :description, :url, :box_art_url,
                            :completion_status)
  end
end
