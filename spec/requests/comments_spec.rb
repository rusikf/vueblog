require 'rails_helper'

RSpec.describe 'Comments API', type: :request do
  let!(:post1) { create(:post) }

  describe 'POST /comments' do
    let(:p) do
      {
        data: {
          type: 'comments',
          attributes: { content: 'Some content' },
          relationships: {
            post: {
              data: { type: 'posts', id: post1.id }
            }
          }
        }
      }.to_json
    end

    before do
      post "/posts/#{post1.id}/comments", params: p, headers: headers
   end

    it 'create comment' do
      expect(json_attrs['content']).to eq('Some content')
    end
  end
end

