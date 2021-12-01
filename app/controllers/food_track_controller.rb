class FoodTrackController < ApplicationController
    #before_action :force_json, only: :search
    def index
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
      @foods = FoodFact.ransack(name_cont: params[:q]).result(distinct: true).limit(10)
  
      if params["food_track"].present?
        if params["food_track"]["food_id"].present?
          FoodTrack.create(user_id: current_user.id, food_fact_id: params["food_track"]["food_id"])
        end
      end
    end
  
    def show
      if params[:date].present?
        ids = FoodTrack.where("Date(created_at) = ?", params[:date]).pluck(:food_fact_id)
        @food_added = FoodFact.find(ids)
      end
    end
  
    private
  
    # def force_json
    #   request.format = :json
    # end
  
  end