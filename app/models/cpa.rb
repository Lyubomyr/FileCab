# == Schema Information
#
# Table name: cpas
#
#  id                 :integer          not null, primary key
#  email              :string(255)
#  crypted_password   :string(255)
#  password_salt      :string(255)
#  name               :string(255)
#  capacity           :integer
#  allow_client       :boolean
#  persistence_token  :string(255)
#  login_count        :integer
#  failed_login_count :integer
#  last_request_at    :datetime
#  current_login_at   :datetime
#  last_login_at      :datetime
#  current_login_ip   :string(255)
#  last_login_ip      :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#

class Cpa < ActiveRecord::Base
  has_many :clients
  has_many :documents

  acts_as_authentic
end
