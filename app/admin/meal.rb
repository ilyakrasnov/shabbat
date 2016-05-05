ActiveAdmin.register Meal do
  permit_params :name,
      items_attributes: [:id, :name, :_destroy]

  show do
    attributes_table do
      row  :name
    end

    panel 'Items' do
      table_for meal.items do
       column :name
       column :description
       column :responsible
      end
    end
  end

  form do |f|
    f.inputs 'Details' do
     f.input :name
    end

    f.inputs 'Items' do
      f.has_many :items do |i|
        i.input :name
        i.input :description
        i.input :responsible
      end
    end
    f.actions
  end
end


