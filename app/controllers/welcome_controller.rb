class WelcomeController < ApplicationController
  def index
    @leaders = LeaderFacade.get_leaders()
  end
end
