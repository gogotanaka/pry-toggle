# pry-toggle

## Basic Usage
### 1. Error happens ;(

    example.rb:9:in `initialize': undefined local variable or
    method `get_value'

#### 2. Run `pry-on` to set breakpoit

    $ pry-on example.rb:9

### 3. Execute again

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

## Doc

### pry-on

    $ pry-on main.rb:9

    $ pry-on main.rb -9

    $ pry-on -9 main.rb

### pry-off

    $ pry-off main.rb:9

    $ pry-off main.rb -9

    $ pry-off -9 main.rb

Remove all breakpoint in a file.

    $ pry-off main.rb

## Develop

### Bundle install

    $ bundle install --path vendor/bundle

### Run test
    $ bundle exec rake


### Try local
    $ bundle exec pry-tgl main;.rb:10
