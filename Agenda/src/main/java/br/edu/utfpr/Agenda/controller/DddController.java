package br.edu.utfpr.Agenda.controller;

import com.google.gson.Gson;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletConfig;

@WebServlet(name = "DddController", value = "/ddd")
public class DddController extends HttpServlet {
    Map<String, List<String>> dddByStateMap = new HashMap<String, List<String>>();

    @Override
    public void init(ServletConfig config) throws ServletException {
        dddByStateMap.put("SP", Arrays.asList("11","12"));
        dddByStateMap.put("PR", Arrays.asList("42","43"));
        dddByStateMap.put("SC", Arrays.asList("47","48"));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String state = request.getParameter("estado");
        String json = new Gson().toJson(dddByStateMap.get(state));

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(json);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
