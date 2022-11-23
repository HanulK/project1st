package util.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

/**
 * Servlet Filter implementation class CharacterEncoding
 */
@WebFilter(urlPatterns = "/*")
public class CharacterEncoding implements Filter {

    public CharacterEncoding() {
    	System.out.println("CharacterEncoding() ������ ����");
     
       
    }

	
	public void destroy() {
		System.out.println("CharacterEncoding.destroy() ����");
	
	}

	
	public void doFilter(ServletRequest srequest, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) srequest;
		request.setCharacterEncoding("UTF-8");
		System.out.println("CharacterEncoding.doFilter() ����");
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("CharacterEncoding.init() ����");
	
	}

}
