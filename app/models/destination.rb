class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def avg_age
       ages = self.bloggers.map {|blogger|blogger.age}
               ages.sum / ages.count
    end

    def most_likes
        self.posts.sort_by do |post|
            post.likes
        end
    end 
end
