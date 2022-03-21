package impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dao.GoodsDao;
import bean.Conn;
import entity.Goods;

public class GoodsImpl implements GoodsDao{
	private Statement state;
	private Connection conn;
	private ResultSet rs;
	private PreparedStatement prestate;
	public List<Goods> getAllGoods() throws SQLException {
		List<Goods> list=new ArrayList<Goods>();
		String sql="select * from goods";
		conn=Conn.getConnection();
		state=conn.createStatement();
		rs=state.executeQuery(sql);
		Goods goods=null;
		while(rs.next()){
			goods=new Goods();
			goods.setGoods_src(rs.getString("goods_src"));
			goods.setGoods_name(rs.getString("goods_name"));
			goods.setGoods_price(rs.getString("goods_price"));
			list.add(goods);
		}
		return list;
	}
	public void deleteGoods(String id) throws SQLException {
		// TODO Auto-generated method stub
		String sql="delete from goods where goods_src='"+id +"'";
		conn=Conn.getConnection();
		state=conn.createStatement();
		state.execute(sql);
	}
	public void addGoods(Goods goods) throws SQLException {
		// TODO Auto-generated method stub
		String sql="insert into goods values(?,?,?)";
		conn=Conn.getConnection();
		 prestate=conn.prepareStatement(sql);
		 prestate.setString(1, goods.getGoods_src());
		 prestate.setString(2, goods.getGoods_name());
		 prestate.setString(3, goods.getGoods_price());
		 prestate.execute();
	}
	public void updateGoods(Goods goods) throws SQLException {
		// TODO Auto-generated method stub
		String sql="update  goods set goods_name=?," +
				" goods_price=? where goods_src=? ";
		  conn=Conn.getConnection();
		  prestate=conn.prepareStatement(sql);
		 prestate.setString(1, goods.getGoods_name());
		 prestate.setString(2, goods.getGoods_price());
		 prestate.setString(3, goods.getGoods_src());
		 prestate.execute();
	}
	public Goods getGoodsId(String id) throws SQLException {
		// TODO Auto-generated method stub
		String sql="select * from   goods where goods_src=?";
		conn=Conn.getConnection();
		  prestate=conn.prepareStatement(sql);
		 prestate.setString(1, id);
		   rs= prestate.executeQuery();
		 Goods  goods = new Goods();
		if( rs.next()){
			goods.setGoods_src(rs.getString("goods_src"));
			goods.setGoods_name(rs.getString("goods_name"));
			goods.setGoods_price(rs.getString("goods_price"));
		}
		return goods;
	}

}
