package serv;

import noute.News;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


//@WebServlet("/views/getnewsid")
@WebServlet("/views/getnewsid")
public class NewsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //News news = new News();

        String s = req.getParameter("id");
        int i = Integer.parseInt(s);
        String o = "text"+s;
        req.setAttribute("k", i);
        System.out.println(o);
        //req.setAttribute("maintext", news.getListnews().get(i));
        getServletContext().getRequestDispatcher("/views/news.jsp").forward(req, resp);

    }
}
