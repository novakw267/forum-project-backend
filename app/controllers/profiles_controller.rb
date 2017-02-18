# frozen_string_literal: true

# :nodoc:
class ProfilesController < OpenReadController
  before_action :set_profile, only: [:show, :update, :destroy]
  # GET /profiles
  def index
    @profiles = Profile.all

    render json: @profiles
  end

  # GET /profiles/1
  def show
    render json: @profile
  end

  # POST /pfiles
  def create
    @profile = current_user.profiles.build(profile_params)

    if @profile.save
      render json: @profile, status: :created
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /profiles/1
  def update
    if @profile.update(profile_params)
      render json: @profile
      head :no_content
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
    @profile = current_user.profiles.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def profile_params
    params.require(:profile).permit(:username, :favorite_band, :favorite_genre)
  end
end
