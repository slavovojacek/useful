# Install AWS CLI

To install the AWS CLI Without Sudo, follow the appropriate instructions in http://docs.aws.amazon.com/cli/latest/userguide/installing.html#install-bundle-other-os.

    curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
    unzip awscli-bundle.zip
    ./awscli-bundle/install -b ~/bin/aws

Make sure that ~/bin is in your PATH environment variable for the symlink to work:

    echo $PATH | grep ~/bin     // See if $PATH contains ~/bin
    export PATH=~/bin:$PATH     // Add ~/bin to $PATH if necessary

EOM.
