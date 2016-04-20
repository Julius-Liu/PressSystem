package com.tgb.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tgb.model.AssetsBalance;
import com.tgb.service.AssetsBalanceService;
import com.tgb.service.BookService;

@Controller
@RequestMapping("/assets_balance")
public class AssetsBalanceController {
	@Autowired
	private AssetsBalanceService assetsBalanceService;	
	
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
	 * è·³è½¬åˆ°æ·»åŠ  èµ„é‡‘ ç•Œé�¢
	 * @param request
	 * @return
	 */
	@RequestMapping("/toAddAssetsBalance")
	public String toAddAssetsBalance(HttpServletRequest request) {			
		return "/assets_balance/assets_balance_add";
	}
	
	/**
	 * æ·»åŠ  èµ„é‡‘ å¹¶é‡�å®šå�‘
	 * @param xuanTi
	 * @param request
	 * @return
	 */
	@RequestMapping("/addAssetsBalance")
	public String addAssetsBalance(AssetsBalance assetsBalance, HttpServletRequest request) {
		assetsBalanceService.save(assetsBalance);
		return "redirect:queryAssetsBalance?assets_balance_id=&customer_name=&bank_name=&record_creator=&currentPage=1";
	}
	
	/**
	 * ç¼–è¾‘ èµ„é‡‘
	 * @param xuanTi
	 * @param request
	 * @return
	 */
	@RequestMapping("/updateAssetsBalance")
	public String updateAssetsBalance(AssetsBalance assetsBalance, HttpServletRequest request) {	
		if(assetsBalanceService.update(assetsBalance)) {
			return "redirect:queryAssetsBalance?assets_balance_id=&customer_name=&bank_name=&record_creator=&currentPage=1";
		}else {
			return "/error";
		}
	}	
	
	/**
	 * èŽ·å�–æŒ‡å®š èµ„é‡‘ åˆ—è¡¨
	 * @param request
	 * @return
	 */
	@RequestMapping("/getAssetsBalance")
	public String getAssetsBalance(String id, HttpServletRequest request) {
		AssetsBalance assetsBalance = assetsBalanceService.findById(id);
				
		request.setAttribute("assetsBalance", assetsBalance);

		return "/assets_balance/assets_balance_edit";
	}
	
	/**
	 * æŸ¥çœ‹æŒ‡å®š èµ„é‡‘ è¯¦ç»†å†…å®¹
	 * @param request
	 * @return
	 */
	@RequestMapping("/checkAssetsBalance")
	public String checkAssetsBalance(String id, HttpServletRequest request) {
		AssetsBalance assetsBalance = assetsBalanceService.findById(id);
				
		request.setAttribute("assetsBalance", assetsBalance);
		
		return "/assets_balance/assets_balance_details";
	}	
	
	/**
	 * åˆ é™¤ èµ„é‡‘
	 * @param id
	 * @param request
	 * @param response
	 */
	@RequestMapping("/delAssetsBalance")
	public void delAssetsBalance(String id, HttpServletRequest request, HttpServletResponse response) {
		String result = "{\"result\":\"error\"}";		
		System.out.println("id = " + id);
		if(assetsBalanceService.delete(id)) {
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
	 * æŸ¥è¯¢ èµ„é‡‘ åˆ—è¡¨
	 * @param request
	 * @return
	 */
	@RequestMapping("/queryAssetsBalance")
	public String queryAssetsBalance(
			@RequestParam(value="assets_balance_id", required=false)String assets_balance_id, 
			@RequestParam(value="customer_name", required=false)String customer_name,
			@RequestParam(value="bank_name", required=false)String bank_name,
			@RequestParam(value="record_creator", required=false)String record_creator, 
			@RequestParam(value="currentPage", required=false)int currentPage, 
			HttpServletRequest request) {
		System.out.println("assets_balance_id: " + assets_balance_id);		
		System.out.println("customer_name: " + customer_name);
		System.out.println("bank_name: " + bank_name);
		System.out.println("record_creator: " + record_creator);
		System.out.println("currentPage: " + currentPage);
		
		List<AssetsBalance> assetsBalanceList = assetsBalanceService.queryAssetsBalanceInfo(assets_balance_id, customer_name, 
				bank_name, record_creator, currentPage);
		
        /*è®¡ç®—æ€»çš„é¡µæ•°å’Œæ€»çš„è®°å½•æ•°*/
		assetsBalanceService.calculateTotalPageAndRecordNumber(assets_balance_id, customer_name, 
				bank_name, record_creator);
		
        /*èŽ·å�–åˆ°æ€»çš„é¡µç �æ•°ç›®*/
        totalPage = assetsBalanceService.getTotalPage();
        /*å½“å‰�æŸ¥è¯¢æ�¡ä»¶ä¸‹æ€»è®°å½•æ•°*/
        recordNumber = assetsBalanceService.getRecordNumber();
        
        request.setAttribute("assets_balance_id", assets_balance_id);        
        request.setAttribute("customer_name", customer_name);
        request.setAttribute("bank_name", bank_name);
        request.setAttribute("record_creator", record_creator);
        
		request.setAttribute("assetsBalanceList", assetsBalanceList);
		
		request.setAttribute("recordNumber", recordNumber);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("totalPage", totalPage);
		return "/assets_balance/assets_balance_all";
	}	
}
