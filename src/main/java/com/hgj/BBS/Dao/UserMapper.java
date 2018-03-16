package com.hgj.BBS.Dao;

import com.hgj.BBS.Po.User;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface UserMapper {
    List<User> findAll();
    int addUser(User user);
    User findUserByName(User user);
}
