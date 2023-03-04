package com.kosa.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kosa.domain.BoardVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardSerivceTests {
	@Autowired
	private BoardService service;
	
//	@Test
//	public void existTest() {
//		log.info(service);
//		assertNotNull(service);
//	}
//	
//	@Test
//	public void registerTest() {
//		BoardVO board = new BoardVO();
//		board.setTitle("제목");
//		board.setContent("내용");
//		board.setWriter("나야");
//		service.register(board);
//		
//		log.info(board);
//	}
//	
//	@Test
//	public void getTest() {
//		log.info(service.get(5));
//		
//	}
//	
//	@Test
//	public void getListTest() {
//		service.getList().forEach(board -> log.info(board));
//	}
//	
//	@Test
//	public void modifyTest() {
//		BoardVO board = service.get(5);
//		board.setContent("내용을 수정하였습니다.");
//		
//		log.info(service.modify(board));
//		log.info(service.get(board.getB_id()));
//	}
	
	@Test
	public void removeTest() {
		log.info(service.remove(4));
		service.getList().forEach(board -> log.info(board));
	}
}
