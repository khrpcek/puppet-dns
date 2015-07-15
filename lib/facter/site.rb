# Custom fact to determine which site  a node is in based on its IP
# Kevin Hrpcek

Facter.add("site") do
  setcode do
    begin
      Facter.ipaddress
    rescue
      Facter.loadfacts()
    end
    address = Facter.value('ipaddress')
    if address.match(/10\.255\.(?:25[0-5]|2[0-4][0-9]|1[3-9][0-9]|12[8-9])\.|192\.168\.3\./)
      site = "site1"
    elsif address.match(/10\.255\.(?:12[0-7]|1[0-1][0-9]|[0]?[0-9][0-9]?)\.|192\.168\.2\./)
      site = "site2"
    else
      site = "unknown"
    end
    site
  end
end

