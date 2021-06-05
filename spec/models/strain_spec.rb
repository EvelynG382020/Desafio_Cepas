require 'rails_helper'

RSpec.describe Strain, type: :model do
  it 'strains cant have the same name' do
      Strain.create(name: 'Carmenere')
      expect(Strain.new(name: 'Carmenere')).to_not be_valid
  end
  it 'strain name cant be blank' do
      expect(Strain.new(name: '')).to_not be_valid
      expect(Strain.new(name: 'Carmenere')).to be_valid
      expect(Strain.new(name: nil)).to_not be_valid
  end
end
