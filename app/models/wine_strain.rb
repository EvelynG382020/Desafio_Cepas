class WineStrain < ApplicationRecord
  belongs_to :strain
  belongs_to :wine
end
