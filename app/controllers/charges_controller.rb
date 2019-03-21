class ChargesController < ApplicationController
    def new
      @form = Form.find_by(user_id: current_user.id)
      @formfuctions_user = Formfuction.where(form_id: @form.id)
      @amount = find_price
    end
    
    def create
      @form = Form.find_by(user_id: current_user.id)
      @formfuctions_user = Formfuction.where(form_id: @form.id)
      @amount = find_price
      
      customer = Stripe::Customer.create({
        email: params[:stripeEmail],
        source: params[:stripeToken],
      })
    
      charge = Stripe::Charge.create({
        customer: customer.id,
        amount: (@amount*100).to_i  ,
        description: 'Rails Stripe customer',
        currency: 'usd',
      })
      
    @charge = Charge.new
    @charge.stripe_customer_id = customer.id
    @charge.user_id = current_user.id
    
   
    if @charge.save 
        redirect_to root_path
    end
    
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to root_path
    end
end
