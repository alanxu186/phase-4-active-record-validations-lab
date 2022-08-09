class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: [Fiction, Non-Fiction]

    validate must_have_click_baity_title

    def must_have_click_baity_title
        if title === "Won't Believe" && "Secret" && "Top [number]" && "Guess"
            error.add(:title, "Sorry your title is not clickbaity enough")
        end
    end
end
