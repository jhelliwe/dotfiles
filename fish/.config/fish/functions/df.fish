function df --wraps='/bin/df -x tmpfs -x devtmpfs -h' --wraps='~/tmp/dysk/target/release/dysk --units binary' --description 'alias df ~/tmp/dysk/target/release/dysk --units binary'
  ~/tmp/dysk/target/release/dysk --units binary $argv
        
end
