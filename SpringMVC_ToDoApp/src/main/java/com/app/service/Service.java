package com.app.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.app.entity.Work;
import com.app.repository.WorkRepository;

@org.springframework.stereotype.Service
public class Service implements IService
{
	@Autowired
	private WorkRepository userRepo;

	@Override
	public String storeWork(Work work) 
	{
		Work save = userRepo.save(work);
		if(save!=null)
		{
			return "success";
		}
		else
		{
			return "failed";

		}
	}

	

	
	

}
