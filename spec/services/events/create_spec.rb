require 'rails_helper'

RSpec.describe Events::Create do
  let!(:valid_params) do
    {
        issue: {
            number: Faker::Number.number(1),
            title: Faker::Lorem.sentence,
            id: Faker::Lorem.characters(5)
        },
        event: {
            action: 'create'
        }
    }
  end

  let!(:invalid_params) do
    {
        issue: {
            number: Faker::Number.number(1),
            title: nil
        },
        event: {
            action: 'create'
        }
    }
  end


  subject(:create_event_service) do
    described_class.new(valid_params)
  end

  specify do
    create_event_service.call
    expect(create_event_service.success?).to be(true)
  end
end
