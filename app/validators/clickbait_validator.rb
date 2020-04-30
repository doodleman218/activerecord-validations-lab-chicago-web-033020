class ClickbaitValidator < ActiveModel::Validator
#   def validate(post)
#     validates :title, inclusion ("Won't Believe"||"Secret"||"Top"||"Guess")
#       post.errors[:title] << "Not enough clickbait!"
#     end
#   end
# end

def validate(post)
  unless post.title.present? && post.title.include?("Won't Believe"||"Secret"||"Top"||"Guess")
   post.errors[:title] << "Not enough clickbait!"
 end
end
end