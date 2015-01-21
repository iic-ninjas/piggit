# Piggit

A small git-like utility which grants you local version control for your PostgreSQL DB schema and data.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'piggit'
```

And then run:

    $ bundle


## Usage

In order to use `piggit` you'll have to initialize it for a certain project. Run this command in your project's folder:

```
> piggit init
```

`piggit` will let you choose the database you want it to affect in this current database. Once `piggit` is initialized, you should add the `.piggit` folder to your `.gitignore`.


### Commands

`> piggit uninit` - Removes all trace of `piggit` from the current folder.

`> piggit save <name>` -Saves the current DB state under the specified name.

`> piggit load <name>` - Loads the saved state specified by the name to the DB. This will override the current DB state, so you better save it before if you want to preserve it.

`> piggit list <name>` - Lists all the saved DB states.

`> piggit delete <name>` - Deletes the saved state specified by the name.

`> piggit purge <name>` - Removed all saved states.

`> piggit version` - Prints the current version of `piggit`.
