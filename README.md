# Ruby on Rails - Ruby & Ruby on Rails Basics - Packaging Ruby Code - Project

## Create and Use a Gem

Create a gem named `archiver` which will add `archive`, `restore` and `archived?` methods to an ActiveRecord model.

### Step One - Create Gem

1. Create a gem named archiver. ✅
2. Ensure it has a valid gemspec file. ✅
3. Add `activerecord` as a runtime dependency. ✅

### Step Two - Add functionality

The `archive`, `restore`, and `archived?` methods should work based on the `archived_at` field on the active record model. The gem's assumption is that it will be used on models that already have the `archived_at` field.

1. Add `archive` method to set `archived_at` to the current time.
2. Add `restore` method to set `archived_at` to `nil`.
3. Add `archived?` method to check if `archived_at` is set.

### Step Three - Add Archiver to Simple Blog

We will use this repo to test functionality:

[Starter Repo](https://github.com/LambdaSchool/rails-mini-course-sprint1-mod4-rails-base-app)

_Note: cd into the repo after cloning and run `rm -rf .git` to avoid git submodule usage_

1. Clone the [repo](https://github.com/LambdaSchool/rails-mini-course-sprint1-mod4-rails-base-app) and get it running.
2. Add the `factory_bot` gem to the development and test group.
3. Ensure the `factory_bot` gem is greater than or equal to `5.0.0` but less than `6.0.0`.
4. Add the `archiver` gem as a local gem and include the Archiver functionality into the Article model.
5. Make sure that the added Archiver functionality works in the blog by testing it on articles.
