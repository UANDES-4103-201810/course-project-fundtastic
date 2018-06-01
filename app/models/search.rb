class Search < ApplicationRecord
def search_projects
  projects = Project.all

  projects=projects.where(["title LIKE ?","%#{keywords}%"])  if keywords.present?
  projects=projects.where(["info LIKE ?","%#{info}%"])  if info.present?



  return projects

end
end
