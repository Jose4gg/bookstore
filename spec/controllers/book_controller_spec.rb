require "rails_helper"

RSpec.describe BooksController, type: :controller do
  before {
      @author = Author.create(first_name: "Example", last_name: "Example")
      @book1 = Book.create(title: "Kindom of Magic", short_description: "Example", price: 20, author: @author, isbn: "9781472154668")
      @book2 = Book.create(title: "Diamond Hunter", short_description: "Example", price: 20, author: @author, isbn: "9780395647806")
      @book3 = Book.create(title: "Hope", short_description: "Example", price: 20, author: @author, isbn: "9780399590504")
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
      expect(response).to be_successful
      expect(JSON.parse(response.body).length).to eq(2)
    end
  end

  describe "GET find_by_isbn" do
    it "returns successful" do 
      get :find_by_isbn, :params => { :isbn => "9780395647806" }
      expect(response).to be_successful
      expect(JSON.parse(response.body)).to_not be(nil)
    end

    it "returns not found" do 
      get :find_by_isbn, :params => { :isbn => "notfound" }
      expect(JSON.parse(response.body)).to be(nil)
    end
  end


  describe "GET by id" do 
    it "returns successful" do 
      get :show, :params => { :id => @book2.id }
      expect(response).to be_successful
      expect(JSON.parse(response.body)).to_not be(nil)
    end
    
    it "returns nil" do 
      get :show, :params => { :id => 233133 }
      expect(JSON.parse(response.body)).to be(nil)
    end
  end

  describe "POST /books" do
    it "returns succesful" do 
      post :create, params: { book: { title: "Hope II", short_description: "Example", price: 30, author_id: @author.id, isbn: "9780008151621" }}
      expect(response).to be_successful
    end
    
    it "fails" do 
      post :create, params: { book: {  short_description: "Example", price: 30, author_id: @author.id, isbn: "9780008151621" }}
      expect(response).to_not be_successful
    end
  end
 
  describe "POST /books" do
    it "returns succesful" do 
      post :create, params: { book: { title: "Hope II", short_description: "Example", price: 30, author_id: @author.id, isbn: "9780008151621" }}
      expect(response).to be_successful
    end
    
    it "fails" do 
      post :create, params: { book: {  short_description: "Example", price: 30, author_id: @author.id, isbn: "9780008151621" }}
      expect(response).to_not be_successful
    end
  end

  describe "DELETE /books/1" do
    it "destroy succesful" do 
      id = @book1.id

      delete :destroy, params: { id: id }
      expect(Book.find_by_id(id)).to be(nil)
    end
  end


end


