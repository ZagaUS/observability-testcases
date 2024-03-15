package com.zaga;

import org.apache.kafka.common.serialization.Deserializer;

import com.fasterxml.jackson.databind.ObjectMapper;


public class KafkaDeserializer implements Deserializer<UserInfo> {

    private final ObjectMapper objectMapper;

    public KafkaDeserializer() {
       this.objectMapper = new ObjectMapper();
    }
 
    @Override
    public UserInfo deserialize(String topic, byte[] data) {
       try {
          return objectMapper.readValue(data, UserInfo.class);
       } catch (Exception e) {
          throw new RuntimeException("Error deserializing JSON", e);
       }
    }
    }


