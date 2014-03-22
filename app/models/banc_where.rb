# == Schema Information
#
# Table name: banc_wheres
#
#  id          :integer          not null, primary key
#  n_rue       :integer
#  adress      :text
#  code_postal :integer
#  ville       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class BancWhere < ActiveRecord::Base
end
