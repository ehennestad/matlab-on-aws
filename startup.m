listing = dir('~/s3-dandi');
if size(listing,1) < 3
    system('s3fs -o public_bucket=1 -o umask=0022 dandiarchive ~/s3-dandi');
end
cd '~/s3-dandi'
clear all;