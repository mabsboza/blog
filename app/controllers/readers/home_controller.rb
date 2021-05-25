module Readers
  class HomeController < ReadersController
    def index
      @posts = Post.published.more_recently_published
    end
  end
end
