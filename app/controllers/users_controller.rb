class UsersController < ApplicationController
  def index
    @users = User.all
    @firsts = User.find([1,2,3,4,5,6,7])
    @lasts = User.find([94,95,96,97,98,99,100])
    @array_firsts = []
    @firsts.each do |user|
      @array_firsts.push(user.age)
    end
    @array_lasts = []
    @lasts.each do |user|
      @array_lasts.push(user.age)
    end
  end
end
