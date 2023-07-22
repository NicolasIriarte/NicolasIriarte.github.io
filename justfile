# Add the bootstrap remote repository as 'theme'.
add-remote-theme:
    #!/bin/bash
    git remote add theme https://github.com/razonyang/hugo-theme-bootstrap.git

# Pull changes from bootstrap theme master. Remote is needed for this step.
pull-theme:
    #!/bin/bash
    git subtree pull --prefix={{justfile_directory()}}/themes/hugo-theme-bootstrap theme master
