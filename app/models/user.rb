class User < ApplicationRecord
    validates_format_of :name, :with => /\A[^0-9`!@#\$%\^&*+_=]+\z/
    validates :name, presence: true,
                     numericality:false,
                     confirmation: { case_sensitive: false },on: :create
    validates :age, presence: true , 
                     numericality: true,
                     length: {minimum: 1, maximum: 2} , on: :create
    validates :email, confirmation: { case_sensitive: false },
                     uniqueness: true , format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ },on: :create
    validates :mobile, presence: true , 
                     numericality: true, 
                     length: {minimum: 10, maximum: 12} ,on: :create
    validates :password, presence: true , length: {minimum: 8} , on: :create   
end
