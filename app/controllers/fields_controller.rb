class FieldsController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]
  def index
  end

  def new
    @field = Field.new
  end

  def show
  end

  def create
    if @field.save
      redirect_to field_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
