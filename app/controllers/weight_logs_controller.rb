
class WeightLogsController < ApplicationController
    def index
      @user = current_user
      @weight_logs = WeightLog.where(user_id: current_user.id).order(created_at: "DESC") if @user.present?
  
      if params["weight_log"].present? && params["weight_log"]["weight"]&.present?
        weight = params["weight_log"]["weight"].to_f
        notes = params["weight_log"]["notes"] if params["weight_log"]["notes"].present?
        WeightLog.create(weight: weight, user_id: @user.id, notes: notes)
      end
    end
  end