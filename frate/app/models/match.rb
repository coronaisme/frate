class Match < ApplicationRecord
    belongs_to :friend, class_name: 'User'
    belongs_to :friende, class_name: 'User'
end
