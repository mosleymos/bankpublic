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

require 'spec_helper'

describe BancWhere do
  pending "add some examples to (or delete) #{__FILE__}"
end
