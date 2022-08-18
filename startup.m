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
