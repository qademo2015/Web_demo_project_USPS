# code for loading configuration data from external *.yml file
module EnvConfig
  def self.load(environment, data_file)
    config = nil
    io = File.open(File.dirname(__FILE__) + '/../config/' + data_file)
    YAML::load_documents(io) { |doc| config = doc[environment]}
    raise "Could not locate a configuration named \"#{environment}\"" unless config
    config
  end
end
