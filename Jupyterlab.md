# Jupyter lab setting up

[Jupyter lab](https://jupyterlab.readthedocs.io) can run remotely. You can set 
as follows.

## Configurate on the server
Inside the sever, do
* Create configuration file: `jupyter notebook --generate-config`
* Enter into the configuration folder: `cd ~/.jupyter/`
* Optional: generating a password to login instead of using token each time: 
  `jupyter notebook password`
* Create a certificate
  ```bat
  openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout mykey.key -out mycert.pem
  ```
* Edit the file `jupyter_notebook_config.py` (it is in your current folder) to look like

   ```python
   c.ServerApp.certfile = u'$HOME/.jupyter/mycert.pem'
   c.ServerApp.keyfile = u'$HOME/.jupyter/mykey.key'
   c.ServerApp.ip = '*'
   c.ServerApp.open_browser = False
   c.ServerApp.port = PORT
   ```

  Replace `PORT` by any integer number between 8001 and 9999.
  
  Also, replace `$HOME` to the aboslute path of your own HOME directory: 
  `/home/YOUR_USER_NAME`

## Lauch and Connect
* **On server**, from any folder Now Launch : `jupyter lab` in conda base 
  evironment

* **On local machine**: 
  1. On your local terminal run the following:
     ```bat
     ssh -N -L PORT:localhost:PORT user@hpc02.sbms.hku.hk
     ```
  2. Go to your local browser and open https://localhost:PORT

     

  Note, lauch HKU VPN first if you are not within HKU network. Please use `https` instead of `http` otherwise 
  you won't be able to use it. Also, Chrome does not work well with this setup. 
  Use Firefox, Safari, or others instead.

* Alternatively On your local machine, open https://hpc02.sbms.hku.hk:PORT/lab/; however, this may requires the PORT is open from firewall setting, which may requires root permission. You can check 
[this](https://stackoverflow.com/a/54063685/2827162) discussion.


## <a name="jupyter-cluster"></a>Using Jupyter on computing node of a cluster

Comparing to school server (a plain system), running interactive job on cluster 
can take some extra efforts to set up, but generally doable.

Here, using the Portable Batch System (PBS) as an example, as used in CPOS 
cluster, we can also run jupyter lab. 

* step 1: submit a job to run your jupyter lab with `qsub`. You can follow the 
  example [cluster-jupyter.sh](./examples/cluster-jupyter.sh).
  Note, you may need to specify your **absolute path** of the jupyter binary file.

* step 2: check which computing node it uses via the `qstat -n` command. 
  For example, it may use `compute-0-1.local`

* step 3: connect to the computing node from your local computer. This time you 
  need to know the computing node it uses.

  ```bat
  ssh -N -L PORT:COMP_NODE:PORT USER@xomics.cpos.hku.hk
  ```

  Please change $PORT, $COMP_NODE and $USER to your own setting. Then go to your 
  local browser and open https://localhost:PORT
