Eye.application 'bind' do
  working_dir '/'
  stdall '/var/log/eye/bind-stdall.log' # stdout,err logs for processes by default
  trigger :flapping, times: 10, within: 1.minute, retry_in: 3.minutes
  check :cpu, every: 10.seconds, below: 100, times: 3 # global check for all processes

  process :bind do
    pid_file '/var/run/named/named.pid'
    start_command '/usr/sbin/named -u bind'

    start_timeout 10.seconds
    stop_timeout 5.seconds

  end

end
