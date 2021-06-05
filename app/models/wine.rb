class Wine < ApplicationRecord
    has_many :wine_strains
    has_many :strains, through: :wine_strains, dependent: :destroy
    validates :name, presence: true
    has_many :oenologist_wines, dependent: :destroy
    has_many :oenologist, through: :oenologist_wines, dependent: :destroy
    accepts_nested_attributes_for :strains, reject_if: :all_blank, allow_destroy: true

    def addStrainPercent(percents)
        percents.each do |strain_id, percentage|
            if percentage != ''
                temp_strain = self.wine_strains.where(strain_id: strain_id).first
                temp_strain.percentage = percentage
                temp_strain.save
            end
        end
    end

    def strain_names_and_percentages
        list = []
        arra_final = []
        wine_strains.map do |ws|
           list.push [ws.strain.name, ws.percentage] 
        end
        list.sort_by{ |strain| strain[0] }.map do |cepa|
            "#{cepa[0]} (#{cepa[1]})%"
        end.join(', ')
    end

    def oenologist_name
        oenologist.map do |wine_oenologist|
            wine_oenologist.name
        end.join(', ')
    end
    
end
