# 'dev-vpn': connect to the GitHub developer VPN.
function dev-vpn
  sudo  openvpn --config ~/.vpn/github-dev-vpn.ovpn --daemon
end
