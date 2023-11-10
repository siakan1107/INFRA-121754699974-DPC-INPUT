locals {
    testvalue3 ="rrr"
    testvalue1= <<EOF
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

testvalue2 = <<EOF
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


