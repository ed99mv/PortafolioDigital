class Project < ApplicationRecord
    has_many :project_technologies, class_name: 'ProjectTechnology'
    has_many :technologies, through: :project_technologies
end
