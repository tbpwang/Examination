package demo.controller;

import demo.model.User;
import demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;

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
                session.setAttribute("userInfos", userService.query("user.single_user_infos", user));
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

    @RequestMapping("queryByDate")
    public String queryByDate(String min, String max) {
        User user = (User) session.getAttribute("user");
        HashMap<String, Object> map = new HashMap<>();
        map.put("id", user.getId());
        map.put("min", min);
        map.put("max", max);
        session.setAttribute("userInfos", userService.queryByMap("query_by_date", map));
        return "redirect:/user.jsp";
    }

    @RequestMapping("queryByNameAndDate")
    public String queryByNameAndDate(String username, String min, String max) {
        HashMap<String, Object> map = new HashMap<>();
        map.put("username", username);
        map.put("min", min);
        map.put("max", max);
        session.setAttribute("userInfos", userService.queryByMap("query_by_name_and_date", map));
        return "redirect:/admin.jsp";
    }
}
