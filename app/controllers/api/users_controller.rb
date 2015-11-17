class Api::UsersController < ApiController

  before_action :authenticated?

  def index

    return permission_denied_error unless condition_met
    users = User.all
    render json: users, each_serializer: Userserializer
  end

  private

  def condition_met
    true
  end
end
