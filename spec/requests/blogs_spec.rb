require 'rails_helper'

RSpec.describe Blog, type: :request do
  let!(:blog) { create_list(:blog, 10) }
  let(:blog_id) { blog.first.id }

  # describe 'POST /blogs' do
  #   context 'when the request is valid' do
  #     before do
  #       post '/blogs', params: blogs
  #     end
  #
  #     it 'returns status code 201' do
  #       expect(response).to have_http_status(201)
  #     end
  #   end
  #
  # end

  describe 'GET /blogs' do
    before { get '/blogs' }

    it 'returns status code 200' do
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /blogs:id' do

  end

  describe 'GET /index' do
    it 'responds successfully with an HTTP 200 status code' do
      get '/blogs'
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it 'renders the index template' do
      get '/index'
      expect(response).to render_template('index')
    end
  end

  describe 'DELETE /blog/:id' do
    before { get "/blog/#{blog_id}" }

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

end
