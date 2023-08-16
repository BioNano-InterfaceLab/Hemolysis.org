module.exports = {
  apps: [{
      name: "staging-auto",
      script: './staging/LehighU-RBC-Server/app/init-staging.sh',
      watch: ['./staging/LehighU-RBC-Server/app/init-staging.sh'],
      exec_mode: "fork", 
      instances: "1", 
      watch: true,
      autorestart: false, 
      max_restarts: 5, 
      interpreter : "/home/ubuntu/env/bin/python" 
    },
    ],

  // deploy : {
  //   production : {
  //     user : 'SSH_USERNAME',
  //     host : 'SSH_HOSTMACHINE',
  //     ref  : 'origin/master',
  //     repo : 'GIT_REPOSITORY',
  //     path : 'DESTINATION_PATH',
  //     'pre-deploy-local': '',
  //     'post-deploy' : 'npm install && pm2 reload ecosystem.config.js --env production',
  //     'pre-setup': ''
  //   }
  // }
};
