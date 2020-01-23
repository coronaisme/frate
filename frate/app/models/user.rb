class User < ApplicationRecord
    has_many :friended_users, foreign_key: :friend_id, class_name: 'Match'
    has_many :friendes, through: :friended_users
    has_many :friending_users, foreign_key: :friende_id, class_name: 'Match'
    has_many :friends, through: :friending_users

    has_many :reviewed_users, foreign_key: :reviewer_id, class_name: 'Review'
    has_many :reviewees, through: :reviewed_users
    has_many :reviewing_users, foreign_key: :reviewee_id, class_name: 'Review'
    has_many :reviews, through: :reviewing_users, source: :reviewee

    has_secure_password
    
  

    def not_friends
        @friending = self.friendes
        @users = User.all
        @not_friending = @users - @friending
    end

    def self.users_count
        User.all.count
    end

    def self.average_age
        average = 0.0
        User.all.each do |t|
            average += t.age
           
            end
        (average / User.all.count).round
    end



    def not_reviewed
        @reviewing = self.reviewees
        @users = User.all
        @not_reviewing = @users - @reviewing
    end
  

end
