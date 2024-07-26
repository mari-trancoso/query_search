require 'rails_helper'

RSpec.describe AnalyticsController, type: :controller do
  render_views

  describe "GET #index" do
    before do
      @request.remote_ip = '123.456.789.10'
      @query1 = Query.create(query: "Rails", user_ip: '123.456.789.10')
      @query2 = Query.create(query: "RSpec", user_ip: '123.456.789.10')
      @query3 = Query.create(query: "Rails", user_ip: '123.456.789.10')
    end

    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to have_http_status(:ok)
    end

    it "includes search queries in the response body" do
      get :index
      expect(response.body).to include("Rails")
      expect(response.body).to include("RSpec")
    end

    it "includes the correct counts for search queries" do
      get :index
      expect(response.body).to include("2")
      expect(response.body).to include("1")
    end

    it "includes the user IP in the response body" do
      get :index
      expect(response.body).to include('123.456.789.10')
    end
  end
end
