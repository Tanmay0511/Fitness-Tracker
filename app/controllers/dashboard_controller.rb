class DashboardController < ApplicationController
  def index
    @user = User.all
    @all_user = User.all
  end
end
