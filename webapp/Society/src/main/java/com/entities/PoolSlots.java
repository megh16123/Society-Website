package com.entities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class PoolSlots {

	@Id
	private int id;
	private boolean morning1;
	private boolean morning2;
	private boolean evening1;
	private boolean evening2;
	private boolean evening3;
	public boolean isMorning1() {
		return morning1;
	}

	public void setMorning1(boolean morning1) {
		this.morning1 = morning1;
	}

	public boolean isMorning2() {
		return morning2;
	}

	public void setMorning2(boolean morning2) {
		this.morning2 = morning2;
	}

	public boolean isEvening1() {
		return evening1;
	}

	public void setEvening1(boolean evening1) {
		this.evening1 = evening1;
	}

	public boolean isEvening2() {
		return evening2;
	}

	public void setEvening2(boolean evening2) {
		this.evening2 = evening2;
	}

	public boolean isEvening3() {
		return evening3;
	}

	public void setEvening3(boolean evening3) {
		this.evening3 = evening3;
	}

	public PoolSlots(int id, boolean morning1, boolean morning2, boolean evening1, boolean evening2, boolean evening3) {
		super();
		this.id = id;
		this.morning1 = morning1;
		this.morning2 = morning2;
		this.evening1 = evening1;
		this.evening2 = evening2;
		this.evening3 = evening3;
	}	
	public PoolSlots() {
		// TODO Auto-generated constructor stub
	}

}
