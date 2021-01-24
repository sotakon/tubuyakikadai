class TubuyakisController < ApplicationController
  protect_from_forgery
  before_action :set_tubuyaki, only: [:edit, :update,:destroy]
  def index
    @tubuyaki = Tubuyaki.all
  end
  def new
    @tubuyaki = Tubuyaki.new
  end
  def create
    @tubuyaki = Tubuyaki.new(tubuyaki_params)
    if @tubuyaki.save
      redirect_to tubuyakis_path, notice: "tweetを作成しました！"
    else
      render :new
    end
  end
  def edit
    @tubuyaki = Tubuyaki.find(params[:id])
  end
  def confirm
    @tubuyaki = Tubuyaki.new(tubuyaki_params)
  end
  def update
    @tubuyaki = Tubuyaki.find(params[:id])
    if @tubuyaki.update(tubuyaki_params)
      redirect_to tubuyakis_path, notice: "tweetを編集しました！"
    else
      render :edit
    end
  end
  def destroy
    @tubuyaki.destroy
    redirect_to tubuyakis_path, notice:"tweetを削除しました！"
  end
private
def tubuyaki_params
  params.require(:tubuyaki).permit(:content)
end
def set_tubuyaki
  @tubuyaki = Tubuyaki.find(params[:id])
end
end
