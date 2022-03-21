package dao;

import java.sql.SQLException;
import java.util.List;

import entity.Goods;


public interface GoodsDao {
	List<Goods>  getAllGoods() throws SQLException;
	//int insertProject(Project project) throws SQLException;
	void deleteGoods(String id) throws SQLException;
	//void updateProject(Project project)throws SQLException;
}
