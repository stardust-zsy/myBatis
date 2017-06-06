package test.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;

/** 
 * �������Ա��¼��־ 
 * 
 */  
public class LoginSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler{  
      
    @Override  
    public void onAuthenticationSuccess(HttpServletRequest request,  
            HttpServletResponse response, Authentication authentication) throws IOException,  
            ServletException {  
          
        UserDetails userDetails = (UserDetails)authentication.getPrincipal();  
          
        //�����¼��ʾ��Ϣ  
        System.out.println("����Ա " + userDetails.getUsername() + " ��¼");  
              
        super.onAuthenticationSuccess(request, response, authentication);  
    }  
      
}  
