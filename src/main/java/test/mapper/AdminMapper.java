package test.mapper;

import java.util.List;

import test.model.Admin;

public interface AdminMapper {

	void insert(Admin user);

	boolean update(Admin user);

	boolean delete(int id);

	Admin findById(int id);

	List<Admin> findAll();
}