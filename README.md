# pry-toggle

## Basic Usage
### 1. Error happens ;(

    example.rb:9:in `initialize': undefined local variable or
    method `get_value'

#### 2. Run `pry-on` to set breakpoint

    $ pry-on example.rb:9

### 3. Run again

![Screenshot 2015-01-20 22.23.51.png](https://qiita-image-store.s3.amazonaws.com/0/30440/3e0c95d7-bbbb-70ce-304d-dedec016e6c7.png)


### 4. Fix something

### 5. Remove breakpoit `binding.pry` by running `pry-off`

    $ pry-off example.rb

or

    $ pry-off example.rb:9



## Installation

Install it yourself as:

    $ gem install pry-toggle



Or, add this line to your application's Gemfile:

```ruby
gem 'pry-toggle'
```

And then execute:

    $ bundle

## Future Work

### toggle by method

    $ pry-on main.rb#hoge

### run and binding automatically.

If only raising error, toggle `binding.pry` and run again.

    $ pry-run main.rb

## Develop

### Bundle install

    $ bundle install --path vendor/bundle

### Run test
    $ bundle exec rake


### Try local
    $ bundle exec pry-on main.rb:10
