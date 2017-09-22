class ResumesController < ApplicationController
  # everything we need to do to find the right resume.
  before_action :set_resume, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @resume = Resume.new
  end

  def edit
  end

  def create
    @resume = Resume.new(resume_params)
    # respond_to is a method on the superclass ActionController.
    # it takes a block, which is like a delegate. 
    respond_to do |format|
      if @resume.save
        # render is quicker because you're already in said controller (:flash.now)
        format.html { redirect_to @resume, notice: "Resume was successfully created." }
        format.json { render :show, status: :created, location: @resume }
      else
        # if the resume does not save
        format.html { render :new }
        format.json { render json: @resume.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @resume.update(resume_params)
        format.html { redirect_to @resume, notice: "Resume was successfully updated" }
        format.json { render :show, status: :ok, location: @resume }
      else
        format.html { render :edit }
        format.json { render json: @resume.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @resume.destroy
    respond_to do |format|
      format.html { redirect_to resumes_url, notice: "Resume was successfully destroyed." }
      format.json { head :no_content }
    end
  end



  private
    def set_resume
      @resume = Resume.find(params[:id])
    end
    
    def resume_params
      params.require(:resume).permit(:name, :biography, :profile_pic, :cv)
    end


end
