class AnalyticsController < ApplicationController
  before_action :authorized, except: [:new, :create]
  before_action :current_user, except: [:new, :create]
  
  def index
  end
end
