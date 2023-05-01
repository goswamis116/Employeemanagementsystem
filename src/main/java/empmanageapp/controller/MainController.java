package empmanageapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import empmanageapp.dao.EmployeeDao;
import empmanageapp.model.Employee;

@Controller
public class MainController {
	@Autowired
	private EmployeeDao employeeDao;
	@RequestMapping("/")
	public String home(Model m) {
		
	    List<Employee> employees=employeeDao.getEmployees();
	    m.addAttribute("employees", employees);
		return "index";
	}
	
	//showing add employee form
	@RequestMapping("/add-employee")
	public String addEmployee(Model m) {
		m.addAttribute("title","Add Employee");
		return "add_employee_form";
	}
//	handle add employee form
	
	@RequestMapping(value="/handle-employee",method = RequestMethod.POST)
	public RedirectView handleEmployee(@ModelAttribute Employee employee,HttpServletRequest request) {
		System.out.println(employee);
		employeeDao.createEmployee(employee);
		RedirectView redirectview=new RedirectView();
		redirectview.setUrl(request.getContextPath()+"/");
		return redirectview;
	}
//delete handles
	@RequestMapping("/delete/{employeeId}")
	public RedirectView deleteEmployee(@PathVariable("employeeId") int employeeId,HttpServletRequest request) {
		this.employeeDao.deleteEmployee(employeeId);
		RedirectView redirectview=new RedirectView();
		redirectview.setUrl(request.getContextPath()+"/");
		return redirectview;
	}
	@RequestMapping("/update/{employeeId}")
	public String Updateform(@PathVariable("employeeId")int eId,Model model) {
		Employee employee=this.employeeDao.getEmployee(eId);
		model.addAttribute("employee",employee);
		return "update_form";
	}
}
