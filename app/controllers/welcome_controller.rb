class WelcomeController < ApplicationController

  def index
    @carousels = Carousel.only_visible.order_by_id
  end

end
