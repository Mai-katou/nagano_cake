class Public::OrdersController < ApplicationController
  def new
    @order = Order.new

  end

  def confirm
    @order = Order.new(order_params)
    binding.pry
    # @order.postal_code = current_customer.postal_code
    #@order.address = current_customer.address
    #@order.name = current_customer.first_name + current_customer.last_name

    #@addres = Address.find(params[:order][:address_id])
    #@order.postal_code = @address.postal_code
    #@order.address = @address.address
    #@order.name = @address.name

    #render :confirm
  end
  
  def create

  end

  def complete
  end
  
  def index
    @orders = Order.all
  end

  def show
    @order = Oreder.find(params[:id])
  end

 
  private

  def order_params
    params.require(:order).permit(:payment_method, :postal_code, :address, :name)
  end
end
