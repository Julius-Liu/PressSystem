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
import com.tgb.service.impl.LogServiceImpl;

import java.util.Date;
import java.lang.reflect.Method;

@Aspect
@Component
public class LogAspect {
	@Autowired
	private LogServiceImpl logServiceImpl;
	
	@Around("execution(* com.tgb.service.impl.*.*(..))")
    public Object around(ProceedingJoinPoint pjp) throws Throwable {
        before();
        Object result = pjp.proceed();
        after();
        return result;
    }

    private void before() {
        System.out.println("This is LogAspect Before");
    }

    private void after() {
        System.out.println("This is LogAspect After");
    }
	
    /*
	@AfterReturning(pointcut="execution(* com.tgb.controller.*.add*(..))", 
			argNames="returnValue", returning="returnValue")
	*/
	public void saveLogInsert(JoinPoint joinPoint, Object returnValue) throws Throwable {
		System.out.println("This is saveLogInsert!");
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
        String opContent = optionContent(joinPoint.getArgs(),methodName);  
          
        Log log = new Log();  
        log.setUserId(userId);  
        log.setCreateDate(new Date());
        log.setContent("添加操作被执行 - " + opContent);  
        logServiceImpl.save(log);
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
        String opContent = optionContent(joinPoint.getArgs(),methodName);  
          
        Log log = new Log();  
        log.setUserId(userId);  
        log.setCreateDate(new Date());
        log.setContent("更新操作被执行 - " + opContent);  
        logServiceImpl.save(log);
	}
	
	@AfterReturning(pointcut="execution(* com.tgb.service.impl.*.delete(..))", 
			argNames="returnValue", returning="returnValue")
	public void deleteLogInsert(JoinPoint joinPoint, Object returnValue) throws Throwable {
		System.out.println("This is deleteLogInsert!");
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
        String opContent = optionContent(joinPoint.getArgs(),methodName);  
          
        Log log = new Log();  
        log.setUserId(userId);  
        log.setCreateDate(new Date());
        log.setContent("删除操作被执行 - " + opContent);  
        logServiceImpl.save(log);
	}
	
	/** 
     * 使用Java反射来获取被拦截方法(insert、update)的参数值，  
     * 将参数值拼接为操作内容 
     * @param args 
     * @param mName 
     * @return 
     */  
    public String optionContent(Object[] args, String mName){  
        if(args == null){  
            return null;  
        }  
        StringBuffer rs = new StringBuffer();  
        rs.append(mName);  
        String className = null;  
        int index = 1;  
        //遍历参数对象   
        for(Object info : args){  
            //获取对象类型  
            className = info.getClass().getName();  
            className = className.substring(className.lastIndexOf(".") + 1);  
            rs.append("[参数"+index+"，类型:" + className + "，值:");  
            //获取对象的所有方法  
            Method[] methods = info.getClass().getDeclaredMethods();  
            // 遍历方法，判断get方法   
            for(Method method : methods){  
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
                //将值加入内容中  
                rs.append("(" + methodName+ ":" + rsValue + ")");  
            }  
            rs.append("]");  
            index ++;  
        }  
        return rs.toString();  
    }  
}
