default['iis']['pubroot']    = "#{ENV['SYSTEMDRIVE']}\\inetpub"
default['iis']['docroot']    = "#{iis['pubroot']}\\wwwroot"
default['iis']['vantage3root']= "#{iis['docroot']}\\vantage3"
default['iis']['servicesroot']= "#{iis['vantage3root']}\\services"
default['iis']['cytologyroot']= "#{iis['vantage3root']}\\cytology"
default['iis']['surepathroot']= "#{iis['cytologyroot']}\\surepath"

default['windows']['temproot']= "#{ENV['SYSTEMDRIVE']}\\temp"
