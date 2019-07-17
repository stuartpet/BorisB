# frozen_string_literal: true

require 'bike'

describe Bike do
  it { is_expected.to respond_to(:working?) }

  describe '#bike' do
    it 'can be reported broken' do
      subject.report_broken
      expect(subject).to be_broken
    end
  end
end
