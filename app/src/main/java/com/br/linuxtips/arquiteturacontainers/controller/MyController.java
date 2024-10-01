package com.br.linuxtips.arquiteturacontainers.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MyController {


    @GetMapping("/version")
    public ResponseEntity<String> getVersion() {
        return ResponseEntity.ok("v1");
    }

    @GetMapping("/healthcheck")
    public ResponseEntity<String> getHealthcheck() {
        return ResponseEntity.ok("ok");
    }

}
