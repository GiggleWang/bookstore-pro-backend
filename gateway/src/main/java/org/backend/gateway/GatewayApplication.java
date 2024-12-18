package org.backend.gateway;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.gateway.route.RouteLocator;
import org.springframework.cloud.gateway.route.builder.RouteLocatorBuilder;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
@EnableDiscoveryClient
public class GatewayApplication {

    public static void main(String[] args) {
        SpringApplication.run(GatewayApplication.class, args);
    }

    @Bean
    public RouteLocator myRoutes(RouteLocatorBuilder builder) {
        return builder.routes()
                // 其他请求转发到 BOOKSTORE-SERVER
                .route(r -> r.path("/api/**")
                        .uri("lb://server"))
                // 转发到 BookAuthor 服务
                .route(r -> r.path("/author/**")
                        .uri("lb://BookAuthor"))
                // 转发到 calculate 服务
                .route(r -> r.path("/calculate/**")
                        .uri("lb://calculator"))
                .build();
    }

}