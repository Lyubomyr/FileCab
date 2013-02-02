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

class Document < ActiveRecord::Base
  belongs_to :client
  belongs_to :cpa
  belongs_to :bill

  mount_uploader :name, NameUploader

  validates :name, presence: true

end
