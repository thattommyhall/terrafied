require 'terrafied'

resource "type", "name",
         foo: "one",
         bar: false


## Outputs
# {
#   "provider": {
#   },
#   "resource": {
#     "type": {
#       "name": {
#         "foo": "one",
#         "bar": false
#       }
#     }
#   }
# }
