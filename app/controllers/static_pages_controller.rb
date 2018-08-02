class StaticPagesController < ApplicationController
  before_action :logged_in_user, only: :secret
end
