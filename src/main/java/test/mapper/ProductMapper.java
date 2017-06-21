package test.mapper;

import java.util.List;

import test.model.Admin;
import test.model.Product;

public interface ProductMapper {

	void insert(Product pro);

	boolean update(Product pro);

	boolean delete(int id);

	Product findById(Product id);

	List<Product> findAll();
}