# Hemolysis_website
- Lead by Professor Yaling Liu at Lehigh University
- Deployed Website: (https://hemolysis.org/)[https://hemolysis.org/]


## Technical Stack
- Cloud server([link](https://hemolysis.org//)) is hosted via AWS EC2
- Backend built with Python Django
- Frontend implemented by React
- Cloud storage via AWS S3 Bucket
- Simulation implemented with [ESPResSo](http://espressomd.org/) 
- Simulation results are visualized via [VTK.js](https://vtk.org/)


## Quick Start
1. Clone the repo 
    - `git clone https://github.com/ShaneZTH/LehighU-RBC-Server.git`
    - `cd LehighU-RBC-Server`
2. Set up the working environment<br/>
    - Create a python virtual environment and 
        - `python3 -m venv env`
    - Install all required packages for the code to run,
        - `python3 -m pip install -r requirements.txt`
    - If all packages are installed correctly, start the venv, <br/>
        - `source env/bin/activate`
3. Run the application/server
    - Move to the application root directory,
        - `cd app`
    - Run the server with the Shell command
        - `make run`
    - The application should now be running. Click on the url provided in the CLI window to access the local development server

---
## Technical Details
- The simulation application is under `./sim'`<br> 
- The computation is handled by `compute.py`




