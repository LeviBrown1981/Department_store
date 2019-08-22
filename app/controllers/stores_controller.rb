class StoresController < ApplicationController
  before_action :set_store, only:[:show, :edit, :update, :destroy]
  # before_action :set_store, exclude: [:index, :new, :create]
  
  def index
    @store = store.index
  end

  def show
    # render :seed
  end

  def edit
    render partial:"form"
  end

  def  create
    @store = Store.new (store_params)

    if @store.save
      redirect_to store_path
    else
      render :new
    end
  end

  def update
    @store =Store.find()
    if @store.update(store_params)
      redirect_to store_path(@store)
    else
      render :edit
    end
  end

  def destroy
    
  
  
  private
  def store_params
    params.require(:store).permit(:name)
  end
      
  def set_store @store = Store.find(params[:id])
  end
end
