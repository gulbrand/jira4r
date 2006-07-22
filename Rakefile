require 'wsdl/soap/wsdl2ruby'
require 'net/http'
require 'fileutils'
require 'rake/clean'
require 'logger'

begin
  require 'rubygems'
  require 'rake/gempackagetask'
rescue Exception
  nil
end

logger = Logger.new(STDERR)


desc "gets the wsdl and generates the classes"
task :default => [:getwsdl, :generate]



desc "gets the wsdl files for JIRA services"
task :getwsdl do
  versions().each { |version| 
    save(getWsdlFileName(version), getfile("jira.atlassian.com", "/rpc/soap/jirasoapservice-v#{version}?wsdl"))
  }
end



task :generate do
  versions().each { |version|
    worker = WSDL::SOAP::WSDL2Ruby.new
    worker.logger = logger
    worker.location = getWsdlFileName(version)
    worker.basedir = "lib/jira4r/v#{version}"
    worker.opt.update(getWsdlOpt("jira"))
    
    mkdir_p worker.basedir
    
    worker.run
  }
end

def versions 
 [ 2 ]
end

def getfile(host, path)
    puts "getting http//#{host}#{path}"
    http = Net::HTTP.new(host)
    http.start { |w| w.get2(path).body }
end

def getWsdlFileName(vName)
  "wsdl/jirasoapservice-v#{vName}.wsdl"
end

def getWsdlOpt(s)
    optcmd= {}
    s << "Service"
    optcmd['classdef'] = s
    #should work but doesn't, driver name is derived from classname
    #if you specify both it breaks, same thing for client_skelton
    #optcmd['driver'] = s
    optcmd['driver'] = nil
    #optcmd['client_skelton'] = nil
    optcmd['force'] = true
    return optcmd
end

# Saves this document to the specified @var path.
# doesn't create the file if contains markup for 404 page
def save( path, content )
  File::open(path, 'w') { | f | 
    f.write( content ) 
  }
end
