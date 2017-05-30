class WebpackerGenerator
  def initialize(@project_name : String)
  end

  def self.run(project_name : String)
    new(project_name).run
  end

  def run
    FileUtils.mkdir_p("#{@project_name}/config")
    FileUtils.cp("#{__DIR__}/webpacker_templates", "#{@project_name}/config/")
  end
end
