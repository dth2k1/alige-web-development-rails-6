module CurrentCart
    private
      def set_cart
        @cart = Cart.find(session[:cart_id])
      rescue ActiveRecord::RecordNotFound
        @cart = Cart.create
        session[:cart_id] = @cart.id
        #reset couter when user add to cart
      end
end