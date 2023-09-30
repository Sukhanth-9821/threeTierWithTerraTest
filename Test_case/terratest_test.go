package ThreeTier

import (
	"fmt"
	"testing"
	//"github.com/gruntwork-io/terratest/modules/aws" 
	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

// An example of how to test the simple Terraform module in examples/terraform-basic-example using Terratest.
func TestTerraformBasicExample(t *testing.T) {
	t.Parallel()

	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		// Set the path to the Terraform code that will be tested.
		// The path to where our Terraform code is located
		TerraformDir: "../",

		// Disable colors in Terraform commands so it's easier to parse stdout/stderr
		NoColor: true,
	})

	// Clean up resources with "terraform destroy". Using "defer" runs the command at the end of the test, whether the test succeeds or fails.
	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// Run "terraform init" and "terraform apply".
	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)

	// Run `terraform output` to get the values of output variables
	vpccidr := terraform.Output(t, terraformOptions, "vpccidroutput")
	websnercidr := terraform.Output(t, terraformOptions, "websubnetcidr")
	appsnercidr := terraform.Output(t, terraformOptions, "appsubnetcidr")
	dbsnercidr := terraform.Output(t, terraformOptions, "dbsubnetcidr")
	//vpc, err := aws.GetVpcByIdE(t, vpcID, "ap-south-1")
    fmt.Printf("VPC ID: %s\n", vpccidr)
	fmt.Printf("VPC ID: %s\n", websnercidr)
	fmt.Printf("VPC ID: %s\n", appsnercidr)
	fmt.Printf("VPC ID: %s\n", dbsnercidr)

	// Access the VPC's CIDR block directly
	//cidrBlock := vpc.CidrBlock

	// Validate the VPC CIDR block
	assert.Equal(t, "30.0.0.0/16", vpccidr)
	assert.Equal(t, "30.0.1.0/24", websnercidr)
	assert.Equal(t, "30.0.2.0/24", appsnercidr)
	assert.Equal(t, "30.0.3.0/24", dbsnercidr)
	
}
