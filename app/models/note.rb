class Note < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

  def self.search_by_title(keywords)
    note = Note.where("UPPER(title) LIKE (?)", keywords.upcase)
  end
end
