package demo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import demo.dao.GenericDao;
import demo.model.Info;
import demo.service.InfoService;

@Service
public class InfoServiceImpl extends GenericServiceImpl<Info, Integer> implements InfoService {

    @Override
    @Autowired
    public void setGenericDao(GenericDao<Info, Integer> genericDao) {
        super.genericDao = genericDao;
    }
}