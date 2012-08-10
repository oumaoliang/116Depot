class NewsStoreController < ApplicationController
    skip_before_filter :authorize
  def index
    @news=News.all
  end

end
