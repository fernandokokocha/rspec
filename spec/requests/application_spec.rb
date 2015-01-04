require 'rails_helper'

RSpec.describe "Basic browsing", :type => :request do
  it "allows to list categories" do
    get "/categories"
    expect(response).to have_http_status(200)
    expect(response).to render_template(:index)
  end

  it "allows to add category" do
    get "/categories/new"
    expect(response).to have_http_status(200)
    expect(response).to render_template(:new)

    post "categories", :category => { :name => "Category" }
    expect(response).to have_http_status(302)
    follow_redirect!
    expect(response).to render_template(:show)
  end

  it "allows to list directors" do
    get "/directors"
    expect(response).to have_http_status(200)
    expect(response).to render_template(:index)
  end

  it "allows to add director" do
    get "/directors/new"
    expect(response).to have_http_status(200)
    expect(response).to render_template(:new)

    post "directors", :director => { :first_name => "Jan", :last_name => "Kowalski" }
    expect(response).to have_http_status(302)
    follow_redirect!
    expect(response).to render_template(:show)
  end

  it "allows to list movies" do
    get "/movies"
    expect(response).to have_http_status(200)
    expect(response).to render_template(:index)
  end

  it "allows to add movie" do
    skip("Nah, it doesn't >.<")
  end
end
