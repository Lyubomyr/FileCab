# == Schema Information
#
# Table name: bills
#
#  id          :integer          not null, primary key
#  amount_due  :float
#  date_paid   :date
#  amount_paid :float
#  paid_mode   :integer
#  status      :integer
#  token       :string(255)
#  note        :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'spec_helper'

describe Bill do
  pending "add some examples to (or delete) #{__FILE__}"
end
