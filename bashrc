tssh()
{
    if [ "$#" -eq 0 ]
    then
      printf "Error: Host missing\n" >&2
      exit 1
    fi

    if [[ "$1" =~ ^\- ]]
    then
      printf "Error: ssh first parameter must be the hostname and not an option\n" >&2
      exit 1
    fi

    mkdir -p ~/.ssh/session_logs/
    cd ~/.ssh/session_logs/ && gzip *.session
    ssh "$@" 2>&1 | tee ~/.ssh/session_logs/"$1_$(date +%m_%d_%Y_%H_%M_%S)".session
    
}
