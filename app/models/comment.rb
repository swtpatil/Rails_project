class Comment < ApplicationRecord
  include Visible

  belongs_to :cloud
end
