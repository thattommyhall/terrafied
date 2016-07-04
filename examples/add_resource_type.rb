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
