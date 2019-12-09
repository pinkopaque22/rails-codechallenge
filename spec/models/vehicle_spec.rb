require "rails_helper"


RSpec.describe "Vehicle" do
  context "no argument create" do
    it 'raise_error' do   #
      expect { Vehicle.create! }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end
end
