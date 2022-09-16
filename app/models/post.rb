class Post < ApplicationRecord
    # validar campos
    validates :title, :description, presence: true
    validates :title, length: { minimum: 5, maximum: 50 }
    validates :description, length: { minimum: 10, maximum: 1000 }

    before_save do 
        self.title = self.title + " *Active Record Callbacks*"
    end
end
