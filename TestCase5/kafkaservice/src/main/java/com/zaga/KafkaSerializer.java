package com.zaga;

import org.apache.kafka.common.serialization.Serializer;

import com.fasterxml.jackson.databind.ObjectMapper;

public class KafkaSerializer implements Serializer<UserInfo> {

    private final ObjectMapper objectMapper;

    public KafkaSerializer() {
        this.objectMapper = new ObjectMapper();
    }

    @Override
    public byte[] serialize(String topic, UserInfo productDetails) {
        try {
            return objectMapper.writeValueAsBytes(productDetails);
        } catch (Exception e) {
            throw new RuntimeException("Error serializing to JSON", e);
        }
    }

    @Override
    public void close() {
        // No resources to close for this serializer
    }
}
 
