ActiveAdmin.register Car do

  permit_params :lat, :lng, :driver_name

  form do |f|
    f.inputs "Fields" do
      f.input :driver_name
      f.input :lat
      f.input :lng
    end

    f.inputs "Items" do
      render "groups", groups: resource.line_item_groups
    end

    f.inputs "Map" do
      render "map"
    end

    f.actions
  end

end
