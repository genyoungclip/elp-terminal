'use strict';

const os = require('node:os');
const process = require('node:process');

const APP_NAME = 'ELP Terminal';
const VERSION = '1.0.0';

function banner() {
    console.log(`
╔══════════════════════════════════════════╗
║              ELP TERMINAL                ║
╠══════════════════════════════════════════╣
║ Version : ${VERSION.padEnd(29)}║
║ Node    : ${process.version.padEnd(29)}║
║ OS      : ${os.platform().padEnd(29)}║
║ Arch    : ${os.arch().padEnd(29)}║
╚══════════════════════════════════════════╝
`);
}

function info() {
    return {
        name: APP_NAME,
        version: VERSION,
        node: process.version,
        platform: os.platform(),
        architecture: os.arch(),
        cpuCount: os.cpus().length,
        hostname: os.hostname(),
        uptime: Math.floor(os.uptime())
    };
}

function main() {
    banner();

    const command = process.argv[2];

    switch (command) {
        case 'info':
            console.log(JSON.stringify(info(), null, 2));
            break;

        case 'version':
        case '--version':
        case '-v':
            console.log(`${APP_NAME} ${VERSION}`);
            break;

        case 'help':
        case '--help':
        case '-h':
            console.log(`
Usage:
  node index.js              Start ELP Terminal
  node index.js info         Show system information
  node index.js version      Show version
  node index.js help         Show this help
`);
            break;

        default:
            console.log('ELP Terminal is ready.');
            console.log('Run "node index.js help" for commands.');
    }
}

process.on('SIGINT', () => {
    console.log('\nELP Terminal stopped.');
    process.exit(0);
});

process.on('SIGTERM', () => {
    process.exit(0);
});

master();
