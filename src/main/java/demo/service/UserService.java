package demo.service;

import demo.model.User;

/**
 * Created at 221
 * 16-7-16 上午11:36.
 */
public interface UserService extends GenericService<User, Integer> {

    User login(User user);
}
