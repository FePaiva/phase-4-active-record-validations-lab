class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
  validate :clickbait?

#  def no_true_facts
#   if title.include? "True Facts"
#     erros.add(:title, "No more True Facts")
#   end

CLICKBAIT_PATTERNS = [
  /Won't Believe/i,
  /Secret/i,
  /Top \d/i,
  /Guess/i
]

def clickbait?
  if CLICKBAIT_PATTERNS.none? { |pat| pat.match title }
    errors.add(:title, "must be clickbait")
  end
end

end
