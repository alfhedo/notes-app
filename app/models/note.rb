class Note < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

  def self.search_by_title(keywords)
    keywords = keywords.gsub(/[%_\\]/, '\\\\\\&')
    keywords.split.reduce(Note) do |klass, word|
      klass.where "UPPER(title) LIKE (?) ESCAPE '\\'", "%#{word.upcase}%"
    end.order(:title).limit(2)
  end
end
