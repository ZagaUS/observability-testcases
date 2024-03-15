#!/bin/bash

TESTCASE_1=TestCase1

TESTCASE_2=TestCase2

TESTCASE_3=TestCase3

TESTCASE_4=TestCase4

TESTCASE_5=TestCase5

ORDER_PROJ_TESTCASE_1=$TESTCASE_1/orderproject
VENDOR_PROJ_TESTCASE_1=$TESTCASE_1/vendorproject
ORDER_PROJ_TESTCASE_1_IMAGE=quay.io/zagaos/orderproject_testcase_1
VENDOR_PROJ_TESTCASE_1_IMAGE=quay.io/zagaos/vendorproject_testcase_1

ORDER_PROJ_TESTCASE_2=$TESTCASE_2/Ocp_OrderProject
VENDOR_PROJ_TESTCASE_2=$TESTCASE_2/Ocp_VendorProject
ORDER_PROJ_TESTCASE_2_IMAGE=quay.io/zagaos/orderproject_testcase_2
VENDOR_PROJ_TESTCASE_2_IMAGE=quay.io/zagaos/vendorproject_testcase_2

ORDER_PROJ_TESTCASE_3=$TESTCASE_3/Vm_OrderProduct
VENDOR_PROJ_TESTCASE_3=$TESTCASE_3/Ocp_VendorProduct
ORDER_PROJ_TESTCASE_3_IMAGE=quay.io/zagaos/orderproject_testcase_3
VENDOR_PROJ_TESTCASE_3_IMAGE=quay.io/zagaos/vendorproject_testcase_3

ORDER_PROJ_TESTCASE_4=$TESTCASE_4/OrderProject_4
VENDOR_PROJ_TESTCASE_4=$TESTCASE_4/VendorProject_4
ORDER_PROJ_TESTCASE_4_IMAGE=quay.io/zagaos/orderproject_testcase_4
VENDOR_PROJ_TESTCASE_4_IMAGE=quay.io/zagaos/vendorproject_testcase_4

SCHEMA_REGISTRY=$TESTCASE_5/schema-observability
SCHEMA_REGISTRY_IMAGE=quay.io/zagaos/schemaregistry_testcase_5


# push_to_git(){}


push_to_quay(){

    order_project_1(){
        ORDER_PROJ_TESTCASE_1_DOCKERFILE=$ORDER_PROJ_TESTCASE_1/Dockerfile
        podman build -t $ORDER_PROJ_TESTCASE_1_IMAGE -f $ORDER_PROJ_TESTCASE_1_DOCKERFILE
        podman push $ORDER_PROJ_TESTCASE_1_IMAGE
    }

    vendor_project_1(){
        VENDOR_PROJ_TESTCASE_1_DOCKERFILE=$VENDOR_PROJ_TESTCASE_1/Dockerfile
        podman build -t $VENDOR_PROJ_TESTCASE_1_IMAGE -f $VENDOR_PROJ_TESTCASE_1_DOCKERFILE
        podman push $VENDOR_PROJ_TESTCASE_1_IMAGE
    }

    order_project_2(){
        ORDER_PROJ_TESTCASE_2_DOCKERFILE=$ORDER_PROJ_TESTCASE_2/Dockerfile
        podman build -t $ORDER_PROJ_TESTCASE_2_IMAGE -f $ORDER_PROJ_TESTCASE_2_DOCKERFILE
        podman push $ORDER_PROJ_TESTCASE_2_IMAGE
    }

    vendor_project_2(){
        VENDOR_PROJ_TESTCASE_2_DOCKERFILE=$VENDOR_PROJ_TESTCASE_2/Dockerfile
        podman build -t $VENDOR_PROJ_TESTCASE_2_IMAGE -f $VENDOR_PROJ_TESTCASE_2_DOCKERFILE
        podman push $VENDOR_PROJ_TESTCASE_2_IMAGE
    }

    order_project_3(){
        ORDER_PROJ_TESTCASE_3_DOCKERFILE=$ORDER_PROJ_TESTCASE_3/Dockerfile
        podman build -t $ORDER_PROJ_TESTCASE_3_IMAGE -f $ORDER_PROJ_TESTCASE_3_DOCKERFILE
        podman push $ORDER_PROJ_TESTCASE_3_IMAGE
    }

    vendor_project_3(){
        VENDOR_PROJ_TESTCASE_3_DOCKERFILE=$VENDOR_PROJ_TESTCASE_3/Dockerfile
        podman build -t $VENDOR_PROJ_TESTCASE_3_IMAGE -f $VENDOR_PROJ_TESTCASE_3_DOCKERFILE
        podman push $VENDOR_PROJ_TESTCASE_3_IMAGE
    }

    order_project_4(){
        ORDER_PROJ_TESTCASE_4_DOCKERFILE=$ORDER_PROJ_TESTCASE_4/Dockerfile
        podman build -t $ORDER_PROJ_TESTCASE_4_IMAGE  -f $ORDER_PROJ_TESTCASE_4_DOCKERFILE
        podman push $ORDER_PROJ_TESTCASE_4_IMAGE
    }

    vendor_project_4(){
        VENDOR_PROJ_TESTCASE_4_DOCKERFILE=$VENDOR_PROJ_TESTCASE_4/Dockerfile
        podman build -t $VENDOR_PROJ_TESTCASE_4_IMAGE -f $VENDOR_PROJ_TESTCASE_4_DOCKERFILE
        podman push $VENDOR_PROJ_TESTCASE_4_IMAGE
    }

    schema_registry(){
        SCHEMA_REGISTRY_DOCKERFILE=./src/main/docker/Dockerfile.jvm
        cd $SCHEMA_REGISTRY
        podman build -t $SCHEMA_REGISTRY_IMAGE -f $SCHEMA_REGISTRY_DOCKERFILE .
        podman push $SCHEMA_REGISTRY_IMAGE
    }

    # order_project_1
    # order_project_2
    # order_project_3
    order_project_4

    # vendor_project_1
    # vendor_project_2
    # vendor_project_3
    vendor_project_4

    # schema_registry

}


# deploy_in_ocp(){}




push_to_quay