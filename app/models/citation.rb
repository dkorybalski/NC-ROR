class Citation < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :nick, presence: true,
                    length: { minimum: 3 }

end
