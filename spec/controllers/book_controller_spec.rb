require "rails_helper"

RSpec.describe BooksController, type: :controller do
  before {
      @author = Author.create(first_name: "Example", last_name: "Example")
      @book1 = Book.create(title: "Kindom of Magic", short_description: "Example", price: 20, author: @author, isbn: "9781432868765")
      @book2 = Book.create(title: "Diamond Hunter", short_description: "Example", price: 20, author: @author, isbn: "9781432868765")
      @book3 = Book.create(title: "Hope", short_description: "Example", price: 20, author: @author, isbn: "9781432868765")
  }

  describe "GET index" do
    it "returns a successful response" do
      get :index
      expect(response).to be_successful
      expect(JSON.parse(response.body).length).to eq(3)
    end
    
    it "returns based on title full search" do
      get :index, :params => { :title => "Magic" }
      expect(response).to be_successful
      expect(JSON.parse(response.body).length).to eq(1)
    end
    
    it "returns based on id" do
      get :index, :params => { :ids => "#{@book1.id},#{@book2.id}" }
      puts response.body
      expect(response).to be_successful
      expect(JSON.parse(response.body).length).to eq(2)
    end
  end

  describe

end


