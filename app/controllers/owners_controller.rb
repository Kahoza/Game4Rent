class OwnersController < ApplicationController

def update
  @owner.update(owner_params)
end

private

def owner_params
  params.require(:owner).permit(:first_name, :last_name, :email, :phone_number)
end
end
