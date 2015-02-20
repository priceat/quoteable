class Quote < ActiveRecord::Base
  validates :saying, :presence => true, :length  => { :maximum => 140, :minimum => 3 }
  validates :author, :presence => true, :length => { :maximum => 50, :minimum => 3 }
  belongs_to :category

  def unique_tag
    abbr = []
    self.author.split(" ").collect do |sub_string|
      abbr << sub_string[0]
    end
    abbr.join + '#' + self.id.to_s
  end
end
