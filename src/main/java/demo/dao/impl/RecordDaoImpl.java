package demo.dao.impl;

import org.springframework.stereotype.Repository;

import demo.dao.RecordDao;
import demo.model.Record;

@Repository
public class RecordDaoImpl extends GenericDaoImpl<Record, Integer> implements RecordDao {
}