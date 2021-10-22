ActiveAdmin.register Board do
  permit_params :board_number, :board_seats, :board_bookings, :booked

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :board_number, :board_seats, :board_bookings, :booked
  #
  # or
  #
  # permit_params do
  #   permitted = [:board_number, :board_seats, :board_bookings, :booked]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
