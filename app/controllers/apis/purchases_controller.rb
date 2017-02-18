class Apis::PurchasesController < ApplicationController
 before_filter :set_product
 def show
 end
 
 def index
  @purchases = @user.purchases
 end

 def create
 end
 
 def update
  if @purchse.update()
  else
  end
 end

 def destroy
  if @purchase.destroy
  else
  end
 end 

 private

 def purchse_params
  params.require(:product).permit()
 end
end
