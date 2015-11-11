class Evento < ActiveRecord::Base
  self.per_page = 2

  belongs_to :usuario
  # 1280 x 720 (16:9)
  # 1280 x 1280
  has_attached_file :imagem,
    styles: { carousel: "1280x300#",
              detalhe: "320x180#",
              thumb: "160x90#" }
  validates_attachment :imagem,
    content_type: {
      content_type: "image/jpeg",
      content_type: "image/png",
    },
    less_than: 5.megabytes


end
