class Word < ActiveRecord::Base
  validates :word, presence: true

  def self.find_all_anagrams(input)
    anagrams = []
    all_words = Word.all
    all_words.each do |obj|
      if obj.word.split("").sort.join("") == input.split("").sort.join("")
        anagrams << obj.word
      end
    end
    return anagrams
  end

end