class Ppso < ApplicationRecord
  has_many :phones, as: :office
  has_many :emails, as: :office
end
