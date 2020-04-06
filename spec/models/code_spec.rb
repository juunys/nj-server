require 'rails_helper'

RSpec.describe Code, type: :model do
	before(:all) do
		@code = create(:code)
	end

	context 'validation tests' do

		it "is valid with valid attributes" do
		    expect(@code).to be_valid
		end

		it "has a unique sequencial_code" do
		    code2 = build(:code, sequencial_code: 1)
		    expect(code2).to_not be_valid
		end
	end
end
