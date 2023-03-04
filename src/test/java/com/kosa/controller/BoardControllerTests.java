package com.kosa.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.kosa.domain.BoardVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml", "file:src/main/webapp/WEB-INF/spring/root-context.xml"})
@Log4j
public class BoardControllerTests {
	@Autowired
	private WebApplicationContext ctx;
	private MockMvc mockMvc;
	
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
//	@Test
//	public void testList() throws Exception{
//		log.info(
//				mockMvc.perform(MockMvcRequestBuilders.get("/board/list"))
//				.andReturn()
//				.getModelAndView()
//				.getModelMap());
//	}
//	
//	@Test
//	public void getTest() throws Exception{
//		log.info(
//				mockMvc.perform(MockMvcRequestBuilders.get("/board/get").param("b_id", "1"))
//				.andReturn()
//				.getModelAndView()
//				.getModelMap()
//				);
//	}
//	
//	@Test
//	public void registerTest() throws Exception{		
//		log.info(
//				mockMvc.perform(MockMvcRequestBuilders.post("/board/register").param("title", "새로운 제목222")
//						.param("content", "새로운 내용2222").param("writer", "이용자222"))
//				.andReturn()
//				.getModelAndView()
//				.getViewName()
//				);
//	}
//	
//	@Test
//	public void modifyTest() throws Exception{
//		log.info(
//				mockMvc.perform(MockMvcRequestBuilders.post("/board/modify")
//						.param("b_id", "5")
//						.param("title", "수정한 제목2222")
//						.param("content", "수정한 내용2222")
//						.param("writer", "이용자 이름 수정"))
//				.andReturn()
//				.getModelAndView()
//				.getViewName()
//				);
//	}
	
	@Test
	public void removeTest() throws Exception{
		log.info(
				mockMvc.perform(MockMvcRequestBuilders.post("/board/remove")
						.param("b_id", "1"))
				.andReturn()
				.getModelAndView()
				.getViewName()
				);
	}
}
