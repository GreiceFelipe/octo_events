require 'rails_helper'

RSpec.describe "Events", type: :request do

  let!(:event) { create(:event) }
  describe '#Index events /issues/:id/events ' do
    before { get issue_events_path(event.issue.number), headers: { 'Accept': 'application/json' } }

    it 'should respond with correct http response' do
      expect(response).to have_http_status(200)
    end

    it 'should respond with correct json response' do
      expect(json_response.size).to eq(1)
      expect(json_response[0][:issue_id]).to eq(event.issue.id)
    end

  end
end
