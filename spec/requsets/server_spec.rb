# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ServerController, type: :controller do
  describe 'check response format' do
    it 'should be xml' do
      get 'result', params: { num: '[1 2 3 4 2 3 5 4 6 7 4 8 9 2 2 4 6]', format: :xml }
      expect(response.content_type).to eq('application/xml; charset=utf-8')
    end
  end
end
