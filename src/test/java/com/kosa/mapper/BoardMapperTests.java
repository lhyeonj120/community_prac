package com.kosa.mapper;

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
public class BoardMapperTests {
	@Autowired
	private BoardMapper mapper;
	
	@Test
	public void getListTest() {
		mapper.getList().forEach(board -> log.info(board));
	}
	
	@Test
	public void getTest() {
		log.info(mapper.get(1));
	}
	
	@Test
	public void createTest() {
		BoardVO board = new BoardVO();
		board.setTitle("새로운 글 작성");
		board.setWriter("hj");
		board.setContent("새로운 내용 작성~");
		mapper.create(board);
		
		log.info(board);
	}
}
