package demo.service.impl;

import demo.dao.GenericDao;
import demo.service.GenericService;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

/**
 * Created at 221
 * 16-7-16 上午11:33.
 */
public abstract class GenericServiceImpl<T extends Serializable, ID extends Number> implements GenericService<T, ID> {

    protected GenericDao<T, ID> genericDao;

    public abstract void setGenericDao(GenericDao<T, ID> genericDao);

    @Override
    public void create(T t) {
        genericDao.create(t);
    }

    @Override
    public List<T> query(String statement, T t) {
        return genericDao.query(statement, t);
    }

    @Override
    public List<T> list() {
        return genericDao.list();
    }

    @Override
    public T search(ID id) {
        return genericDao.search(id);
    }

    @Override
    public void modify(T t) {
        genericDao.modify(t);
    }

    @Override
    public void remove(ID id) {
        genericDao.remove(id);
    }

    public List<T> queryByMap(String statement, Map<String, Object> map) {
        return genericDao.queryByMap(statement, map);
    }
}
