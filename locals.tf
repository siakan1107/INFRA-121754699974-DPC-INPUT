locals {
#   custom_policies  = <<EOF 
#   {
#     "Version" : "2012-10-17",
#     "Statement" : [
#       {
#         "Effect" : "Allow",
#         "Action" : "*",
#         "Resource" : "*"
#       }
#     ]
#   }
#   EOF

  custom_policies = <<EOF
{
    "Version": "2012-10-17",
    "sid" : "test",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "*"
            ],
            "Resource": [
                "*"
            ]
        }
    ]
}
EOF
}