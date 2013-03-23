module SshSpecHelper

  def ssh_exec(host, cmd, opt={})
    `ssh root@#{host} -o'StrictHostKeyChecking no' -o'UserKnownHostsFile /dev/null' -i ~/.ssh/insecurekey #{cmd}`
    #puts $?
  end

end
