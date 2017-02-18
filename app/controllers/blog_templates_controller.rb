# frozen_string_literal: true

# :nodoc:
class BlogTemplatesController < OpenReadController
  before_action :set_blog_template, only: [:show, :update, :destroy]

  # GET /blog_templates
  def index
    @blog_templates = BlogTemplate.all

    render json: @blog_templates
  end

  # GET /blog_templates/1
  def show
    render json: @blog_template
  end

  # POST /blog_templates
  def create
    @blog_template = current_user.BlogTemplate.new(blog_template_params)

    if @blog_template.save
      render json: @blog_template, status: :created
    else
      render json: @blog_template.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /blog_templates/1
  def update
    if @blog_template.update(blog_template_params)
      render json: @blog_template
    else
      render json: @blog_template.errors, status: :unprocessable_entity
    end
  end

  # DELETE /blog_templates/1
  def destroy
    @blog_template.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_blog_template
    @blog_template = BlogTemplate.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def blog_template_params
    params.require(:blog_template).permit(:blog_title, :subject, :body)
  end
  private :set_blog_template, :blog_template_params
end
