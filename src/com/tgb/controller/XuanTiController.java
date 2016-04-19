package com.tgb.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tgb.model.Book;
import com.tgb.model.XuanTi;
import com.tgb.model.GaoJianSource;
import com.tgb.model.ChuShenComments;
import com.tgb.model.XuanTiStatus;

import com.tgb.service.BookService;
import com.tgb.service.XuanTiService;
import com.tgb.service.GaoJianSourceService;
import com.tgb.service.ChuShenCommentsService;
import com.tgb.service.XuanTiStatusService;
import com.tgb.utils.ExportExcelUtil;

import org.apache.log4j.Logger;

import com.tgb.service.impl.XuanTiServiceImpl;

@Controller
//@Component
@RequestMapping("/xuan_ti")
public class XuanTiController {
	@Autowired
	private XuanTiService xuanTiService;
	
	@Autowired
	private GaoJianSourceService gaoJianSourceService;
	
	@Autowired
	private ChuShenCommentsService chuShenCommentsService;
	
	@Autowired
	private XuanTiStatusService xuanTiStatusService;
	
	@Autowired
	private BookService bookService;	
	
	public static Logger log = Logger.getLogger(XuanTiController.class.getName());
	
	private int currentPage;
    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }
    public int getCurrentPage() {
        return currentPage;
    }
    
    private int totalPage;
    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }
    public int getTotalPage() {
        return totalPage;
    }
    
    private int recordNumber;
    public void setRecordNumber(int recordNumber) {
        this.recordNumber = recordNumber;
    }
    public int getRecordNumber() {
        return recordNumber;
    }
	
	/**
	 * 跳转到添加选题的页面
	 * @param request
	 * @return
	 */
	@RequestMapping("/toAddXuanTi")
	public String toAddXuanTi(HttpServletRequest request) {	
		List<GaoJianSource> gaoJianSourceList = gaoJianSourceService.findAll();
		List<ChuShenComments> chuShenCommentsList = chuShenCommentsService.findAll();
		List<XuanTiStatus> xuanTiStatusList = xuanTiStatusService.findAll();
		
		request.setAttribute("gaoJianSourceList", gaoJianSourceList);
		request.setAttribute("chuShenCommentsList", chuShenCommentsList);
		request.setAttribute("xuanTiStatusList", xuanTiStatusList);
		
		request.setAttribute("the_book_id", 0);
		request.setAttribute("book_name", "");
		request.setAttribute("sub_book_name", "");
		request.setAttribute("ISBN", "");	
		
		log.info("Now you are in toAddXuanTi");
		
		return "/xuan_ti/xuan_ti_add";
	}
	
	/**
	 * 保存选题
	 * @param xuanTi
	 * @param request
	 * @return
	 */
	@RequestMapping("/addXuanTi")
	public String addXuanTi(XuanTi xuanTi, HttpServletRequest request) {
		xuanTiService.save(xuanTi);
		
//		BeanFactory factory = new ClassPathXmlApplicationContext("config/bean.xml");		
//		XuanTiService xuanTiServiceBean = (XuanTiService)factory.getBean("xuanTiService");
//		xuanTiServiceBean.save(xuanTi);
		
		return "redirect:queryXuanTi?xuan_ti_id=&year=&source=0&status=0&currentPage=1";
	}
	
	/**
	 * 更新选题信息
	 * @param xuanTi
	 * @param request
	 * @return
	 */
	@RequestMapping("/updateXuanTi")
	public String updateXuanTi(XuanTi xuanTi, HttpServletRequest request) {	
		if(xuanTiService.update(xuanTi)) {
			return "redirect:queryXuanTi?xuan_ti_id=&year=&source=0&status=0&currentPage=1";
		}else {
			return "/error";
		}
	}	
	
	/**
	 * 获取选题信息
	 * @param request
	 * @return
	 */
	@RequestMapping("/getXuanTi")
	public String getXuanTi(String id, HttpServletRequest request) {
		XuanTi xuanTi = xuanTiService.findById(id);
		
		Book book = bookService.findById(xuanTi.getThe_book_id());
		
		List<GaoJianSource> gaoJianSourceList = gaoJianSourceService.findAll();
		List<ChuShenComments> chuShenCommentsList = chuShenCommentsService.findAll();
		List<XuanTiStatus> xuanTiStatusList = xuanTiStatusService.findAll();
				
		request.setAttribute("the_book_id", xuanTi.getThe_book_id());
		request.setAttribute("book_name", book.getBook_name());
		request.setAttribute("sub_book_name", book.getSub_book_name());
		request.setAttribute("ISBN", book.getISBN());
		
		request.setAttribute("xuanTi", xuanTi);
		request.setAttribute("gaoJianSourceList", gaoJianSourceList);
		request.setAttribute("chuShenCommentsList", chuShenCommentsList);
		request.setAttribute("xuanTiStatusList", xuanTiStatusList);

		return "/xuan_ti/xuan_ti_edit";
	}
	
	/**
	 * æŸ¥çœ‹æŒ‡å®š é€‰é¢˜ è¯¦ç»†å†…å®¹
	 * @param request
	 * @return
	 */
	@RequestMapping("/checkXuanTi")
	public String checkXuanTi(String id, HttpServletRequest request) {
		XuanTi xuanTi = xuanTiService.findById(id);
		
		Book book = bookService.findById(xuanTi.getThe_book_id());
		
		List<GaoJianSource> gaoJianSourceList = gaoJianSourceService.findAll();
		List<ChuShenComments> chuShenCommentsList = chuShenCommentsService.findAll();
		List<XuanTiStatus> xuanTiStatusList = xuanTiStatusService.findAll();
				
		request.setAttribute("the_book_id", xuanTi.getThe_book_id());
		request.setAttribute("book_name", book.getBook_name());
		request.setAttribute("sub_book_name", book.getSub_book_name());
		request.setAttribute("ISBN", book.getISBN());
		
		request.setAttribute("xuanTi", xuanTi);
		request.setAttribute("gaoJianSourceList", gaoJianSourceList);
		request.setAttribute("chuShenCommentsList", chuShenCommentsList);
		request.setAttribute("xuanTiStatusList", xuanTiStatusList);
		
		return "/xuan_ti/xuan_ti_details";
	}	
	
	/**
	 * ä¸º é€‰é¢˜ æ·»åŠ  ä¹¦æœ¬ ä¿¡æ�¯
	 * @param request
	 * @return
	 */
	@RequestMapping("/queryBook4XuanTi")
	public String queryBook4XuanTi(
			@RequestParam(value="the_book_id", required=true)int the_book_id,
			HttpServletRequest request) {
		System.out.println("the_book_id: " + the_book_id);
		Book book = bookService.findById(the_book_id);
				
		List<GaoJianSource> gaoJianSourceList = gaoJianSourceService.findAll();
		List<ChuShenComments> chuShenCommentsList = chuShenCommentsService.findAll();
		List<XuanTiStatus> xuanTiStatusList = xuanTiStatusService.findAll();		
		
		request.setAttribute("the_book_id", the_book_id);
		request.setAttribute("book_name", book.getBook_name());
		request.setAttribute("sub_book_name", book.getSub_book_name());
		request.setAttribute("ISBN", book.getISBN());
		
		request.setAttribute("gaoJianSourceList", gaoJianSourceList);
		request.setAttribute("chuShenCommentsList", chuShenCommentsList);
		request.setAttribute("xuanTiStatusList", xuanTiStatusList);
		
		return "/xuan_ti/xuan_ti_add";
	}	
	
	/**
	 * åˆ é™¤ é€‰é¢˜
	 * @param id
	 * @param request
	 * @param response
	 */
	@RequestMapping("/delXuanTi")
	public void delXuanTi(String id, HttpServletRequest request, HttpServletResponse response) {
		String result = "{\"result\":\"error\"}";		
		System.out.println("id = " + id);
		if(xuanTiService.delete(id)) {
			result = "{\"result\":\"success\"}";
		}
		
		response.setContentType("application/json");
		
		try {
			PrintWriter out = response.getWriter();
			out.write(result);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}	
	
	/**
	 * æŸ¥è¯¢ é€‰é¢˜ åˆ—è¡¨
	 * @param request
	 * @return
	 */
	@RequestMapping("/queryXuanTi")
	public String queryXuanTi(
			@RequestParam(value="xuan_ti_id", required=false)String xuan_ti_id, 
			@RequestParam(value="year", required=false)String year,
			@RequestParam(value="source", required=false)int source,
			@RequestParam(value="status", required=false)int status, 
			@RequestParam(value="currentPage", required=false)int currentPage, 
			HttpServletRequest request) {
		System.out.println("xuan_ti_id: " + xuan_ti_id);		
		System.out.println("year: " + year);
		System.out.println("source: " + source);
		System.out.println("status: " + status);
		System.out.println("currentPage: " + currentPage);
		
		List<GaoJianSource> gaoJianSourceList = gaoJianSourceService.findAll();
		List<ChuShenComments> chuShenCommentsList = chuShenCommentsService.findAll();
		List<XuanTiStatus> xuanTiStatusList = xuanTiStatusService.findAll();
		
		List<XuanTi> xuanTiList = xuanTiService.queryXuanTiInfo(xuan_ti_id, year, source, status, currentPage);
		
        /*è®¡ç®—æ€»çš„é¡µæ•°å’Œæ€»çš„è®°å½•æ•°*/
		xuanTiService.calculateTotalPageAndRecordNumber(xuan_ti_id, year, source, status);
		
        /*èŽ·å�–åˆ°æ€»çš„é¡µç �æ•°ç›®*/
        totalPage = xuanTiService.getTotalPage();
        /*å½“å‰�æŸ¥è¯¢æ�¡ä»¶ä¸‹æ€»è®°å½•æ•°*/
        recordNumber = xuanTiService.getRecordNumber();
        
        request.setAttribute("xuan_ti_id", xuan_ti_id);        
        request.setAttribute("year", year);
        request.setAttribute("source", source);
        request.setAttribute("status", status);
        
		request.setAttribute("xuanTiList", xuanTiList);
		
		request.setAttribute("gaoJianSourceList", gaoJianSourceList);
		request.setAttribute("chuShenCommentsList", chuShenCommentsList);
		request.setAttribute("xuanTiStatusList", xuanTiStatusList);
		
		request.setAttribute("recordNumber", recordNumber);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("totalPage", totalPage);
		
		return "/xuan_ti/xuan_ti_all";
	}	
	
	/*
	 * å¯¼å‡º Excel è¡¨æ ¼
	 */
	@RequestMapping("/exportExcel")
	public void exportExcel(
			@RequestParam(value="xuan_ti_id", required=false)String xuan_ti_id, 
			@RequestParam(value="year", required=false)String year,
			@RequestParam(value="source", required=false)int source,
			@RequestParam(value="status", required=false)int status, 
			HttpServletResponse response) {		
		List<XuanTi> xuanTiList = xuanTiService.queryXuanTiInfo(xuan_ti_id, year, source, status, currentPage);
		
        ExportExcelUtil ex = new ExportExcelUtil();
        String title = "é€‰é¢˜ä¿¡æ�¯è¡¨"; 
        String[] headers = { "é€‰é¢˜ç¼–å�·", "é€‰é¢˜ç±»åž‹", "é€‰é¢˜å¹´ä»½", "é€‰é¢˜å­£åº¦", "å›¾ä¹¦å��ç§°",
        		"ä¸›ä¹¦å��ç§°", "éƒ¨é—¨", "ç”³æŠ¥äºº", "ç¨¿ä»¶æ�¥æº�", "åˆ�å®¡æ„�è§�", "é€‰é¢˜çŠ¶æ€�", "ISBN"};
        List<String[]> dataset = new ArrayList<String[]>(); 
        for(int i=0;i<xuanTiList.size();i++) {
        	XuanTi xuanTi = xuanTiList.get(i); 
        	dataset.add(new String[] {xuanTi.getId() + "",
        			xuanTi.getType(),
        			xuanTi.getYear(),
        			xuanTi.getSeason() + "",
        			xuanTi.getBook_name(),
        			xuanTi.getSub_book_name(),
        			xuanTi.getDepartment(),
        			xuanTi.getOriginator(),
        			xuanTi.getGaoJianSource(),
        			xuanTi.getChuShenComments(),
        			xuanTi.getXuanTiStatus(),
        			xuanTi.getISBN()});
        }
		OutputStream out = null; // åˆ›å»ºä¸€ä¸ªè¾“å‡ºæµ�å¯¹è±¡ 
		try { 
			out = response.getOutputStream();
			response.setHeader("Content-Disposition","attachment;filename="+"xuan_ti.xls"); // filenameæ˜¯ä¸‹è½½çš„xlsçš„å��ï¼Œå»ºè®®æœ€å¥½ç”¨è‹±æ–‡ 
			response.setContentType("application/msexcel;charset=UTF-8");//è®¾ç½®ç±»åž‹ 
			response.setHeader("Pragma","No-cache");	// è®¾ç½®å¤´ 
			response.setHeader("Cache-Control","no-cache");	// è®¾ç½®å¤´ 
			response.setDateHeader("Expires", 0);	// è®¾ç½®æ—¥æœŸå¤´  
			ex.exportExcel("book.xls", title, headers, dataset, out);
			out.flush();
		} catch (IOException e) { 
			e.printStackTrace(); 
		}finally{
			try{
				if(out!=null){ 
					out.close(); 
				}
			}catch(IOException e){ 
				e.printStackTrace(); 
			} 
		}
	}
}
