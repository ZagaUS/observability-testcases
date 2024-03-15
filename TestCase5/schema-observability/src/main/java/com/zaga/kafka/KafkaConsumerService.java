package com.zaga.kafka;

import java.util.ArrayList;
import java.util.List;

import org.eclipse.microprofile.reactive.messaging.Incoming;

import com.zaga.model.ProductDetails;
import com.zaga.service.ProductService;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;

@ApplicationScoped
public class KafkaConsumerService {

    private List<ProductDetails> productDetailsList = new ArrayList<ProductDetails>();

    @Inject
    private ProductService productService;

    @Incoming("logs-in") // Replace with your actual Kafka topic name
    public String consumeProductDetails(ProductDetails productDetails) {
        // Process the received ProductDetails and add it to the list
        System.out.println("=============PRODUCT DETAILS=============" + productDetails.getFirstname());
        productDetailsList.add(productDetails);
        productService.createProductDetails(productDetailsList);
        return "Successfully Created";
        // productDetailsList.add(productDetails);
    }

    public List<ProductDetails> getProductDetails() {
        // Return the list of ProductDetails data
        return productDetailsList;
    }
}