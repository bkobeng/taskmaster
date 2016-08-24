class Listing < ActiveRecord::Base
    belongs_to :category
    belongs_to :subcategories
    belongs_to  :user
    validates_presence_of :name
    validates_presence_of :description
    validates_presence_of :city
    validates_presence_of :state
    validates_presence_of :contact
    validates_presence_of :price
    geocoded_by :full_address               # can also be an IP address
    after_validation :geocode

    def full_address
      [ city, state,zipcode].compact.join(', ')
    end
   def self.search(params)
     listings=Listing.where(category_id:params[:catagory].to_i)
     listings=Listing.where("name LIKE ? or description LIKE ?","%#{params[:search]}%","%# {params[:search]}%") if params [:search].present?
     listings=listings.near(params[:location],20)if params[:location].present?
     listings
   end
end