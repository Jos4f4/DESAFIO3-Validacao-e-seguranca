package com.devsuperior.demo.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.devsuperior.demo.entities.City;
import com.devsuperior.demo.repositories.CityRepository;

import jakarta.validation.Valid;

@RestController
@RequestMapping("/cities")
public class CityController {

    @Autowired
    private CityRepository cityRepository;

    @PostMapping
    public ResponseEntity<City> create(@Valid @RequestBody City city) {
        City saved = cityRepository.save(city);
        return ResponseEntity.status(HttpStatus.CREATED).body(saved);
    }

    @GetMapping
    public ResponseEntity<List<City>> list() {
        List<City> list = cityRepository.findAll(Sort.by("name"));
        return ResponseEntity.ok(list);
    }
}
