class Apis::ProductsController < ApplicationController
 before_action :set_product ,:only => [:show,:edit,:update,:destroy,:approve_product]
 def index
  @products = @user.products
 end
 
 def show
 end
 
 def new
  @product = @user.products.new
 end

 def edit
 end

 def create
  debugger
  @product = @user.products.new(product_params)
  if @product.save
  else
  end
 end
 
 def update
  if @product.update(product_params)
  else
  end
 end

 def destroy
  if @product.destroy
  else
  end
 end 

 def approve_product
  @product.update_column(approved: true) 
 end 

 def create_update_category
   if params[:categ_id].present?
     @categ = Category.find(params[:categ_id])
     if @categ.update(categ_params)
     else
     end
   else
     @categ = Category.new(category_params)
     if @categ.save
       puts "saved"
     else
     end
   end
 end
 private

 def set_product
  @product = @user.products.find_by_id(params[:id])
 end

 def product_params
  params.require(:product).permit(:name,:desc,:spec,:damage_spec,:amount,:in_stock,:category_id,:sub_categ_id,:approved,:damaged)
 end

 def category_params
  params.require(:category).permit(:name,:sub_categ_id,:sub_categ_name,:brand)
 end

end
