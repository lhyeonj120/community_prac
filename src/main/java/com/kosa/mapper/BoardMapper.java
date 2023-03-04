package com.kosa.mapper;

import java.util.List;

import com.kosa.domain.BoardVO;

public interface BoardMapper {
	public List<BoardVO> getList();
	public BoardVO get(int b_id);
	public void create(BoardVO board);
}