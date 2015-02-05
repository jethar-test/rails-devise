class Syllabus < ActiveRecord::Base
	belongs_to :course
	validates :code , presence: true,  uniqueness: true
	validates :name , presence: true
	validates :semester , presence: true, numericality: { only_integer: true }	
end