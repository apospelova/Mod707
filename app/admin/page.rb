ActiveAdmin.register Page do
  permit_params :title, :slug, :content, :published

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  index do
    column :id
    column :title
    column :content do |page|
      truncate strip_tags(page.content)
    end
    column :slug
    actions
  end


end
