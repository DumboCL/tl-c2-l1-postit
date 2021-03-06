class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def show
  end

  def new
    @category = Category.new

  end

  def create
    @category = Category.new(caterory_params)

    if @category.save
      flash[:notice] = "Your post was created."
      redirect_to categories_path
    else
      flash[:notice] = @category.errors
      render 'new'
    end

  end

  def edit

  end

  def update
    if @category.update(caterory_params)
      flash[:notice] = "The category was updated"
      redirect_to categories_path
    else
      render :edit
    end
  end

  def destroy
    if @category.destroy
      flash[:notice] = "The category was deleted."
      redirect_to categories_path
    else
      flash[:notice] = "The category was not deleted."
      redirect_to categories_path
    end
  end

  private

  def set_category
    @category = Category.find(params[:id])
    
  end

  def caterory_params
    params.require(:category).permit!
    
  end




end