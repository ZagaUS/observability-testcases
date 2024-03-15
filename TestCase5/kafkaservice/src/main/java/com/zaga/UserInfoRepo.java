package com.zaga;

import io.quarkus.mongodb.panache.PanacheMongoRepository;
import jakarta.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class UserInfoRepo implements PanacheMongoRepository<UserInfo>{
    
}
