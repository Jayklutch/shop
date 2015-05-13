class UserController < ApplicationController
def index
    @users=User.all
    @promo=Item.all
#  @admin=User.find_by
end
end
