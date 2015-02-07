require "spec_helper"

describe Time do
  describe '.today' do
    it 'returns a string of the current day"s date' do
      expect(Time.today).to eq("2015-2-6")
    end
  end
end
