class Shout < ActiveRecord::Base
  belongs_to :user
  belongs_to :subject, polymorphic: true, dependent: :destroy
  validates :user_id, presence: true

  def body=(new_body)
    self[:body] = new_body.upcase
  end

end
