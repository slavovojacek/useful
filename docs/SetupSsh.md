# Setup SSH

    # Lists the files in your .ssh directory, if they exist
    ls -al ~/.ssh

    # Creates a new ssh key, using the provided email as a label
    ssh-keygen -t rsa -C "your_email@example.com"

    # Starts the ssh-agent in the background
    eval "$(ssh-agent -s)"

    # Adds your generated SSH key to the ssh-agent:
    ssh-add ~/.ssh/id_rsa

    # Copies the contents of the id_rsa.pub file to your clipboard
    pbcopy < ~/.ssh/id_rsa.pub

    # To try the connection to e.g. BitBucket
    ssh -Tv git@bitbucket.org

EOM.
