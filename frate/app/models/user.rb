class User < ApplicationRecord
    has_many :friended_users, foreign_key: :friend_id, class_name: 'Match'
    has_many :friendes, through: :friended_users
    has_many :friending_users, foreign_key: :friende_id, class_name: 'Match'
    has_many :friends, through: :friending_users
    #has_secure_password

    def not_friends
        @friending = self.friendes
        @users = User.all
        @not_friending = @users - @friending
    end
    
end
