# capture_ssh_session

## What problem solves?
* Terminal scrols so fast that you lost the line that you want to examine?
* You just wished to had copy paste the output of the terminal but you forgot it and now you need to do everything from scratch?

## How to configure it
Well! there is an easy solution, you can create a function withing .bashrc to automaticaly capture ssh sessions in form of username@host_M_D_Y_H_M_S
To enable this get the contents of the bashrc in the repository and append it to the end of yours .bashrc file, then enter source ~/.bashrc to reload your config

## How to use it
dont use ssh, instead use tssh (the alias) as you would use ssh, the sessions are logged to  ~/.ssh/session_logs/

## limitations
first parameter must be the host that you want to ssh
