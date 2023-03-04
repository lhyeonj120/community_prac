package com.kosa.service;

import java.util.List;

import com.kosa.domain.BoardVO;

public interface BoardService {
	public BoardVO get(int b_id);
	public List<BoardVO> getList();
	public void register(BoardVO board);
	public boolean modify(BoardVO board);
	public boolean remove(int b_id);
}
