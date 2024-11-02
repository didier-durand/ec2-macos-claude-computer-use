aws ec2 describe-images \
    --query 'sort_by(Images, &CreationDate)[*].[CreationDate,Name,ImageID]' \
    --filters "Name=name,Values=amzn-ec2-macos-15*" \
    --region us-west-2