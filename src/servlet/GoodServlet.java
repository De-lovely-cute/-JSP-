package servlet;

import impl.GoodsImpl;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Goods;

public class GoodServlet extends HttpServlet {

    /**
     * Constructor of the object.
     */
    public GoodServlet() {
        super();
    }

    /**
     * Destruction of the servlet. <br>
     */
    public void destroy() {
        super.destroy(); // Just puts "destroy" string in log
        // Put your code here
    }


    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.doPost(request, response);
    }


    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        response.setHeader("Content-Type", "text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        GoodsImpl goodsimpl = new GoodsImpl();
        String type = request.getParameter("type");
        if (type != null && type.equals("delete")) {
            String goods_src = request.getParameter("goods_src");
            try {
                goodsimpl.deleteGoods(goods_src);
                List<Goods> lists = new ArrayList<Goods>();

                try {
                    lists = goodsimpl.getAllGoods();
                    request.setAttribute("list", lists);
                    request.getRequestDispatcher("goods/edit.jsp").forward(request, response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } else if (type != null && type.equals("edit")) {

            String goods_src = request.getParameter("goods_src");
            goods_src = new String(goods_src.getBytes("iso8859-1"), "utf-8");
            try {
                Goods goods = goodsimpl.getGoodsId(goods_src);
                request.setAttribute("goods", goods);
                request.getRequestDispatcher("goods/revamp.jsp").forward(request, response);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } else {
            List<Goods> lists = new ArrayList<>();
            try {
                lists = goodsimpl.getAllGoods();
                request.setAttribute("list", lists);
                response.sendRedirect("goods/edit.jsp");
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
