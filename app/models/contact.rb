class Contact < ApplicationRecord
 validates :email, presence: true
 validates :message, presence: true
 validates :email, uniqueness: true
end
