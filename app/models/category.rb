class Category < ActiveHash::Base
 self.data = [
   { id: 1, name: '--' },
   { id: 2, name: '専門家' },
 ]
  include ActiveHash::Associations
  has_many :articles
end
