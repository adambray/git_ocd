# GitOcd

GitOCD watches a git repo for changes and automatically commits/pushes those changes.

GitOCD is a terrible idea, well-executed. Have you every wanted your local repo to stay in sync with a remote repo, but you found the whole 'git add', 'git commit', 'git push' cycle was wearing you out? Simply run `git_ocd repo_path` and anytime you save a file in the repo, it'll automatically add, commit, and push the changes.

**What could possibly go wrong?** :)

## Installation

To install, just run:

    gem install git_ocd

## Usage

To use, just run:

		$ git_ocd some_path

To see options (such as delay timing), just run `git_ocd --help`.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
