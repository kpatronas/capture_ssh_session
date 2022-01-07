tssh()
{
    if [ "$#" -eq 0 ]
    then
      printf "Error: Host missing\n" >&2
      return 1
    fi

    if [[ "$1" =~ ^\- ]]
    then
      printf "Error: ssh first parameter must be the hostname and not an option\n" >&2
      return 1
    fi

    mkdir -p ~/.ssh/session_logs/ && ssh "$@" | tee ~/.ssh/session_logs/"$1_$(date +%m_%d_%Y_%H_%M_%S)"
}
alias ssh=tssh
