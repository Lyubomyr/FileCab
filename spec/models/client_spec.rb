# == Schema Information
#
# Table name: clients
#
#  id                 :integer          not null, primary key
#  cpa_id             :integer
#  email              :string(255)
#  crypted_password   :string(255)
#  password_salt      :string(255)
#  first              :string(255)
#  last               :string(255)
#  dob                :date
#  address            :string(255)
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

require 'spec_helper'

describe Client do
  pending "add some examples to (or delete) #{__FILE__}"
end
