ActiveAdmin.register Booking do
  permit_params :board_id, :booked_by, :booking_time, :email, :order_comment

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :booked_by, :booking_time, :board_id, :email
  #
  # or
  #
  # permit_params do
  #   permitted = [:booked_by, :booking_time, :board_id, :email]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
