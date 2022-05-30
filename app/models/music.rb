class Music < ApplicationRecord
  enum genre: [:rock, :hip_hop, :jazz, :classic]
end
