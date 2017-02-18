class Apis::CartsController < ApplicationController
 before_filter :set_cart,:only => [:index,:update,:destroyi,:update_product_count]
 def index
  @carts = @user.carts
 end
 
 def edit
 end

 def create
  @cart = @user.carts.new(cart_params)
  if @cart.save
  end
 end
 
 def update
  #update for wishlist and is_favourite from cart happens her in this function update_column can also be used
  if @cart.update_columns(is_favourite: params[:is_favourite],wishlist: params[:wishlist])
  else
  end
 end

 def destroy
  if @cart.destroy
  else
  end
 end 

 def update_product_count
  #check in table whether the product exists and the count in table is existing
  product =  Product.find(@cart.product_id)
  if product.in_stock >= params[:count] 
    if @cart.update_column :product_count,params[:count]
    else
    end
 end
 end

 private

 def cart_product
  @cart = @user.products.find_by_id(params[:id])
 end

 def cart_params
  params.require(:cart).permit(:product_id,:product_count,:is_favourite,:wishlist)
 end
end
