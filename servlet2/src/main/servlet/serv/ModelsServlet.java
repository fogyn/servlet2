package serv;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/views/getmodelsid")
public class ModelsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String s = req.getParameter("id");
        int i = Integer.parseInt(s);
        String o = "text"+s;
        req.setAttribute("model", i);
        System.out.println(o);
        //req.setAttribute("maintext", news.getListnews().get(i));
        getServletContext().getRequestDispatcher("/views/models.jsp").forward(req, resp);
    }
}
