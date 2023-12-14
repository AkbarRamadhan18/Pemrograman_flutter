/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.akbar.nilai.controller;

import com.akbar.nilai.entity.Nilai;
import com.akbar.nilai.service.NilaiService;
import com.akbar.nilai.vo.ResponseTemplateVo;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


/**
 *
 * @author Dell
 */
@RestController
@RequestMapping("api/v1/nilai")
public class NilaiController {
    @Autowired
    private NilaiService nilaiService;
    
    @GetMapping
    public List<Nilai> getAll(){
        return nilaiService.getAllNilai();
    }
    
    @GetMapping(path = "{id}")
    public ResponseTemplateVo getNilai(@PathVariable("id") Long idnilai){
        return nilaiService.getNilai(idnilai);
    }
}