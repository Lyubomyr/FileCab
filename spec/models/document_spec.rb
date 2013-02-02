# == Schema Information
#
# Table name: documents
#
#  id          :integer          not null, primary key
#  client_id   :integer
#  cpa_id      :integer
#  bill_id     :integer
#  name        :string(255)
#  size        :float
#  by          :integer
#  year        :integer
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'spec_helper'

describe Document do
  pending "add some examples to (or delete) #{__FILE__}"
end
