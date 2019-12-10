class SwimmersController < ApplicationController
  before_action :find_swimmer, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit]

  def index
    if params[:category].blank?
      @swimmers = Swimmer.all.order("created_at DESC")
    else
      @category_id = Category.find_by(name: params[:category]).id
      @swimmers = Swimmer.where(:category_id => @category_id).order("created_at DESC")
    end
  end

  def show
    if @swimmer.reviews.blank?
      @average_review = 0
    else
      @average_review = @swimmer.reviews.average(:rating).round(2)
    end
  end


  def new
    @swimmer = current_user.swimmers.build
    @categories = Category.all.map {|c| [c.name, c.id]}
  end


  def create
    @swimmer = current_user.swimmers.build(swimmer_params)
    @swimmer.category_id = params[:category_id]

    if @swimmer.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @categories = Category.all.map {|c| [c.name, c.id]}
  end

  def update
    @swimmer.category_id = params[:category_id]
    if @swimmer.update(swimmer_params)
      redirect_to swimmer_path(@swimmer)
    else
      render 'edit'
    end
  end

  def destroy
    @swimmer.destroy
    redirect_to root_path
  end


  private

  def swimmer_params
    params.require(:swimmer).permit(:name, :gender, :age, :poolclub, :rost, :weihgt, :achievement, :bestresult, :nomertel, :description, :coach, :category_id, :swimmer_img)
  end


  def find_swimmer
    @swimmer = Swimmer.find(params[:id])
  end
end


