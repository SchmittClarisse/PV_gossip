class Post < ApplicationRecord
    #belongs_to :user
    #has_many :comments, dependent: :destroy

    #validates :title,
    #presence: true
    
  
    #validates :title, 
      #presence: {message:"Le titre est obligatoire"}, 
      #length:   {minimum: 2,maximum: 30, message:"Le titre doit faire entre 2 et 30 caractères"}
      
    #validates :content,
      #presence: {message:"Le potin est obligatoire"},
      #length:   {minimum: 10, message:"Le potin doit faire minimum 10 caractères"}
  end