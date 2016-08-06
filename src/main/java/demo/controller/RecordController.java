package demo.controller;

import demo.model.Record;
import demo.model.User;
import demo.service.RecordService;
import demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("record")
public class RecordController extends BaseController {

    @Autowired
    private RecordService recordService;

    @Autowired
    private UserService userService;

    @RequestMapping("create")
    private String create(Record record) {
        User user = (User) session.getAttribute("user");
        record.setUserId(user.getId());
        recordService.create(record);
        return "redirect:list";
    }

    @RequestMapping("leaderCreate")
    private String leaderCreate(Record record) {
        User user = (User) session.getAttribute("user");
        record.setUserId(user.getId());
        recordService.create(record);
        return "redirect:leaderList";
    }

    @RequestMapping("list")
    private String list() {
        User user = (User) session.getAttribute("user");
        List<User> users =  userService.query("user.employee_records", user);
        session.setAttribute("users", users);
        return "redirect:/employee.jsp";
    }

    @RequestMapping("leaderList")
    private String leaderList() {
        User user = (User) session.getAttribute("user");
        List<User> users =  userService.query("user.team_records", user);
        session.setAttribute("users", users);
        return "redirect:/leader.jsp";
    }

    @RequestMapping("search/{id}")
    private String search(@PathVariable("id") Integer id) {
        session.setAttribute("record", recordService.search(id));
        return "redirect:/record/edit.jsp";
    }

    @RequestMapping("modify")
    private String modify(Record record) {
        recordService.modify(record);
        return "redirect:list";
    }

    @RequestMapping("remove/{id}")
    private String remove(@PathVariable("id") Integer id) {
        recordService.remove(id);
        return "redirect:/record/list";
    }
}