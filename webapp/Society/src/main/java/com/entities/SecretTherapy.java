package com.entities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class SecretTherapy {
	@Id
	private int id;
    boolean slot1,slot2,slot3,slot4,slot5,slot6,slot7,slot8,slot9,slot10;
	public boolean isSlot4() {
		return slot4;
	}
	public void setSlot4(boolean slot4) {
		this.slot4 = slot4;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public boolean isSlot1() {
		return slot1;
	}
	public void setSlot1(boolean slot1) {
		this.slot1 = slot1;
	}
	public boolean isSlot2() {
		return slot2;
	}
	public void setSlot2(boolean slot2) {
		this.slot2 = slot2;
	}
	public boolean isSlot3() {
		return slot3;
	}
	public void setSlot3(boolean slot3) {
		this.slot3 = slot3;
	}
	public boolean isSlot5() {
		return slot5;
	}
	public void setSlot5(boolean slot5) {
		this.slot5 = slot5;
	}
	public boolean isSlot6() {
		return slot6;
	}
	public void setSlot6(boolean slot6) {
		this.slot6 = slot6;
	}
	public boolean isSlot7() {
		return slot7;
	}
	public void setSlot7(boolean slot7) {
		this.slot7 = slot7;
	}
	public boolean isSlot8() {
		return slot8;
	}
	public void setSlot8(boolean slot8) {
		this.slot8 = slot8;
	}
	public boolean isSlot9() {
		return slot9;
	}
	public void setSlot9(boolean slot9) {
		this.slot9 = slot9;
	}
	public boolean isSlot10() {
		return slot10;
	}
	public void setSlot10(boolean slot10) {
		this.slot10 = slot10;
	}
	public SecretTherapy() {
		this.id=1;
	 this.slot1=this.slot2=this.slot3=this.slot4=this.slot5=this.slot6=this.slot7=this.slot8=this.slot9=this.slot10=false;
	}

}
