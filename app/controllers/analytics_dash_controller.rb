class AnalyticsDashController < ApplicationController
  def index
    @weight_log = WeightLog.pluck('created_at::date', :weight)
    @food_track = FoodTrack.where(user_id: current_user.id)
    @food_track = @food_track.group_by{|food| food.created_at.to_date}
    food_data = @food_track.to_a
    @arr = []
    food_data.each do |food|
      sum = 0
      ids = food.second.pluck(:food_fact_id)
      ids.each do |i|
        sum += FoodFact.find(i).calories
      end
      @arr.append([food.first, sum])
    end
  end
end
