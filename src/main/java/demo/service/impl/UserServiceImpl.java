package demo.service.impl;

import demo.dao.GenericDao;
import demo.model.User;
import demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created at 221
 * 16-7-16 上午11:37.
 */
@Service
public class UserServiceImpl extends GenericServiceImpl<User, Integer> implements UserService {

    @Override
    @Autowired
    public void setGenericDao(GenericDao<User, Integer> genericDao) {
        super.genericDao = genericDao;
    }

    @Override
    public User login(User user) {
        List<User> users = super.genericDao.query("user.login", user);
        if (users.size() == 1) {
            user = users.get(0);
            return user;
        }
        return null;
    }
}
