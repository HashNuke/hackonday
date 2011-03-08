class InviteRequest < ActiveRecord::Base
  validates_format_of :email, :with=>/\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}\z/, :on=>:create
  validates_uniqueness_of :email, :message=>"You are already in our list. We'll notify you when signups are open."
end
