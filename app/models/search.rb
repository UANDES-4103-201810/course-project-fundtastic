class Search < ApplicationRecord
def search_projects
  projects = Project.all

  projects=projects.where(["title LIKE ?","%#{keywords}%"])  if keywords.present?



  return projects

end
end
