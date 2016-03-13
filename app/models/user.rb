class User < ActiveRecord::Base
  has_many :comments
  has_one :challenge
  belongs_to :accountability_group
  has_many :progress_reports
end
