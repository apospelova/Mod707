ActiveAdmin.register Order do

  permit_params :address, :phone, :payment, :distance, line_items_attributes: [
    :name, :weight, :size, {category_ids: []}
  ]

  form do |f|
    f.inputs "Details" do
      f.input :address
      f.input :phone
      f.input :payment
      f.input :distance

    end

    f.inputs "Line Items" do
      f.fields_for :line_items do |fli|
        fli.input :name
        fli.input :weight
        fli.input :size
        fli.input :category_names, input_html: { disabled: true }
      end
    end

    f.actions
  end

end
