class ChargesController < ApplicationController
    def new
    end

    def create
        @film = Film.find(session[:film_id])
        @amount = @film.price_in_cents

        customer = Stripe::Customer.create(
            :email => params[:stripeEmail],
            :source => params[:stripeToken]
        )

        charge = Stripe::Charge.create(
            :customer => customer.id,
            :amount => @amount,
            :description => "Filmsales: #{@film.title}",
            :currency => 'aud'
        )

        flash[:notice] = "Thanks for your payment of A$#{@film.price}"
        redirect_to films_path

        rescue Stripe::CardError => e
            flash[:error] = e.message
            redirect_to new_charge_path
    end
end
