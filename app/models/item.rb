class Item < ApplicationRecord
  belongs_to :list
  before_save :default_values

  def default_values
    self.intend_to_purchase ||= false
    self.purchased ||= false
  end

end
