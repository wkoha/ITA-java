package com.softserveinc.ita.service.impl;

import com.softserveinc.ita.dao.GroupDao;
import com.softserveinc.ita.entity.Course;
import com.softserveinc.ita.entity.Group;
import com.softserveinc.ita.exception.impl.GroupDoesntExistException;
import com.softserveinc.ita.exception.impl.GroupWithThisNameIsAlreadyExists;
import com.softserveinc.ita.service.GroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class GroupServiceImpl implements GroupService {

    @Autowired
    private GroupDao groupDao;

    @Override
    public ArrayList<Group> getGroupsByStatus(Group.Status groupStatus, long currentTime) {
        List<Group> groups = groupDao.getAllGroups();
        ArrayList<Group> choosenGroups = new ArrayList<>();
        for (Group group : groups) {
            switch (groupStatus) {
                case PLANNED:
                    if (currentTime < group.getStartBoardingTime()) {
                        choosenGroups.add(group);
                    }
                    break;
                case BOARDING:
                    if (currentTime > group.getStartBoardingTime() && currentTime < group.getStartTime()) {
                        choosenGroups.add(group);
                    }
                    break;
                case IN_PROCESS:
                    if (currentTime > group.getStartTime() && currentTime < group.getEndTime()) {
                        choosenGroups.add(group);
                    }
                    break;
                case FINISHED:
                    if (currentTime > group.getEndTime()) {
                        choosenGroups.add(group);
                    }
                    break;
            }
        }
        return choosenGroups;
    }

    @Override
    public ArrayList<Course> getCourses() {
        ArrayList<Course> courses = new ArrayList<>();
        courses.add(new Course("DevOps", "pen-devops.png"));
        courses.add(new Course("JavaScript", "pen-jsui.png"));
        courses.add(new Course("Java", "pen-java.png"));
        courses.add(new Course("Sharp", "pen-net.png"));
        return courses;
    }

    @Override
    public Group createGroup(Group group) {
        return groupDao.addGroup(group);
    }

    @Override
    public ArrayList<Group> getAllGroups() {
        return groupDao.getAllGroups();
    }

    @Override
    public Group getGroupById(String id) throws GroupDoesntExistException {
        Group searchedGroup = groupDao.getGroupById(id);
        if(searchedGroup == null){
            throw new GroupDoesntExistException();
        }
        return searchedGroup;
    }

    @Override
    public void removeGroup(String groupId) throws GroupDoesntExistException {
        try {
            groupDao.removeGroup(groupId);
        } catch (Exception e) {
            throw new GroupDoesntExistException();
        }
    }

    @Override
    public Group updateGroup(Group group) throws GroupWithThisNameIsAlreadyExists {
        try {
            Group updatedGroup = groupDao.updateGroup(group);
            return updatedGroup;
        }
        catch(Exception e){
            throw new GroupWithThisNameIsAlreadyExists();
        }
    }
}
