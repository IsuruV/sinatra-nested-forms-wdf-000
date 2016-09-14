require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      "Welcome to the Nested Forms Lab! let's navigate to the '/new'"

    end

    get '/new' do
       erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |ship|
        @ship = Ship.new(ship)
      end
      # @ship1 = Ship.new(params[:ship_name_1], params[:sh])
      erb :show
    end

  end
end
