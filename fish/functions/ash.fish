# 'ash': ssh to an aws host via a bastion jump host
function ash
  set env $argv[1]
  set service $argv[2]
  set host $argv[3]
  ssh -oStrictHostKeyChecking=no -i ~/.ssh/keys/keen/$env/$service.pem -J bastion-$env ec2-user@$host
end
