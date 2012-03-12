# BriefcaseType Foundry

Briefcasetype Foundry pages in Padrino framework.

[Production](http://www..briefcasetype.com)

[Staging](http://beta.briefcasetype.com)

[Main repo](https://github.com/LastStar/bct)

## Dependencies

All commands are ran in shell unless said otherwise.

Even that project is runnable on Linux or FreeBSD, all development information
and guides are OS X based. If you cannot afford it, do it hard way. On Win go
play Solitaire.

### Ruby

Use rvm. Ruby 1.9.3 is used for development of this project. Install it
with:

    > rvm install 1.9.3

Always run

    > bundle install

after pulling from origin.

## Development tools

Web server is run by:

    > bundle exec padrino start

Console is run by:

    > bundle exec padrino console

## Testing

You can run:

    > bundle exec spork

to speedup your specs. Run them with:
    > bundle rspec spec

