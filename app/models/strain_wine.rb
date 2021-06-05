class StrainWine < ApplicationRecord
  belongs_to :strain
  belongs_to :wine
end
