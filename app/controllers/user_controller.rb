class UserController < ApplicationController
def index
    @users=User.all
#  @admin=User.find_by
end
end
