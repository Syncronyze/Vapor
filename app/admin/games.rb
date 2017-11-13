ActiveAdmin.register Game do
  config.sort_order = 'title_asc'

  permit_params :name, :description, :price, :discount, :release_date, genre_ids: []

  index do
  	selectable_column
  	id_column
  	column :name
  	column :description
  	column :price
  	column :discount
  	column :release_date
  	# column :game_developer
  	# column :game_publisher
  	actions
  end

  form do |form|
  	form.inputs do
	  		form.input :name
	  		form.input :description
	  		form.input :price
	  		form.input :discount
	  		form.input :release_date
	  		# form.input :game_developer
	  		# form.input :game_publisher
	  		form.input :genre_ids, label: 'Genre(s)', as: :check_boxes, collection: Genre.all
		end
		form.actions
	end
end