knife bootstrap windows winrm %1 --winrm-user="Administrator" --winrm-password="V3ntana" --run-list="recipe[powershell::vantage-create-system-temp-folder],recipe[powershell::vantage-create-cytology-surepath-folder],recipe[powershell::vantage-create-services-folder],recipe[powershell::vantage-copy-jdk-archive],recipe[powershell::vantage-copy-apollo-archive],recipe[powershell::vantage-copy-apollo-command-line],recipe[powershell::vantage-copy-web-archive],recipe[powershell::vantage-copy-services-archive],recipe[7-zip::default],recipe[iis::install_netfx3serverfeatures],recipe[powershell::vantage-install-dotnet35],recipe[ms_dotnet45::default],recipe[powershell::vantage-install-jdk-archive],recipe[powershell::vantage-deploy_apache-apollo-command-line],recipe[powershell::vantage-install-apollo-archive],recipe[powershell::vantage-deploy-web-archive],recipe[powershell::vantage-deploy-services-archive],recipe[powershell::vantage-clear-temp-folder],recipe[powershell::vantage-download-mock-db-archive],recipe[powershell::vantage-expand-mock-data-to-temp],recipe[iis::default],recipe[iis::vantage-site-delete-default],recipe[iis::vantage-app-pool-create-services-sql-lite],recipe[iis::vantage-app-pool-create-javascript-client],recipe[iis::vantage-site-create],recipe[iis::vantage-app-create-cytology-surepath],recipe[iis::vantage-app-create-services-sql-lite]"
