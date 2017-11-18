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

	def self.with_all_genres(genre_ids)
		if genre_ids.empty?
			return Game.all
		end

		select(:id).distinct.
		joins(:genres).
		where('genres.id' => genre_ids).
		group(:id).
		having('count(genres.id) = ?', genre_ids.length)
	end

end
