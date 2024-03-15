package com.zaga;

import java.util.List;
import java.util.concurrent.CompletableFuture;


import io.smallrye.mutiny.Uni;
import io.vertx.mutiny.ext.auth.User;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;


@Path("/kafka")
@ApplicationScoped
public class KafkaController {

    @Inject
    private KafkaServices kafkaServices;

    @Inject
    private UserInfoRepo userInfoRepo;


    @POST
    @Path("/produce")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response produceMessage(UserInfo user) {
        System.out.println("--------------------------The Kafka connection is established-----------------------------");
        kafkaServices.produce(user);
          System.out.println("--------------------The Kafka connection is closed----------------------------");
        return Response.ok().build();
    }

    @GET
    @Path("/consume")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public List<UserInfo> consumeMessage() {
        List<UserInfo> user = kafkaServices.getUserInfos(); 
        userInfoRepo.persist(user);
        System.out.println("MESSAGES-------------" + user);
        return user;    
    }
}





