class Coupon < ActiveRecord::Base
  def amount=(value)
    value = value.to_f * 100
    write_attribute(:amount, value)
  end
  
  def amount
    read_attribute(:amount) / 100.0
  end
end
