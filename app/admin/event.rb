ActiveAdmin.register Event do
  permit_params :name,
      meals_attributes: [:id, :name, :_destroy]

  show do
    attributes_table do
      row  :name
    end

    panel 'Meals' do
      table_for event.meals do
       column :name
      end
    end
  end

  form do |f|
    f.inputs 'Details' do
     f.input :name
    end

    f.inputs 'Meals' do
      f.has_many :meals do |m|
        m.input :name
      end
    end
    f.actions
  end
end


