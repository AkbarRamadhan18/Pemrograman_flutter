package com.akbar.matakuliah.controller;

import com.akbar.matakuliah.entity.Matakuliah;
import com.akbar.matakuliah.service.MatakuliahService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/v1/matakuliah")
public class MatakuliahController {

    @Autowired
    private MatakuliahService matakuliahService;

    @GetMapping
    public List<Matakuliah> getAll() {
        return matakuliahService.getAll();
    }

    @GetMapping(path = "{id}")
    public Matakuliah getMatakuliah(@PathVariable("id") Long id) {
        return matakuliahService.getMatakuliah(id);
    }

    @PostMapping
    public void insert(@RequestBody Matakuliah matakuliah) {
        matakuliahService.insert(matakuliah);
    }

    @PutMapping(path = "{id}")
    public void update(@PathVariable("id") Long id, @RequestBody Matakuliah matakuliah) {
        matakuliahService.update(id, matakuliah);
    }

    @DeleteMapping(path = "{id}")
    public void delete(@PathVariable("id") Long id) {
        matakuliahService.delete(id);
    }
}
