# pry-toggle

## Usage
### 1. Error happens ;(

    main.rb:9:in `initialize': undefined local variable or
    method `get_value'

#### 2. Run `pry-toggle` or `pry-tgl` (aliased to `pry-toggle`)

    $ pry-toggle main.rb:9

### 3. Execute again

![Screenshot 2015-01-20 22.23.51.png](https://qiita-image-store.s3.amazonaws.com/0/30440/3e0c95d7-bbbb-70ce-304d-dedec016e6c7.png)


## Installation

Install it yourself as:

    $ gem install pry-toggle



Or, add this line to your application's Gemfile:

```ruby
gem 'pry-toggle'
```

And then execute:

    $ bundle

## Contributing

1. Fork it ( https://github.com/[my-github-username]/pry-toggle/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

### Test
    $ bundle exec rake
