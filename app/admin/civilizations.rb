ActiveAdmin.register Civilization do
  permit_params :name, :picture_url, :unit_ids => []

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :picture_url]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  form do |f|
    inputs do 
      f.input :name
      f.input :picture_url
      f.input :unit_ids, as: :tags, collection: Unit.all, display_name: :name
    end
    f.actions
  end
  
end
