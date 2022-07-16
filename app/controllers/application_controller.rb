class ApplicationController < ActionController::Base

   before_action :initialize_cart #siempre inializa carro

   before_action :set_render_cart


 
  def set_render_cart
    @render_cart = true
  end


   def initialize_cart                    
    @cart ||= Cart.find_by(id: session[:cart_id]) #busca carro

    if @cart.nil?   #si no existe
      @cart = Cart.create  #crea session
         session[:cart_id] = @cart.id  #pone el id del carro sea id de session
    end
  end
end
