class HomeController < ApplicationController
  def index
    @name = user_signed_in? ? current_user.email : 'Visitante'
    @country = request.location.country
    @city = request.location.city
  end
  def about
  end
end
