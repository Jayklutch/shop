class UserController < ApplicationController
  @users=Users.all
  @admin=Users.find_by
end
