class Project < ActiveRecord::Base
  validates_presence_of :title, :url

  def completed?
    completion_status
  end
end
