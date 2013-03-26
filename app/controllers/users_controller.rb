# encoding: utf-8
class UsersController < ApplicationController
  def index
    @users = User.order(:position)
  end

  def reorder
    User.reorder params['ordered_users']
    render nothing: true
  end
end
