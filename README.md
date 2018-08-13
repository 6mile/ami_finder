# ami_finder
Find your ami_id's for all regions for your products in the AWS Marketplace

### Requirements ###
1. You will need the AWS cli tool installed and configured for the AWS account you want to query.  
2. You will need the AWS Product ID for the AWS Marketplace product you want to query.

### How to use ami_finder.sh ###
To will need to pass the script a valid AWS Marketplace Product ID:

```./ami_finder.sh 9566ccc2-d817-4c8e-a2e9-b962addec48b```

You will get an alphabetically sorted list of the AMIs for that Product ID for all regions:

| AWS Region | ami_id |
| ------------- |:-------------:|
ap-northeast-1 | ami-ed2b3191
ap-northeast-2 | ami-e32d838d
ap-south-1 | ami-08032567
ap-southeast-1 | ami-5f7f5223
ap-southeast-2 | ami-2f509b4d
ca-central-1 | ami-60880904
eu-central-1 | ami-7f715594
eu-west-1 | ami-006e4d79
eu-west-2 | ami-1ded0e7a
eu-west-3 | ami-7bdd6c06
sa-east-1 | ami-8dd484e1
us-east-1 | ami-50943a2f
us-east-2 | ami-b0a192d5
us-west-1 | ami-ce4c51ae
us-west-2 | ami-bd3856c5

#### If you don't know how to find your AWS Marketplace Code ####
If you don't know how to find your AWS Marketplace Product Code you can browse to the page (example: https://aws.amazon.com/marketplace/pp/B076VHD29K) and in the upper right hand corner is a "Continue to Subscribe" button.  Click on the button and it will take you to the subscription page for this product.  The url will include the product id.  Cut and paste it and use that with the ami_finder.sh script.

Here's an example: https://aws.amazon.com/marketplace/server/procurement?productId=1459a17b-abde-428d-8b9f-dac876e6ab87

In this example the Product Id is **1459a17b-abde-428d-8b9f-dac876e6ab87**

