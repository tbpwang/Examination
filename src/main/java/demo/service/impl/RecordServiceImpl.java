package demo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import demo.dao.GenericDao;
import demo.model.Record;
import demo.service.RecordService;

@Service
public class RecordServiceImpl extends GenericServiceImpl<Record, Integer> implements RecordService {

    @Override
    @Autowired
    public void setGenericDao(GenericDao<Record, Integer> genericDao) {
        super.genericDao = genericDao;
    }
}