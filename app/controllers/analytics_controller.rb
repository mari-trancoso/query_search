class AnalyticsController < ApplicationController
  before_action :set_user_ip

  def index
    @search_queries = Query.where(user_ip: @user_ip)
                           .group(:query)
                           .order('COUNT(id) DESC')
                           .count(:id)

    @queries_by_ip = Query.group(:user_ip)
                          .order('COUNT(id) DESC')
                          .count(:id)
  end

  private

  def set_user_ip
    @user_ip = request.remote_ip
  end
end
