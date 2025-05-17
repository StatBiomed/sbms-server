# JupyterHub installation

**Not successful yet**

## Test 2

### Current issue**
- The machine IP address is different from the ssh IP address
- Using the machine IP address is ok to run on the server but can't be accessed by local laptop

### Procedures
- (prepare) using chatGPT to fix the issue with `configurable-http-proxy`:
  * the default in outdated: `sudo apt-get install nodejs npm` (don't work)
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


# Test 1
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
