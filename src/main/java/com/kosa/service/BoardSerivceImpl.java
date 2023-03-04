package com.kosa.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kosa.domain.BoardVO;
import com.kosa.mapper.BoardMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class BoardSerivceImpl implements BoardService {

	private BoardMapper mapper;

	@Override
	public BoardVO get(int b_id) {
		return mapper.get(b_id);
	}

	@Override
	public List<BoardVO> getList() {
		return mapper.getList();
	}

	@Override
	public void register(BoardVO board) {
		mapper.createSelectKey(board);
	}

	@Override
	public boolean modify(BoardVO board) {
		return mapper.update(board) == 1 ? true : false;
	}

	@Override
	public boolean remove(int b_id) {
		return mapper.remove(b_id) == 1 ? true: false;
	}

}
