class MenuItemsController < ApplicationController
  def index
    @menu_items = MenuItem.all
    render json: {
      menu_items: @menu_items
    }
  end

  def create
    item = MenuItem.create!(
      title: params['menu_item']['title'],
      description: params['menu_item']['description'],
      ingrediants: params['menu_item']['ingrediants'],
      category: params['menu_item']['category'],
      url: params['menu_item']['url']
    )

    if item
      render json: {
        status: :created,
        menu_item: item
      }
    else
      render json: {
        status: 500
      }
    end
  end

  def destroy
    item = MenuItem.find(params['id'])
    item.destroy
    if item
      render json: {
        status: 500
      }
    else
      render json: {
        status: :deleted
      }
    end
  end
end
