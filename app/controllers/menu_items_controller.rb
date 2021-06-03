class MenuItemsController < ApplicationController
  def index
    @menu_items = MenuItem.all
    render json: {
      menu_items: @menu_items
    }
  end
end
