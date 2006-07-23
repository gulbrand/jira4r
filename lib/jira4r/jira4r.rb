require 'logger'

module Jira

  class JiraTool
    
    def initialize(version, base_url)
      @version = version
      @base_url = base_url  
      @logger = Logger.new(STDERR)
      
      
      require File.dirname(__FILE__) + "/v#{version}/jiraServiceDriver.rb"
      @endpoint_url = "#{@base_url}/rpc/soap/jirasoapservice-v2"
    end
    
    def logger=(logger)
      @logger = logger
    end
    
  
    def driver()
      if not @driver
        @logger.info( "Connecting driver to #{@endpoint_url}" )
        @driver = JiraSoapService.new(@endpoint_url)
      end
      @driver
    end
  
    def login(username, password)
      @token = driver().login(username, password)
    end
    
    def token()
      @token
    end
    
    
    
    def method_missing(method_name, *args)
      @logger.debug("Finding method #{method_name}")
      method = driver().method(method_name)     
       
      if args.length > 0
        method.call(@token, *args)     
      else
        method.call(@token)
      end
    end
    
    def getProject_by_key(key)
      driver().getProjects(@token).each { |project|
        return project if project.key == key
      }
      return nil
    end
    

  end
  
  

end