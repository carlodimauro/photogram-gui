class UsersController < ApplicationController
  def index

    @list_of_users = User.all.order({:username => :asc})

    render({:template => "usertemplates/index"})
  end

  def show
    input_user = params.fetch("useridpath")
    @currentuser = User.where(:username => input_user ).first

    if @currentuser == nil
      redirect_to("/404")
    else
      render({:template => "usertemplates/show"})
    end

  end

def update
  user = params.fetch("useridpath")
  current_user_record = User.where({:id => user }).first
  current_user_record.username = params.fetch("query_username")
  current_user_record.save
  redirect_to("/users/#{current_user_record.username}")

end


end
