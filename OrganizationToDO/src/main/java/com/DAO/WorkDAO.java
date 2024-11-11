package com.DAO;

import java.util.List;

import com.entity.WorkData;

public interface WorkDAO {
	public boolean addWork(WorkData b);
	public List<WorkData> getAllWork();
	public boolean deleteWork(int id);
}
