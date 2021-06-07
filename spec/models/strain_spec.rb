require 'rails_helper'

RSpec.describe Strain, type: :model do
  it 'strains cant have the same name' do
      strain = Strain.create(name: 'Carmenere')
      expect(strain).to be_invalid
  end
  it "strain is invalid with a blank name" do
      strain = Strain.new(name: "")
      expect(strain).to be_invalid
  end
  it 'strain name cant be Carmenere' do
      strain = Strain.new(name: 'Carmenere')
      expect(strain).to be_invalid
  end

  it 'strain is invalid without name' do
      strain = Strain.new(name: nil)
      expect(strain).to be_invalid
  end
end