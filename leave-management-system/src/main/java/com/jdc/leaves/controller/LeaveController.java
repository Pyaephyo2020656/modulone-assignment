package com.jdc.leaves.controller;

import java.time.LocalDate;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jdc.leaves.model.dto.input.LeaveForm;
import com.jdc.leaves.model.service.ClassService;
import com.jdc.leaves.model.service.LeaveService;
import com.jdc.leaves.model.service.StudentService;

@Controller
@RequestMapping("/leaves")
public class LeaveController {
	
	@Autowired
	private LeaveService leaveService;
	
	@Autowired
	private ClassService classService;
	
	@Autowired
	private StudentService studentService;
	

	@GetMapping
    public String index(
    		
    		@DateTimeFormat( pattern = "yyyy-MM-dd")  @RequestParam Optional<LocalDate> from, 
    		@DateTimeFormat (pattern = "yyyy-MM-dd")@RequestParam Optional<LocalDate> to,
    		ModelMap model) {
       
		  model.put("leaveList", leaveService.search(Optional.empty(), from, to));
        return "leaves";
    }
	
	@GetMapping("edit")
    public String edit(@RequestParam int classId,@RequestParam int studentId, ModelMap leaveModel) {
		leaveModel.put("clsInfo", classService.findInfoById(classId) );
		leaveModel.put("stuInfo", studentService.findInfoById(studentId));
        return "leaves-edit";
    }
	
	@PostMapping
    public String save(@Valid @ModelAttribute("leaveForm") LeaveForm leaveForm,BindingResult result, ModelMap leaveModel) {
		 
		if(result.hasErrors()) {
			leaveModel.put("clsInfo", classService.findInfoById(leaveForm.getClassId()));
			leaveModel.put("stuInfo", studentService.findInfoById(leaveForm.getStudent()));
			return "leaves-edit";
		}
		
		  leaveService.save(leaveForm);
        return "redirect:/leaves";
    }
	
	@ModelAttribute("leaveForm")
	LeaveForm form(@RequestParam(required = false) Integer  classId,@RequestParam(required = false) Integer studentId) {
		 
		if(null != classId  & null!= studentId) {
			
			var leaveForm = new LeaveForm(classId, studentId);
			leaveForm.setApplyDate(LocalDate.now());
			return leaveForm;
		}
		
		return new LeaveForm();
	}

}