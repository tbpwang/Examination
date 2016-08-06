package demo.controller;

import demo.model.User;
import demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created at 221
 * 16-7-9 上午11:18.
 */
@Controller
@RequestMapping("user")
public class UserController extends BaseController {

    @Autowired
    public UserService userService;

    @RequestMapping("register")
    public String register(User user) {
        userService.create(user);
        return "redirect:/index.jsp";
    }

    @RequestMapping("login")
    public String login(User user) {
        user = userService.login(user);
        System.out.println(user);
        if (user != null) {
            session.setAttribute("user", user);
            String role = user.getRole();
            if (role.equals("admin")) {
                session.setAttribute("userInfos", userService.query("user.user_infos", null));
                return "redirect:/user/list";
            }
            if (role.equals("user")) {
                return "redirect:/user.jsp";
            }

        }
        request.setAttribute("message", "invalid username or password.");
        return "index";
    }

    @RequestMapping("logout")
    public String logout() {
        session.invalidate();
        return "redirect:/index.jsp";
    }

    @RequestMapping("list")
    public String list() {
        session.setAttribute("users", userService.list());
        return "redirect:/admin.jsp";
    }
}
