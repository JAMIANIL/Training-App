ActiveAdmin.register Country do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :players_representing
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :players_representing]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
