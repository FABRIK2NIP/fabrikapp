class Print < ActiveRecord::Base

  mount_uploader :attachment, AttachmentUploader #dis à Rails d'utiliser cet uploader pour ce model.
  validates :name, presence: true # Make sure the owner's name is present.

end
