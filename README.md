# Terrafied

A simple Ruby DSL for [Terraform](), somewhere in-between
[Terraframe](https://github.com/eropple/terraframe/) and
[Terrafiddle](https://github.com/glenjamin/terrafiddle)

It avoids using `method_missing` and does not dynamically define the
helper methods to make debugging easier.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'terrafied'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install terrafied

## Usage

Once you import the module the `provider` and `resource` methods are
available.

`resource` takes 3 arguments - a type, a name for the resource and a
'spec' hash.

`provider` takes 2 arguments - a type and a 'spec' hash


```ruby
require 'terrafied'

resource "type", "name",
         foo: "one",
         bar: false
```

Outputs:

```
{
  "provider": {
  },
  "resource": {
    "type": {
      "name": {
        "foo": "one",
        "bar": false
      }
    }
  }
}
```

There are 2 helper methods (borrowed from terraframe) for looking up
resource attributes.

`output-of`:

```ruby
output_of('aws_elb', 'name', 'dns_name')
# => "${aws_elb.name.dns_name}"
```

`id-of`:

```ruby
id_of('aws_elb', 'name')
# => "${aws_elb.name.id}"
```

If you call `use_resource_shortcuts!` then most aws resources have
shortcut methods you can use

```ruby
require 'terrafied'
use_resource_shortcuts!

provider 'aws',
         region: 'eu-west-1',
         access_key: "BLAH",
         secret_key: "BLAGBLOOPBLAH"

VPC_NAME = 'example'
aws_vpc VPC_NAME,
        tags: { Name: VPC_NAME },
        cidr_block: '172.20.0.0/20'

aws_internet_gateway 'production',
                     vpc_id: id_of('aws_vpc', VPC_NAME)
```

Outputs:

```
{
  "provider": {
    "aws": {
      "region": "eu-west-1",
      "access_key": "BLAH",
      "secret_key": "BLAGBLOOPBLAH"
    }
  },
  "resource": {
    "aws_vpc": {
      "example": {
        "tags": {
          "Name": "example"
        },
        "cidr_block": "172.20.0.0/20"
      }
    },
    "aws_internet_gateway": {
      "production": {
        "vpc_id": "${aws_vpc.example.id}"
      }
    }
  }
}
```

You can add new aliases with `add_resource_alias` (Please add them in
and do a pull request though)

```ruby
require 'terrafied'

add_resource_alias 'new_resource_type'

new_resource_type 'name',
                  name: "Something",
                  foo: false

## Outputs
# {
#   "provider": {
#   },
#   "resource": {
#     "new_resource_type": {
#       "name": {
#         "name": "Something",
#         "foo": false
#       }
#     }
#   }
# }



```


## Development

To install this gem onto your local machine, run `bundle exec rake
install`. To release a new version, update the version number in
`version.rb`, and then run `bundle exec rake release`, which will
create a git tag for the version, push git commits and tags, and push
the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/thattommyhall/terrafied. This project is intended
to be a safe, welcoming space for collaboration, and contributors are
expected to adhere to the
[Contributor Covenant](contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the
[MIT License](http://opensource.org/licenses/MIT).
