# ami_finder
Find your ami_id's for all regions for your products in the AWS Marketplace

### Requirements ###
1. You will need the AWS cli tool installed and configured for the AWS account you want to query.  
2. You will need the AWS Product Code for the AWS Marketplace product you want to query.

### How to use ami_finder.sh ###
To will need to pass the script a valid AWS Marketplace Product Code:

```./ami_finder.sh 9566ccc2-d817-4c8e-a2e9-b962addec48b```

If you don't know how to find your AWS Marketplace Product Code you can browse to the page (example: https://aws.amazon.com/marketplace/pp/B076VHD29K) and in the upper right hand corner is a "Continue to Subscribe" button.  Click on the button and it will take you to the subscription page for this product.  The url will include the product code.  Cut and paste it and use that with the ami_finder.sh script.

Here's an example: https://aws.amazon.com/marketplace/server/procurement?productId=1459a17b-abde-428d-8b9f-dac876e6ab87

In this example the Product Code is **1459a17b-abde-428d-8b9f-dac876e6ab87**

