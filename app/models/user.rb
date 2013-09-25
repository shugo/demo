class User < ActiveRecord::Base
  def full_name
    if first_name.blank?
      raise RuntimeError, "no first name"
    end
    if family_name.blank?
      return first_name
    else
      family_name + " " + first_name
    end
  end
end
