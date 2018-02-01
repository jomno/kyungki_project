class User < ApplicationRecord
  belongs_to :district, optional: true
  
end
