class ItemsController < ApplicationController
  class ItemsController < ApplicationController
    before_action :set_store
    before_action :set_topic,  only: [:show, :edit, :update, :destroy]
    
    def index
      @items = @store.items
    end
  
    def show
      
    end
  
    def new
      @item = @stores[:id].items.new()
      render partial: "form"
    end
  
    def create
     @item =@store.items.new(item_params)
  
      if @item.save
        redirect_to store_items_path(@store)
      else
        render :new
      end
    end
  
    def edit
      render partial: "form"
    end
  
    def update
      if @item.update(item_params)
        redirect_to store_items_path(@store, @item)
      else
        render :edit
      end
    end
  
    def destroy
      @item.destroy
      redirect_to store_items_path(@store)
    end
  
    private
      def set_store
        @store = Store.find(params[:store_id])
      end
       
      def set_topic
        @item = item.find(params[:id])
       end
  
      def topic_params
        params.require(:item).permit(:name, :body) 
      end
  end