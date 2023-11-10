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

end
