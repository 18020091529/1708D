package com.ryl.cms.dao;

import java.util.List;

import com.ryl.cms.domain.Comment;

public interface CommentDAO {

	int addComment(Comment comment);

	List commentList(Integer id);

}
