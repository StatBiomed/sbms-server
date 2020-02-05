# Globus
[Globus](https://www.globus.org/) is convenient tool for data sharing between 
institutes and fairly easy to set up.

## Get an account
You can use HKU's account to login to globus directly. You can also create an 
account with your personal email, information.

## Setup an end-point
1. Create an end-point in the website: https://app.globus.org/file-manager/gcp
   Then you will have a key for this end-point.

2. Install globus on the server, please follow the 
   [official instructions](https://docs.globus.org/how-to/globus-connect-personal-linux/)
   For example the v3:
   ```bat
   wget https://downloads.globus.org/globus-connect-personal/v3/linux/stable/globusconnectpersonal-latest.tgz
   tar xvzf globusconnectpersonal-latest.tgz
   ```
   Then you can setup the key of your end-point:
   ```bat
   globusconnectpersonal-3.0.3/globusconnectpersonal -setup $YOUR_KEY
   ```
   Now, you can launch it with specify the restrict paths (default is $HOME)
   ```bat
   globusconnectpersonal-3.0.3/globusconnectpersonal -start -restrict-paths /storage/YourFolder
   ```

## Share a path to others
You need to purchase the subscription of Globus for sharing data out.
