# Add the bootstrap remote repository as 'theme'.
add-remote-theme:
    #!/bin/bash
    git remote add theme https://github.com/razonyang/hugo-theme-bootstrap.git

# Pull changes from bootstrap theme master. Remote is needed for this step.
pull-theme:
    #!/bin/bash
    git subtree pull --prefix={{justfile_directory()}}/themes/hugo-theme-bootstrap theme master

# Add the public gitlab repository. https://gitlab.com/NicolasIriarte/bytewise
add-remote-public:
    #!/bin/bash
    git remote add public git@github.com:NicolasIriarte/NicolasIriarte.github.io.git

# Push to remote repository.
publish:
    #!/bin/bash
    git push public main

# Serve locally
serve:
    #!/bin/bash
    set -e
    if [ ! -d "node_modules" ]; then
      echo "No node_modules detected. Running `npm i`"
      npm i
    fi
    hugo server
