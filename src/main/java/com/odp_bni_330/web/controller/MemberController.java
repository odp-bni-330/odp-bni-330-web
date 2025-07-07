package com.odp_bni_330.web.controller;


import com.odp_bni_330.web.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MemberController {

    @Autowired
    private MemberRepository memberRepository;

    @GetMapping("/members")
    public String showMembers(Model model) {
        model.addAttribute("members", memberRepository.findAll());
        return "members";
    }
}
