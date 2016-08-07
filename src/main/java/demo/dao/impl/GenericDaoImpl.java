package demo.dao.impl;

import demo.dao.GenericDao;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;
import java.util.Map;

/**
 * Created at 221
 * 16-7-10 下午4:19.
 */
public class GenericDaoImpl<T extends Serializable, ID extends Number> implements GenericDao<T, ID> {

    private String namespace;

    @SuppressWarnings("unchecked")
    public GenericDaoImpl() {
        Class<T> clazz = (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
        namespace = clazz.getSimpleName().toLowerCase().concat(".");
    }

    @Autowired
    private SqlSession sqlSession;

    @Override
    public void create(T t) {
        sqlSession.insert(namespace.concat("create"), t);
    }

    @Override
    public List<T> query(String statement, T t) {
        return sqlSession.selectList(statement, t);
    }

    @Override
    public List<T> list() {
        return sqlSession.selectList(namespace.concat("list"));
    }

    @Override
    public T search(ID id) {
        return sqlSession.selectOne(namespace.concat("search"), id);
    }

    @Override
    public void modify(T t) {
        sqlSession.update(namespace.concat("modify"), t);
    }

    @Override
    public void remove(ID id) {
        sqlSession.delete(namespace.concat("remove"), id);
    }

    @Override
    public List<T> queryByMap(String statement, Map map) {
        return sqlSession.selectList(statement, map);
    }
}
