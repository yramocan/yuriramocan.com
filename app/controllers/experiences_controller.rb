class ExperiencesController < ApplicationController
  # def edit
  #   @experience = Experience.find(params[:id])
  # end
  #
  # def new
  #   @experience = Experience.new
  # end
  #
  # def create
  #   # Create a new instance of experience with experience_params
  #   @experience = Experience.new(experience_params)
  #
  #   if @experience.save
  #     # If experience successfully saves, notify user and redirect to
  #     # the experience "show" page.
  #     flash[:success] = "Successfully added experience."
  #     redirect_to root_path
  #   else
  #     # If experience did not successfully save, alert user and send
  #     # back to "new" page.
  #     flash[:error] = "There was a problem adding that experience."
  #     render action: :new
  #   end
  # end
  #
  # def update
  #   @experience = Experience.find(params[:id])
  #   if @experience.update_attributes(experience_params)
  #     # If experience attributes successfully update, notify user and
  #     # redirect to the experience "show" page.
  #     flash[:success] = "Successfully saved experience."
  #     redirect_to root_path
  #   else
  #     # If experience attributes did not successfully update, alert
  #     # user and send back to the "edit" page.
  #     flash[:error] = "That experience could not be saved."
  #     render action: :edit
  #   end
  # end
  #
  # def destroy
  #   @experience = Experience.find(params[:id])
  #   # If experience is successfully deleted, notify user.
  #   # Otherwise, alert the user of the error.
  #   if @experience.destroy
  #     flash[:notice] = "Experience was deleted."
  #   else
  #     flash[:error] = "Experience could not be deleted."
  #   end
  #
  #   redirect_to experience_path
  # end

  private
  def experience_params
    # Permit user to modify these attributes for each experience.
    params[:experience].permit(:workplace, :description, :position,
                               :location, :date)
  end
end
