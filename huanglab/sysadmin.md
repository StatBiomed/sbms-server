# Brief manual for sysadmin

## Create a new user

**Check if user exist in hpc01 and find its UID by using `id new_username`**

The customised adduser has been implemented in `/usr/bin/labadduser`, so you 
can add a user by this command line

```bash
sudo su -
labadduser new_user
    
# or with uid
# labadduser new_user uid
```

To set the password for the new user and ideally initialise conda for her/him
```bash
sudo passwd $new_user
su $new_user -c '/opt/anaconda3/bin/conda init'
```

Read more from [this blog](https://linuxize.com/post/how-to-create-users-in-linux-using-the-useradd-command/)

#### A few more commands:
- Add someone to root group: `sudo usermod -aG sudo username`
- Create new group: `addgroup yhlab`


## Set the size limit for home directory for all users
- Aim: 5GB by default
- Too difficult to implemented (`/home` is not partitioned out from the system disc)
- Now, we just set a reminder in each one's home directory


## Mount the file systems
Worked with matched UID and with using `-o allow_other`

```bash
sshfs hpc01.sbms.hku.hk:/storage /storage -o allow_other
sshfs hpc01.sbms.hku.hk:/storage3 /storage3 -o allow_other
sshfs hpc01.sbms.hku.hk:/usersdata /usersdata -o allow_other

# Unmount files
# fusermount -u /storage /storage3 /usersdata
```


## Software installation
- RStudio Server: https://posit.co/download/rstudio-server/; 
  now available: http://147.8.70.48:8787
- Anaconda: installed `/opt/anaconda3/`


## Set password requirement

HKU ITS's guideline:
```html
10 characters minimum, with at least
1 uppercase
1 lowercase
1 number
1 special character
```

With this [tutorial](https://computingforgeeks.com/enforce-strong-user-password-policy-ubuntu-debian/), 
this can be set up by the following:

```bash
sudo vim /etc/pam.d/common-password

# CHANGE the line 225 from
# password   requisite   pam_pwquality.so retry=3
# TO
# password requisite pam_pwquality.so retry=3 minlen=10 maxrepeat=3 ucredit=-1 lcredit=-1 dcredit=-1 ocredit=-1 difok=3 gecoscheck=1 reject_username enforce_for_root
```
