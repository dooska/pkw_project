ActiveAdmin.register Constituency do
  permit_params :name, :voters, :used_ballots, :invalid_no_chose, :invalid_more_choices, :invalid_other, :voivodeship_id, :voivodeship
  #actions :all
  menu label: "Okręgi wyborcze"

  form  do |f|
    f.inputs "Okręgi" do
        f.input :name, label: "Numer "
    f.input :voters, label: "Liczba uprawnionych do głosowania"
    f.input :used_ballots, label: "Liczba kart do głosowania"
    f.input :invalid_no_chose, label: "Liczba głosów nieważnych"
      f.input :voivodeship, as: :radio, label: "Województwo"
  end
    f.actions
  end

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


end
