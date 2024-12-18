function df --wraps='/bin/df -x tmpfs -x devtmpfs -h' --description 'alias df /bin/df -x tmpfs -x devtmpfs -h'
  /bin/df -x tmpfs -x devtmpfs -h $argv
        
end
