class EducationsController < ApplicationController
  # def edit
  #   @education = Education.find(params[:id])
  # end
  #
  # def new
  #   @education = Education.new
  # end
  #
  # def create
  #   # Create a new instance of education with education_params
  #   @education = Education.new(education_params)
  #
  #   if @education.save
  #     # If education successfully saves, notify user and redirect to
  #     # the education "show" page.
  #     flash[:success] = "Successfully added education."
  #     redirect_to root_path
  #   else
  #     # If education did not successfully save, alert user and send
  #     # back to "new" page.
  #     flash[:error] = "There was a problem adding that education."
  #     render action: :new
  #   end
  # end
  #
  # def update
  #   @education = Education.find(params[:id])
  #   if @education.update_attributes(education_params)
  #     # If education attributes successfully update, notify user and
  #     # redirect to the education "show" page.
  #     flash[:success] = "Successfully saved education."
  #     redirect_to root_path
  #   else
  #     # If education attributes did not successfully update, alert
  #     # user and send back to the "edit" page.
  #     flash[:error] = "That education could not be saved."
  #     render action: :edit
  #   end
  # end
  #
  # def destroy
  #   @education = Education.find(params[:id])
  #   # If education is successfully deleted, notify user.
  #   # Otherwise, alert the user of the error.
  #   if @education.destroy
  #     flash[:notice] = "Education was deleted."
  #   else
  #     flash[:error] = "Education could not be deleted."
  #   end
  #
  #   redirect_to education_path
  # end

  private
  def education_params
    # Permit user to modify these attributes for each education.
    params[:education].permit(:school, :description, :degree,
                               :location, :date)
  end
end
