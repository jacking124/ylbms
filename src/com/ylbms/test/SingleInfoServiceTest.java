package com.ylbms.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

import com.ylbms.base.single.model.SingleInfo;
import com.ylbms.base.single.service.SingleInfoService;
/**
 * 
 * @author zhangJl
 * @version 1.0
 * @date 2013-6-13
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring-mvc.xml",
		"classpath:applicationContext.xml" })
@Transactional
@TransactionConfiguration(transactionManager = "txManager", defaultRollback = true)
public class SingleInfoServiceTest extends AbstractJUnit4SpringContextTests {
	@Autowired
	private SingleInfoService singleInfoService;

	@Test
	public void test() {
		SingleInfo singleinfo = new SingleInfo();
		singleinfo.setAz_Location("zhafafsdfsadf");
		singleInfoService.saveSingleInfo(singleinfo);
	}
}
