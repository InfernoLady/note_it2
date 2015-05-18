class Note < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
	attr_accessor :category_id
	
	default_scope -> { order(created_at: :desc) }
end
