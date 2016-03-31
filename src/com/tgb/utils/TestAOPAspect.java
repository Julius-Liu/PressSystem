package com.tgb.utils;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

@Aspect
public class TestAOPAspect {
	@Around("execution(* com.tgb.controller.TestAOPController.*(..))")
    public Object around(ProceedingJoinPoint pjp) throws Throwable {
        before();
        Object result = pjp.proceed();
        after();
        return result;
    }

    private void before() {
        System.out.println("This is TestAOPAspect Before");
    }

    private void after() {
        System.out.println("This is TestAOPAspect After");
    }
}
