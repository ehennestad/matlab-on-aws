listing = dir('~/s3-dandi');
if size(listing,1) < 3
    system('s3fs -o public_bucket=1 -o umask=0022 dandiarchive ~/s3-dandi');
end

listing = dir('~/s3-allen');
if size(listing,1) < 3
    system('s3fs -o public_bucket=1 -o umask=0022 allen-brain-observatory ~/s3-allen');
end

clear all;

addpath(genpath(fullfile('~', 'NANSEN')))
addpath(genpath(fullfile('~', 'Brain-Observatory-Toolbox')))

% Change keyboard to norwegian layout
system('setxkbmap -layout no');

isInitialized = getpref('MatlabOnAWS', 'IsInitialized', false);
if ~isInitialized
    % Change branch of bot repo to dev:
    system('sudo git config --global --add safe.directory /home/ubuntu/Brain-Observatory-Toolbox');
    system('sudo git checkout dev');
    
    % Need to claim owhnership of folders
    system('sudo chown -R ubuntu:ubuntu /home/ubuntu/Brain-Observatory-Toolbox')
    system('sudo chown -R ubuntu:ubuntu /home/ubuntu/NANSEN')
    system('sudo chown -R ubuntu:ubuntu /home/ubuntu/Documents/MATLAB')

    % Configure bot preferences for cloud 
    prefs = bot.getPreferences();
    prefs.UseLocalS3Mount = true;
    prefs.S3MountDirectory = '/home/ubuntu/s3-allen';

    setpref('MatlabOnAWS', 'IsInitialized', true);
end