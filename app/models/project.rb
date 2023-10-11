class Project < ApplicationRecord
    validates :name, presence: true

    has_many :Tasks
    has_many :Users, through: :tasks


end
