# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  position   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :name, :position

  validates :name, presence: true

  def self.reorder(list)
    self.all.each do |user|
      user.update_attribute :position, list.index(user.id.to_s) + 1
    end
  end
end
