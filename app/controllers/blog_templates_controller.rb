# frozen_string_literal: true

# :nodoc:
# Inheriting from OpenReadController allows the blogs to be viewable by anyone,
# but the only users who can edit them should be the user that creates them.
class BlogTemplatesController < OpenReadController
  before_action :set_blog_template, only: [:show, :update, :destroy]

  # GET /blog_templates
  # Index allows me to see all the blogs created by this profile.
  def index
    @blog_templates = BlogTemplate.all

    render json: @blog_templates
  end

  # GET /blog_templates/1
  # show allows me to see each individual post by a user
  def show
    @blog_templates = current_user.blog_templates
    render json: @blog_template
  end

  # POST /blog_templates
  # I had to use current_user and profile to allow the bridge between profile
  # and blog without a join table being present. This also allows the creation
  # of a blog under the current profile which requires the auth token from user.
  def create
    @blog_template = current_user.blog_templates.build(blog_template_params)

    if @blog_template.save
      render json: @blog_template, status: :created
    else
      render json: @blog_template.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /blog_templates/1
  # This should allow for the update of a blog after it has been created.
  # The only one who should be able to do so is the user who wrote it originally
  def update
    if @blog_template.update(blog_template_params)
      render json: @blog_template
    else
      render json: @blog_template.errors, status: :unprocessable_entity
    end
  end

  # DELETE /blog_templates/1
  # This is for the destruction of said posts again should only be doable
  # by the user who wrote the blog.
  def destroy
    @blog_template.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_blog_template
    @blog_template = current_user.blog_templates.find(params[:id])
    #  = BlogTemplate.where(id: params[:id],: current_user).take
  end

  # Only allow a trusted parameter "white list" through.
  def blog_template_params
    params.require(:blog_template).permit(:blog_title, :subject, :body)
  end
  private :set_blog_template, :blog_template_params
end
