# Brief manual for sysadmin

## Create a new user

**Check if user exist in hpc01 and find its UID by using `id new_username`**

The customised adduser has been implemented in `/usr/bin/labadduser`, so you 
can add a user by this command line

```bat
    sudo su -
    labadduser new_user
    
    # or with uid
    # labadduser new_user uid
```

To set the password for the new user and ideally initialise conda for her/him
```bat
    sudo passwd $new_user
    su $new_user -c '/opt/anaconda3/bin/conda init'
```

Read more from [this blog](https://linuxize.com/post/how-to-create-users-in-linux-using-the-useradd-command/)

#### A few more commands:
- Add someone to root group: `sudo usermod -aG sudo username`
- Create new group: `addgroup yhlab`


## Set the size limit for home directory for all users
- Aim: 5GB by default
- Not implemented yet


## Mount the file systems
- Tried command: `sshfs hpc01.sbms.hku.hk:/storage /hpc01-sshfs/storage -o idmap=user`
- Not successful for all users (only for the current user using the command)


## Software installation
- RStudio Server: https://posit.co/download/rstudio-server/; 
  now available: http://147.8.70.48:8787
- Anaconda: installed `/opt/anaconda3/`


