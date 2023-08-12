class WeaponsController < ApplicationController
  def index
    @user_name = params[:user_name]
    return unless @user_name.present?

    @recommended_weapon = random_weapon
    render :show
  end

  private

  def random_weapon
    random_offset = rand(Weapon.count)
    Weapon.offset(random_offset).first
  end
end
