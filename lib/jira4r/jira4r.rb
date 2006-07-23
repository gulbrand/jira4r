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
        @driver.wiredump_file_base = "jira4r_wiredump"
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
      call_driver(method_name, *args)
    end
    
    def call_driver(method_name, *args)
      @logger.debug("Finding method #{method_name}")
      method = driver().method(method_name)     
      
      if args.length > 0
        method.call(@token, *args)     
      else
        method.call(@token)
      end
    end
    
    def getProjectNoScheme(key)
      self.getProjectsNoSchemes().each { |project|
        return project if project.key == key
      }
      return nil
    end
    
    def getProject(key)
      self.getProjects().each { |project|
        return project if project.key == key
      }
      return nil
    end


    def getGroup( groupName )
      begin
        return call_driver( "getGroup", groupName )
      rescue SOAP::FaultError => soap_error
        #XXX surely there is a better way to detect this kind of condition in the JIRA server
        if soap_error.faultcode != "soapenv:Server.userException" and soap_error.faultcode != "com.atlassian.jira.rpc.exception.RemoteValidationException: no group found for that groupName: #{groupName}"
          return nil
        else
          raise soap_error
        end
      end
    end

    def getPermissionScheme( permissionSchemeName )
      self.getPermissionSchemes().each { |permission_scheme| 
        return permission_scheme if permission_scheme.name = permissionSchemeName
      }
      return nil
    end
  
  end  

end