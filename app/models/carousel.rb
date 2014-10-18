class Carousel < ActiveRecord::Base
  validates :title, presence: true,
                    uniqueness: true,
                    length: { in: 3..50 }

  scope :order_by_id,  -> { order(:id) }
  scope :only_visible, -> { where(visible: true) }

  #Tells rails to use this uploader for this model.
  mount_uploader :image, ImageUploader   
end
