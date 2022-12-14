# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ServerHelper do
  describe 'check result function' do
    it 'good' do
      expect(ServerHelper.result_array([1, 2, 3, 4, 2, 3, 5, 4, 6, 7, 4, 8, 9, 2, 2, 4, 6])[0]).to eq('1 2 3 4 2 3 5 4 6 7 4 8 9 2 2 4 6')
    end
    it 'zero value' do
      expect(ServerHelper.result_array([1, 2, 3, 4, 2, 3, 5, 4, 6, 7, 4, 8, 9, 2, 2, 4, 6])[1]).to eq('1 2 3 4, 2 3 5, 4 6 7, 4 8 9, 2 2 4 6')
    end
    it 'invalud value' do
      expect(ServerHelper.result_array([1, 2, 3, 4, 2, 3, 5, 4, 6, 7, 4, 8, 9, 2, 2, 4, 6])[2]).to eq('1 2 3 4')
    end
  end
end
