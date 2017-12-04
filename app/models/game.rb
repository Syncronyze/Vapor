class Game < ApplicationRecord
	# has_many :game_publishers, dependent: :destroy
	# has_many :game_developers, dependent: :destroy
	#has_many :game_creators

	# has_many :owned_games, dependent: :destroy
	# has_many :accounts, through: :owned_games

	# has_many :orders
	# has_many :orders, through: :order_items

	has_many :game_genres, dependent: :destroy
	has_many :genres, through: :game_genres

	validates :name, :price, :release_date, presence: true
	validates :name, uniqueness: true
	
	mount_uploader :image, ImageUploader

	def self.with_genres(genre_ids, searchterm)
		games = Game.all

		if(!genre_ids.empty?)
			game_ids = genre_ids
						.map { |id| Game.joins(:genres).where('genres.id' => id) }
						.map { |relation| relation.pluck(:id).to_set }
						.inject(:intersection).to_a

			games = where(id: game_ids)
		end

		if(!searchterm.nil?)
			games.where('name LIKE ? OR description LIKE ?', "%#{searchterm}%", "%#{searchterm}%").order(:name)
		else
			games.order(:name)
		end
	end
end
