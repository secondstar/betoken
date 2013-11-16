class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project = Project.find(params[:id])
    
  end

  # GET /projects/new
  def new
    @project = @portfolio.new_project
  end

  # # GET /projects/1/edit
  # def edit
  # end

  # POST /projects
  # POST /projects.json
  def create
    @project = @portfolio.new_project(project_params)    
    # @project = @portfolio.new_project(params.require(:project).permit(:title, :body, :image_url))
    
    respond_to do |format|
      if @project.publish
        format.html { redirect_to portfolio_path, notice: 'Project was successfully created.' }
        # format.json { render action: 'show', status: :created, location: @project }
      else
        format.html { render action: 'new' }
        # format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end


  # def create
  #   @post = @blog.new_post(params.require(:post).permit(:title, :body, :image_url))
  #   if @post.publish
  #     redirect_to root_url,
  #           tadah: "Post successfully created"
  #   else
  #     flash.now[:error] = "Whoops, the highlighted fields need better input."
  #     render action: "new"
  #   end
  # end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:title, :body, :logo_url, :image, :remote_image_url, :challenge, 
        :result, :quote, :quotable_person, :quotable_positon_and_company, :one_line_project_description, 
        :summary_image_url, :category, :pubdate)
    end
end
