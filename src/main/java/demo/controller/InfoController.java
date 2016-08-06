package demo.controller;

import demo.model.Info;
import demo.service.InfoService;
import demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("info")
public class InfoController extends BaseController {

    @Autowired
    private InfoService infoService;

    @Autowired
    private UserService userService;

    @RequestMapping("create")
    private String create(Info info) {
        infoService.create(info);
        return "redirect:list";
    }

    @RequestMapping("list")
    private String list() {
        session.setAttribute("list", infoService.list());
        session.setAttribute("userInfos", userService.query("user.user_infos", null));
        return "redirect:/admin.jsp";
    }

    @RequestMapping("search/{id}")
    private String search(@PathVariable("id") Integer id) {
        session.setAttribute("info", infoService.search(id));
        return "redirect:/info/edit.jsp";
    }

    @RequestMapping("modify")
    private String modify(Info info) {
        infoService.modify(info);
        return "redirect:list";
    }

    @RequestMapping("remove/{id}")
    private String remove(@PathVariable("id") Integer id) {
        infoService.remove(id);
        return "redirect:/info/list";
    }
}