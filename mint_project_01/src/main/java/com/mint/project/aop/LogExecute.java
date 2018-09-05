package com.mint.project.aop;

import org.aspectj.lang.JoinPoint;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LogExecute {

	//<--김소진 작성코드
	public void before(JoinPoint join) {
        Logger log=LoggerFactory.getLogger(join.getTarget()+"");
        log.debug("시작");
        log.info("---------------시작---------------");
	}
 
	public void afterReturning(JoinPoint join) {
        Logger log=LoggerFactory.getLogger(join.getTarget()+"");
        log.debug("끝");
 	}
 
 	public void daoError(JoinPoint join) {
        Logger log=LoggerFactory.getLogger(join.getTarget()+""+join.getKind());
        log.debug("에러: "+join.getArgs());
        log.debug("에러: "+join.toString());
 	}
	
}
