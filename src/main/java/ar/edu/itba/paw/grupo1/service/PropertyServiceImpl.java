package ar.edu.itba.paw.grupo1.service;

import java.util.List;

import ar.edu.itba.paw.grupo1.dao.PropertyDao;
import ar.edu.itba.paw.grupo1.model.Property;

public class PropertyServiceImpl implements PropertyService {

	private PropertyDao propertyDao;

	public PropertyServiceImpl(PropertyDao propertyDao) {
		this.propertyDao = propertyDao;
	}

	public List<Property> getAll() {
		return (List<Property>) propertyDao.getAll();
	}
	
	public Property getById(int id) {
		return propertyDao.get(id);
	}
	
	public void save(Property property) {
		propertyDao.save(property);
	}

}
