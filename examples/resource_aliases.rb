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

## Outputs
# {
#   "provider": {
#     "aws": {
#       "region": "eu-west-1",
#       "access_key": "BLAH",
#       "secret_key": "BLAGBLOOPBLAH"
#     }
#   },
#   "resource": {
#     "aws_vpc": {
#       "example": {
#         "tags": {
#           "Name": "example"
#         },
#         "cidr_block": "172.20.0.0/20"
#       }
#     },
#     "aws_internet_gateway": {
#       "production": {
#         "vpc_id": "${aws_vpc.example.id}"
#       }
#     }
#   }
# }
