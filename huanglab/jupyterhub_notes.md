# JupyterHub installation

- current situation: works on CTSCB serve easily (via jhub env), but not on 
  woody due to network IP address issue (see below). Environment: jpthub

## Quick start

You can have a quick start with the following three command lines in any conda
environment (root is not necessary).

```
conda install conda-forge::configurable-http-proxy
pip install jupyterhub jupyterlab notebook

# use the IP address from ifconfig if it's the same as ssh IP
jupyterhub --ip xxx --port 8000 --Authenticator.allow_all True

# Or specify the users via `Authenticator.allowed_users`
```

To check host IP address: `hostname -I`

## IP address issue

1. If the IP address is different from `ssh` IP and machine IP (e.g., via 
  `ifconig`), the situation might be complicated. One example is the server's
  machine IP has been translated to an ssh IP.
2. For the same reason, we may get some idea how RStudio server works at 
  xxx:8787 (or 9000). We may consult the IT team about the network issue.

## Options to install `configurable-http-proxy`

(Note, most tutorials suggest option 3, and with ChatGPT's help, option 2 was 
installed. Actually, option 1 is the easiest.)

### Option 1: via conda (easiest)
Simply install via conda (in any conda environment). It will install nodejs
automatically (v22.13).

```bash
conda install conda-forge::configurable-http-proxy
```

conda page: https://anaconda.org/conda-forge/configurable-http-proxy

### Option 2: via nvm (root is not necessary)
- We can manually install `nvm` and `nodejs` from the source codes:
  https://nodejs.org/en/download

  ```
  wget https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
  
  nvm install node
  nvm use node
  node -v
  ```

  The node will be installed at `$HOME/.nvm/versions/node/v24.0.2/bin/node`

- Then install `configurable-http-proxy`: `npm install -g configurable-http-proxy` (try twice or remove `-g`)

  To test: `which configurable-http-proxy`

### Option 3: via apt-get install (too old version)
The node version is too old (v12), but it's quired to be (>v14); currently
already v24.
- Too old version: `sudo apt-get install nodejs npm`
- Check version: `node -v`

### Option 4: via pip (not supported anymore)
It seems only supported to v0.3.0, while current one is v4.6:
- Pip link (deprecated): https://pypi.org/project/configurable-http-proxy/


## Notes for trials 

Only for record (failed trials for different reasons)

### Test 2

- Was following the [guide-hard documentation](https://jupyterhub.readthedocs.io/en/1.2.1/installation-guide-hard.html)
- All Python env at `/opt/jupyterhub`

#### Current issue**
- The machine IP address is different from the ssh IP address
- Using the machine IP address is ok to run on the server but can't be accessed 
  by a local laptop

#### Procedures
- (prepare) using chatGPT to fix the issue with `configurable-http-proxy`:
  * the default is outdated: `sudo apt-get install nodejs npm` (don't work)
  * upgrade `npm` to version >14.0 with its [official site](https://nodejs.org/en/download)
    ```
    node -v

    sudo wget https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

    nvm install node
    nvm use node
    node -v
    ```

- Any conda environment (similar to Test 1)
  ```
  conda create --name jpthub python=3.11
  conda activate jpthub
  pip install jupyterhub
  pip install jupyterlab notebook
  jupyterhub --ip xxx --port 8000
  ```

- (root) follow the [guide-hard documentation](https://jupyterhub.readthedocs.io/en/1.2.1/installation-guide-hard.html), 

Install a new Python environment and everything there 
  ```
  sudo /opt/jupyterhub/bin/python3 -m pip install wheel
  sudo /opt/jupyterhub/bin/python3 -m pip install jupyterhub jupyterlab
  sudo /opt/jupyterhub/bin/python3 -m pip install ipywidgets

  # To directly run:
  sudo /opt/jupyterhub/bin/jupyterhub -f /opt/jupyterhub/etc/jupyterhub/jupyterhub_config.py
  # Or simply:
  sudo /opt/jupyterhub/bin/jupyterhub --ip xxx --port 8000

  # Use systemd to run (not neccessary for test) with link above
  # sudo systemctl start jupyterhub.service
  # sudo systemctl status jupyterhub.service
  # sudo systemctl stop jupyterhub.service
  ```


### Test 1 (deleted)
- JupyterHub via its [documentation](https://jupyterhub.readthedocs.io/en/stable/tutorial/quickstart.html):
  ```
  sudo apt-get install nodejs npm
  sudo /opt/anaconda3/bin/conda install -c conda-forge jupyterhub
  sudo pip install notebook

  sudo mkdir /etc/jupyterhub/
  sudo /opt/anaconda3/bin/jupyterhub --generate-config -f /etc/jupyterhub/jupyterhub_config.py

  sudo /opt/anaconda3/bin/jupyterhub --ip 10.64.152.100 --port 443 -f /etc/jupyterhub/jupyterhub_config.py

  sudo /opt/anaconda3/bin/jupyterhub --ip 10.64.152.100 --port 443 --Spawner.cmd='/opt/anaconda3/bin/jupyterhub-singleuser' --Authenticator.allow_all = True
  ```
