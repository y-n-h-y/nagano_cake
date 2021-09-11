class Admin::ItemsController < ApplicationController
  def new
    @admin_item_image = Item.new
  end

  def index
  end

  def create
    @admin_item_image = Item.new(admin_item_image_params)
    @admin_item_image.save
    redirect_to admin_path
  end

  def show
  end

  def edit
  end

  def update
  end
  
  private
  
  def admin_item_image_params
    params.require(:admin_item_image).permit(:name, :image, :introduction, :genre_id, :price, :is_active)
  end
end
