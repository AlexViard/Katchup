class Admin::ItemsController < Admin::BasesController

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(title: params[:title], descript: params[:descript], price: params[:price], image_url: params[:image_url])
    if @item.save
      flash[:success] = "L'item a bien etait creer"
      redirect_to admin_items_path
    else
      flash[:success] = "Nous avons rencontré une erreur"
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
      if @item.update(title: params[:title], descript: params[:descript], price: params[:price], image_url: params[:image_url])
        flash[:success] = "L'item a bien etait modifier !"
        redirect_to admin_items_path
      else
        flash[:success] = "Nous avons rencontré une erreur"
        render :edit
      end
  end

  def destroy
    @item = Item.find(params[:id])
    @cart_item = CartItem.where(item_id: @item.id)
    @cart_item.destroy_all
    @item.delete
    redirect_to admin_items_path
  end
end
