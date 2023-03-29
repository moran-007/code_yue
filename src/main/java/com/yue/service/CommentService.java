package com.yue.service;

import com.yue.entity.CommentInfo;

import java.util.List;

public interface  CommentService {
    // 添加评论
    int addComment(CommentInfo comment);

    // 根据评论ID删除评论
    int deleteCommentById(int id);

    // 根据图书ID删除评论
    int deleteCommentsByBookId(int bookId);

    // 更新评论
    int updateComment(CommentInfo comment);

    // 根据评论ID查询评论
    CommentInfo findCommentById(int id);

    // 根据图书ID查询评论列表
    List<CommentInfo> findCommentsByBookId(int bookId);
}
