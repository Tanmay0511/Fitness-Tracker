class DashboardController < ApplicationController
  def index
    @all_user = User.all
  end
end
