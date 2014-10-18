class CarouselsController < ApplicationController
  
  def index
    @carousels = Carousel.all.order_by_id

    respond_to do |format|
      format.html { render "index" }
    end
  end

  def show
    @carousel = load_carousel

    respond_to do |format|
      format.html { render "show" }
    end
  end

  def new
    @carousel = Carousel.new

    respond_to do |format|
      format.html
    end
  end

  def edit
    @carousel = load_carousel

    respond_to do |format|
      format.html
    end
  end

  def create
    @carousel = Carousel.new(carousel_params)

    respond_to do |format|
      if @carousel.save
        format.html { redirect_to carousels_path, notice: "Saccessful create" }
        format.json { render :index, status: :created, location: @carousel }
      else
        format.html { render :new }
        format.json { render json: @carousel.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @carousel = load_carousel

    respond_to do |format|
      if @carousel.update(carousel_params)
        format.html { redirect_to carousels_path, notice: 'Successful update' }
        format.json { render :index, status: :ok, location: @carousel }
      else
        format.html { render :edit }
        format.json { render json: @carousel.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @carousel = load_carousel

    if @carousel.destroy
      redirect_to carousels_url, notice: ' Successful destroyed'
    else 
      flash[:alert] = 'Error destroyed'
      render :show
    end      
  end

  private
    def load_carousel
      Carousel.find(params[:id])
    end

    def carousel_params
      params.require(:carousel).permit(:title, :caption, :image, :visible, :promotion)
    end
end
