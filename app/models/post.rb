class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_attached_file :image, styles: {medium: "200x200", large: "1200x1200", thumb: "100x100#"}
validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
