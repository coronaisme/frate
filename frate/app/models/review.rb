class Review < ApplicationRecord
    belongs_to :reviewer, class_name: 'User'
    belongs_to :reviewee, class_name: 'User'
    #reviewee is unique relative to scope of reviewer


    
    def not_reviewed
        @reviewing = self.reviewees
        @users = User.all
        @not_reviewing = @users - @reviewing
    end


end