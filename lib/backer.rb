
class Backer
  attr_reader :name, :backed_projects # both to be accessable

  def initialize(name) #  takes a name on initialization,
    @name = name
    @backed_projects = [] # set to empty array
  end

  def back_project(project) # accepts a Project as an argument and stores it in a backed_projects array
    backed_projects << project # uses shovel method to push in to back project array
    project.backers << self #   also adds the backer to the project's backers array
  end

end
