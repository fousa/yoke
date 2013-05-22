# Yoke

Alias your current directory for fast directory access.

Create an alias for the current directory with a small 'yoke' command. And when you're somewhere else just type the name of the create alias and you'll be cd'ed to the director.

## Installation

Install the gem:

    $ gem install yoke

## Usage

There are only 5 functions you can use with ths gem. We'll start with the beginning.

### Help

Get an overview of all commands available with a small description.

    yoke help

### Setup

Prepare your current shell (bash or zsh) so that it loads the .yoke file every time you start a new shell.

    yoke setup

### up

Create a new alias for the current directory with the name of the current directory.

    yoke
    yoke up
    yoke up the_alias_name

You can pass an extra parameter (the\_alias\_name) so that the alias will be this name instead of the current directory name.

### down

Remove the alias that exists with the name of the current directory.

    yoke down
    yoke down the_alias_name

You can pass an extra parameter (the\_alias\_name) so that the alias with this name will be removed instead of the current directory name.

### list

Show the list of aliases created with yoke.

    yoke list

## License

Check out the LICENSE.txt file. Really awesome reading material...

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
