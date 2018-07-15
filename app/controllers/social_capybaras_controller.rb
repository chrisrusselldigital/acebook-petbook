class SocialCapybarasController < ApplicationController
  def new
    @social_capybara = SocialCapybara.new
  end

  def index
    @social_capybara = SocialCapybara.new
    @social_capybaras = SocialCapybara.all
  end

  def create
    @social_capybara = SocialCapybara.create(member: current_user.firstname)
    redirect_to social_capybaras_path
  end

  private

  # def social_capybaras_params
  #   params.require(:social_capybaras).permit(:user_id)
  # end
end
