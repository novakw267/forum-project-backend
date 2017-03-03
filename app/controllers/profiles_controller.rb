# frozen_string_literal: true

# :nodoc:
# Inheriting from open read controller means that a profile should only be
# changable by the user who its attached to.
class ProfilesController < OpenReadController
  before_action :set_profile, only: [:show, :update, :destroy]
  # GET /profiles
  def index
    @profiles = Profiles.all

    render json: @profiles
  end

  # GET /profiles/1
  def show
    render json: @profile
  end

  # POST /pfiles
  def create
    @profile = current_user.build_profile(profile_params)

    if @profile.save
      render json: @profile, status: :created
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /profiles/1
  # This is for users to be able to change their profile name and other parts
  # their profile.
  def update
    if @profile.update(profile_params)
      # head :no_content
      render json: @profile
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /profiles/1
  def destroy
    @profile.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_profile
    # @profile = Profile.find_by(params[:id])
    @profile = Profile.where(id: params[:id], user: current_user).take
  end

  # Only allow a trusted parameter "white list" through.
  def profile_params
    params.require(:profile).permit(:username, :favorite_band, :favorite_genre)
  end
end
