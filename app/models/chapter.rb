class Chapter < ActiveRecord::Base
  belongs_to :syllabus

  validates :number, presence: true, numericality: { only_integer: true }, uniqueness: {scope: :syllabus}
  validates :title, presence: true
end
