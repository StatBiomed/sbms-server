# SSH login

You need to have an account in the server first. Contact Tommy.

You can login the server via [ssh](https://en.wikipedia.org/wiki/Secure_Shell) 
by the following command line in your terminal:

```bat
ssh biomed1.sbms.hku.hk
```

Alternatively, you can configure the ssh in your local file `~/.ssh/config` 
(you may need to make the `~/.ssh` folder first), and add the following lines:

```bat
Host sbms
    User YourUserName
    HostName biomed1.sbms.hku.hk
    ServerAliveInterval 5
```

Then you can login via the following command line:

```bat
ssh sbms
```

## Login remotely
The server is pretected by the University's firewall, so you need to be in the 
unveristy's netweek physically or via the 
[University's VPN](https://www.its.hku.hk/documentation/guide/network/remote/hkuvpn2fa)

Once you are in the VPN, you can login via ssh as above section.