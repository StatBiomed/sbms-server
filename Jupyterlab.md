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
  openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout mykey.key -out mycert.pem
  ```
* Edit the file `jupyter_notebook_config.py` (it is in your current folder) to look like

   ```python
   c.NotebookApp.certfile = u'$HOME/.jupyter/mycert.pem'
   c.NotebookApp.keyfile = u'$HOME/.jupyter/mykey.key'
   c.NotebookApp.ip = '*'
   c.NotebookApp.open_browser = False
   c.NotebookApp.port = PORT
   ```

  Replace PORT by any integer number between 8001 and 9999.

## Lauch and Connect
* On the server, from any folder Now Launch : `jupyter notebook`
* On your local terminal run the following:
  ```bat
  ssh -N -L PORT:localhost:PORT user@147.8.70.229
  ```
* Go to your local browser and open https://localhost:PORT

Please, do not forget to put the letter `S` in https://localhost:PORT otherwise 
you won't be able to use it. Also, Safari does not work well with this setup. 
Use Firefox, Opera, Chrome, or IE instead.
