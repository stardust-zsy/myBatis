package test.mapper;

import java.util.List;

import test.model.Shop;
import test.model.Test;

public interface ShopMapper {

	void insert(Shop shop);

	boolean delete(String id);

	Shop findById(Test test);

	List<Shop> findAll();
}