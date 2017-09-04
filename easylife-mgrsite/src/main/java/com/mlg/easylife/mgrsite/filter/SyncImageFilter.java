package com.mlg.easylife.mgrsite.filter;


import com.mlg.easylife.base.utils.BidConst;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;

/**
 * 共享图片
 * Created by 黄振强 on 2017/5/22.
 */
public class SyncImageFilter implements Filter {
    private ServletContext context;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.context = filterConfig.getServletContext();
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest)request;
        HttpServletResponse resp = (HttpServletResponse)response;
        String fileName =  req.getRequestURI();
        fileName = context.getRealPath(fileName);
        File sourceFile = new File(fileName);
        if(sourceFile.exists()){
            chain.doFilter(request,response);
        }else {
            File publishFile = new File(BidConst.PUBLIC_IMG_SHARE_PATH, FilenameUtils.getName(req.getRequestURI()));
            if(publishFile.exists()){
                FileUtils.copyFile(publishFile,sourceFile);
                resp.setHeader("Cache-Control","no-store");
                resp.setHeader("Pragma","no-cache");
                resp.setDateHeader("Expires",0);
                ServletOutputStream responseOutputStream = resp.getOutputStream();
                responseOutputStream.write(FileUtils.readFileToByteArray(publishFile));
                responseOutputStream.flush();
                responseOutputStream.close();
            }
        }
    }

    @Override
    public void destroy() {

    }
}
