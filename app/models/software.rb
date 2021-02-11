class Software < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :hardware

  validates :title, :string, presence: true
  validates :explanation, :text, presence: true
  validates :hardware_id, numericality: { other_than: 1 }
end
