class User < ActiveRecord::Base
  validates :confirmed, acceptance: true
  validates :completed, acceptance: true

  after_validation :confirming

  private

  def confirming
    self.confirmed = errors.include?(:confirmed) && errors.size == 1 ? '1' : ''
    clear_confirming_errors
  end

  def clear_confirming_errors
    errors.delete :confirmed
    errors.delete :completed
  end
end
