require "rails_helper"

RSpec.describe ArticlesController do
  render_views

  let(:valid_attributes) {
    { title: 'Test Article', author: 'Test Author', body: 'This is a test article body.' }
  }

  let!(:article) { Article.create! valid_attributes }

  describe "GET index" do
    it "responds with status ok" do
      get :index
      expect(response).to have_http_status(:ok)
    end

    it "gets index without a query param" do
      get :index
      expect(response.body).to include(article.title)
    end

    it "filters articles based on query" do
      get :index, params: { query: 'Test' }
      expect(response.body).to include(article.title)
    end
  end
end
