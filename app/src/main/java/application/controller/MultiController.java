package application.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import application.model.Multiplayer;
import application.repository.multiRepository;

@Controller
@RequestMapping("/multiplayer")
public class MultiController {
    @Autowired
    private multiRepository multiRepo;

    @RequestMapping("/insert")
    public String insert() {
        return "multi/insert";
    }

    @RequestMapping(value = "insert", method = RequestMethod.POST)
    public String insert(@RequestParam("escolha") String escolha) {
        Multiplayer genero = new Multiplayer();
        genero.setescolha(escolha);
        
        multiRepo.save(genero);

        return "redirect:/multi/list";
    }

    @RequestMapping("/list")
    public String list(Model ui) {
        ui.addAttribute("multi", multiRepo.findAll());
        
        return "/multi/list";
    }

    @RequestMapping("/update")
    public String update(@RequestParam("id") long id, Model ui) {
        Optional<Multiplayer> result = multiRepo.findById(id);
        if(result.isPresent()) {
            ui.addAttribute("multi", result.get());
            return "/multi/update";
        }
        
        return "redirect:/multi/list";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(@RequestParam("id") long id, @RequestParam("escolha") String escolha) {
        Optional<Multiplayer> result = multiRepo.findById(id);
        if(result.isPresent()) {
            result.get().setescolha(escolha);

            multiRepo.save(result.get());
        }
        return "redirect:/multi/list";
    }

    @RequestMapping("/delete")
    public String delete(@RequestParam("id") long id, Model ui) {
        Optional<Multiplayer> result = multiRepo.findById(id);
        if(result.isPresent()) {
            ui.addAttribute("multi", result.get());
            return "/multi/delete";
        }
        
        return "redirect:/multi/list";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String delete(@RequestParam("id") long id) {
        multiRepo.deleteById(id);

        return "redirect:/multi/list";
    }
}
