# frozen_string_literal: true

require 'rails_helper'

describe API::V1::Common::Questions::Index, type: :request do
  describe 'get all available questions for character exam' do
    let!(:question_1) { create(:question, priority: 1) }
    let!(:question_2) { create(:question, priority: 2) }
    let!(:question_3) { create(:question, priority: 3) }

    subject(:request) do
      get '/api/v1/common/questions'
      response
    end

    it { expect(subject.status).to eq(200) }

    describe 'returned questions' do
      subject(:body) do
        JSON.parse(request.body)
      end

      it { expect(body.length).to be(3) }

      describe 'question attributes' do
        let!(:question) { body.first }

        it { expect(question['id']).to eq(question_1.id) }
        it { expect(question['high']['question']).to eq(question_1.question_high) }
        it { expect(question['high']['example']).to eq(question_1.example_high) }
        it { expect(question['low']['question']).to eq(question_1.question_low) }
        it { expect(question['low']['example']).to eq(question_1.example_low) }
        it { expect(question['priority']).to eq(1) }
        it { expect(question['question_type']).to eq(question_1.question_type) }
      end
    end
  end
end
