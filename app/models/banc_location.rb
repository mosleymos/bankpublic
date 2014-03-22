# == Schema Information
#
# Table name: banc_locations
#
#  id          :integer          not null, primary key
#  n_rue       :integer
#  adress      :text
#  code_postal :integer
#  ville       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class BancLocation < ActiveRecord::Base
end
