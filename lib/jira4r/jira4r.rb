require 'logger'

module Jira

  class JiraTool
    
    # Create a new JiraTool
    # 
    # where:
    # version ... the version of the SOAP API you wish to use - currently supported versions  [ 2 ]
    # base_url ... the base URL of the JIRA instance - eg. http://confluence.atlassian.com
    def initialize(version, base_url)
      @version = version
      @base_url = base_url  
      @logger = Logger.new(STDERR)
      
      
      require File.dirname(__FILE__) + "/v#{version}/jiraServiceDriver.rb"
      @endpoint_url = "#{@base_url}/rpc/soap/jirasoapservice-v#{version}"
    end
    
    #Assign a new logger to the tool. By default a STDERR logger is used.
    def logger=(logger)
      @logger = logger
    end
    
    #Retrieve the driver, creating as required.
    def driver()
      if not @driver
        @logger.info( "Connecting driver to #{@endpoint_url}" )
        @driver = JiraSoapService.new(@endpoint_url)
      end
      @driver
    end
    
    #Assign a wiredump file prefix to the driver.
    def wiredump_file_base=(base)
      driver().wiredump_file_base = base
    end
    
  
    #Login to the JIRA instance, storing the token for later calls. 
    # 
    #This is typically the first call that is made on the JiraTool.
    def login(username, password)
      @token = driver().login(username, password)
    end

    #Clients should avoid using the authentication token directly.    
    def token()
      @token
    end
    
    #Call a method on the driver, adding in the authentication token previously determined using login()
    def call_driver(method_name, *args)
      @logger.debug("Finding method #{method_name}")
      method = driver().method(method_name)     
      
      if args.length > 0
        method.call(@token, *args)     
      else
        method.call(@token)
      end
    end
    
    #Retrieve a project without the associated PermissionScheme.
    #This will be significantly faster for larger Jira installations.
    def getProjectNoScheme(key)
      self.getProjectsNoSchemes().each { |project|
        return project if project.key == key
      }
      return nil
    end
    
    #Retrieve a project with the associated PermissionScheme.
    #Due to the lack of a Jira API call for getProject, this may be quite slow when there are
    #a lot of projects with large groups attached to permission schemes.  
    #I have raised a request with Atlassian to extend the Jira API to speed this call up.
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
        if soap_error.faultcode.to_s == "soapenv:Server.userException" and soap_error.faultstring.to_s == "com.atlassian.jira.rpc.exception.RemoteValidationException: no group found for that groupName: #{groupName}"
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
    
    def getNotificationScheme( notificationSchemeName )
      self.getNotificationSchemes().each { |notification_scheme| 
        return notification_scheme if notification_scheme.name = notificationSchemeName
      }
      return nil
    end

    def getPermission( permissionName )
      if not @permissions
        @permissions = self.getAllPermissions()
      end
      
      @permissions.each { |permission|
        return permission if permission.name.downcase == permissionName.downcase
      }
      
      @logger.warn("No permission #{permissionName} found")
      return nil
    end

private
    def fix_args(args)
      args.collect { |arg|
        if arg == nil
          SOAP::SOAPNil.new
        else
          arg
        end
      }
    end
    
    def method_missing(method_name, *args)
      args = fix_args(args)
      call_driver(method_name, *args)
    end
    
    
  
  end  

end