package com.zaga;

import io.quarkus.mongodb.panache.common.MongoEntity;

@MongoEntity(collection = "users",database = "kafka")
public class UserInfo {
    private String username;
    private String password;
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    @Override
    public String toString() {
        return "UserInfo [username=" + username + ", password=" + password + "]";
    }
}
