package demo.dao.impl;

import org.springframework.stereotype.Repository;

import demo.dao.InfoDao;
import demo.model.Info;

@Repository
public class InfoDaoImpl extends GenericDaoImpl<Info, Integer> implements InfoDao {
}