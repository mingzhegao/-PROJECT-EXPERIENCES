package com.bd.customer.controller;

        import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bd.customer.service.CustomerService;
import com.bd.entity.BaseDict;
import com.bd.entity.Customer;
/*import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;*/

@Controller
@RequestMapping("customer")
public class CustomerController {
    @Autowired
    private CustomerService customerService;

    @PostMapping("/loadSelects.action")
    public String loadSelects(HttpSession session,Model model,Customer customer) {
        List<BaseDict> sources = customerService.loadSelects("002");
        List<BaseDict> industies = customerService.loadSelects("001");
        List<BaseDict> levels = customerService.loadSelects("006");
        session.setAttribute("sources", sources);
        session.setAttribute("industies", industies);
        session.setAttribute("levels", levels);
        return "redirect:/customer/showCustomer.action";

    }
    @RequestMapping("/showCustomer.action")
    public String list(/*Integer pageNum,*/ Customer customer , Model model){
    	/*PageHelper.startPage(pageNum,5);*/
        List<Customer> customers = customerService.getCustomers(customer);
     /*   PageInfo pageInfo=new PageInfo(customers);*/
        /*model.addAttribute("pageInfo",pageInfo);*/
        model.addAttribute("customers", customers);
        return "customer";
    }

    @RequestMapping("/addCustomer.action")
    @ResponseBody
    public boolean addCustomer(Customer customer){
        customer.setCust_user_id(null);
        customer.setCust_createtime(new Date());
        return customerService.addCustomer(customer);
    }
    @RequestMapping("/removeCustomer.action")
    @ResponseBody
    public boolean removeCustomer(String cust_id){
       return customerService.removeCustomer(cust_id);
    }
    @RequestMapping("/getCustomerById.action")
    @ResponseBody
    public Customer getCustomerById(String cust_id){
       return customerService.getCustomerById(cust_id);
    }
    @RequestMapping("/changeCustomer.action")
    @ResponseBody
    public Boolean changeCustomer(Customer customer){
       return customerService.changeCustomer(customer);
    }


}
