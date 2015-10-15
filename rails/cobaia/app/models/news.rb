# encoding: UTF-8
class News < ActiveRecord::Base
  # has_attached_file :avatar, styles: { large: "600x600>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  has_attached_file :image, styles: { profile: "1280x200#", article: "320x180#" }, default_url: "/images/sem_imagem.jpg"
  validates_attachment :image,
    content_type: { content_type: ["image/jpeg", "image/png"] }
  validate :image_minimum_dimension


  private
  def image_minimum_dimension
    required_width  = 1280
    required_height = 720
    dimensions = Paperclip::Geometry.from_file(image.queued_for_write[:original].path)

    errors.add(:image, "Imagem deve ter uma largura mínima de #{required_width}px") unless dimensions.width >= required_width
    errors.add(:image, "Imagem deve ter uma altura mínima de #{required_height}px") unless dimensions.height >= required_height
  end
end
