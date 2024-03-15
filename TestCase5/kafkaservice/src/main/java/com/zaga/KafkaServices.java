package com.zaga;

import java.util.ArrayList;
import java.util.List;

import org.eclipse.microprofile.reactive.messaging.Channel;
import org.eclipse.microprofile.reactive.messaging.Emitter;
import org.eclipse.microprofile.reactive.messaging.Incoming;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;


@ApplicationScoped
public class KafkaServices {

    @Inject
    @Channel("user") 
    Emitter<UserInfo> kafkaProducer;

    public void produce(UserInfo user) {
        kafkaProducer.send(user);
    }    
    
     
 private List<UserInfo> userInfos = new ArrayList();

    @Incoming("user") 
    public void consumeProductDetails(UserInfo user) {
        userInfos.add(user);
    }

    public List<UserInfo> getUserInfos() {
        return userInfos;
    }
}