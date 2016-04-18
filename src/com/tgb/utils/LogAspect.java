package com.tgb.utils;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.AfterReturning;  

import javax.annotation.Resource;

import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;  
import org.springframework.stereotype.Component;
import org.springframework.beans.factory.annotation.Autowired;  

import com.tgb.model.Log;
import com.tgb.model.XuanTi;
import com.tgb.service.LogService;
import com.tgb.service.XuanTiService;

import java.util.Date;
import java.lang.reflect.Method;

@Aspect
public class LogAspect {
	@Autowired
	private LogService logService;	
	
	@Autowired
	private XuanTiService xuanTiService;
	
	@AfterReturning(pointcut="execution(* com.tgb.service.impl.*.save(..))", 
			argNames="returnValue", returning="returnValue")
	public void saveLogInsert(JoinPoint joinPoint, Object returnValue) throws Throwable {
		System.out.println("This is saveLogInsert!");
		int userId = 89757;
		
		if(userId == 0) {	// 没有管理员登录
			return ;
		}
		
		if(joinPoint.getArgs() == null) {	// 没有参数
			return ;
		}
		
		// 获取方法名   
        String methodName = joinPoint.getSignature().getName();  
        // 获取操作内容  
        String opContent = optionContent(joinPoint.getArgs(), methodName);  
        
        // 创建日志对象
        Log log = new Log();  
        log.setUserId(userId);  
        log.setCreateDate(new Date());
        log.setContent(opContent);  
        log.setOperation("添加");
        logService.log(log);
	}
	
	@AfterReturning(pointcut="execution(* com.tgb.service.impl.*.update(..))", 
			argNames="returnValue", returning="returnValue")
	public void updateLogInsert(JoinPoint joinPoint, Object returnValue) throws Throwable {
		System.out.println("This is updateLogInsert!");
		int userId = 89757;
		
		if(userId == 0) {	// 没有管理员登录
			return ;
		}
		
		if(joinPoint.getArgs() == null) {	// 没有参数
			return ;
		}
		
		//获取方法名   
        String methodName = joinPoint.getSignature().getName();  
        //获取操作内容  
        String opContent = optionContent(joinPoint.getArgs(), methodName);  
          
        Log log = new Log();  
        log.setUserId(userId);  
        log.setCreateDate(new Date());
        log.setContent(opContent);  
        log.setOperation("更新");
        logService.log(log);
	}
	
	@Around("execution(* com.tgb.service.impl.*.delete(..))")
	public Object deleteLogInsert(ProceedingJoinPoint pjp) throws Throwable {
		System.out.println("This is deleteLogInsert!");
		int userId = 89757;
		
		Object result = null;
	    // 环绕通知处理方法
	    try {	
	    	
	    	// 获取方法参数(被删除的影片id)
	    	/*String id = (String)pjp.getArgs()[0];
	 		XuanTi obj = null; // 选题对象
	    	if(id != null) {
	    		// 删除前先查询出影片对象
	    		obj = xuanTiService.findById(id);
	    	}*/
	 		
	    	//执行删除影片操作
	    	result = pjp.proceed();
	    	
	    	//if(obj != null) {
	    		
		        //创建日志对象
		    	Log log = new Log();
				log.setUserId(userId); // 用户编号
				log.setCreateDate(new Date()); // 操作时间
				
				//StringBuffer msg = new StringBuffer("影片名 : ");
				//msg.append(obj.getId());
				
				// 获取方法名   
		        String methodName = pjp.getSignature().getName();  
		        // 获取操作内容  
		        String opContent = optionContent(pjp.getArgs(), methodName);  
				
				log.setContent(opContent); // 操作内容
				
				log.setOperation("删除"); // 操作
				
				logService.log(log); // 添加日志
	    	//}	    	
	    }
	    catch(Exception ex) {
	        ex.printStackTrace();
	    }
	     
	    return result;
	}
	
	/** 
     * 使用Java反射来获取被拦截方法(insert、update)的参数值，  
     * 将参数值拼接为操作内容 
     * @param args 
     * @param mName 
     * @return 
     */  
    public String optionContent(Object[] args, String mName){  
        if(args == null) {  
            return null;  
        }  
        StringBuffer rs = new StringBuffer();  
        rs.append(mName);  
        String className = null;  
        int index = 1;  
        // 遍历参数对象   
        for(Object info : args) {  
            // 获取对象类型  
            className = info.getClass().getName();  
            className = className.substring(className.lastIndexOf(".") + 1);  
            rs.append("[参数"+index+"，类型:" + className + "，值:");  
            // 获取对象的所有方法  
            Method[] methods = info.getClass().getDeclaredMethods();  
            // 遍历方法，判断get方法   
            for(Method method : methods) {  
                String methodName = method.getName();  
                // 判断是不是get方法  
                if(methodName.indexOf("get") == -1){//不是get方法   
                    continue;//不处理  
                }  
                Object rsValue = null;  
                try{  
                    // 调用get方法，获取返回值  
                    rsValue = method.invoke(info);  
                }catch (Exception e) {  
                    continue;  
                }  
                // 将值加入内容中  
                rs.append("(" + methodName+ ":" + rsValue + ")");  
            }  
            rs.append("]");  
            index++;  
        }  
        return rs.toString();  
    }  
}
