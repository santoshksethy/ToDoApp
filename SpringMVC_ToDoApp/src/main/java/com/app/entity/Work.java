package com.app.entity;

import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.SequenceGenerator;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
@RequiredArgsConstructor
public class Work
{
	@Id
	@SequenceGenerator(name="gen1", sequenceName = "workId_Seq", initialValue = 1000, allocationSize = 1 )
	@GeneratedValue(generator = "gen1", strategy = GenerationType.SEQUENCE)
	private String workId;
	
	@NonNull
	@Column(length=100)
	private String category;
	
	
	@SuppressWarnings("unused")
	private List<String> tasks;
	
	 @ManyToOne(fetch = FetchType.LAZY)
	    @JoinColumn(name = "user_id")
	private User user;

	@Override
	public String toString() {
		return "Work [workId=" + workId + ", category=" + category + ", user=" + user + "]";
	}
	
	
	
}
