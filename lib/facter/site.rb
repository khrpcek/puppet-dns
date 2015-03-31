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
      site = "wa"
    elsif address.match(/10\.255\.(?:12[0-7]|1[0-1][0-9]|[0]?[0-9][0-9]?)\.|192\.168\.2\./)
      site = "sx"
    elsif address.match(/10\.2\.(?:20[0-7]?)\./)
      site = "hf"
    elsif address.match(/10\.3\.(?:20[0-7]?)\./)
      site = "lm"
    elsif address.match(/10\.4\.(?:20[0-7]?)\./)
      site = "ss"
    elsif address.match(/10\.5\.(?:20[0-7]?)\./)
      site = "wv"
    elsif address.match(/10\.6\.(?:20[0-7]?)\./)
      site = "rk"
    elsif address.match(/10\.7\.(?:20[0-7]?)\./)
      site = "ok"
    elsif address.match(/10\.11\.(?:20[0-7]?)\./)
      site = "ny"
    elsif address.match(/10\.200\.10\.(?:2[2-5][0-9]?)/)
      site = "lax2"
    else
      site = "unknown"
    end
    site
  end
end

