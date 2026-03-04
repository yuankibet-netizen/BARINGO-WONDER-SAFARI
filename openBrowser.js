const { exec } = require('child_process');
exec('start msedge http://localhost:3000', { shell: 'cmd.exe' });
console.log('Opening browser...');
