tssh()
{
    if [ ! "$#" -eq 1 ]
    then
      printf "Error: Host missing\n" >&2
      return 0
    fi
    mkdir -p ~/.ssh/session_logs/ && ssh "$@" | tee ~/.ssh/session_logs/"$1_$(date +%m_%d_%Y_%H_%M_%S)"
}
alias ssh=tssh
