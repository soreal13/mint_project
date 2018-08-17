package com.mint.project.dtos;

public class StarpointDto {
	 private int sseq;
	   private int sgrade;
	   private int smseq;
	   private int suseq;
	  
	   public StarpointDto() {
	      super();
	      // TODO Auto-generated constructor stub
	   }
	   
	   public StarpointDto(int sseq, int sgrade, int smseq, int suseq) {
		      super();
		      this.sseq = sseq;
		      this.sgrade = sgrade;
		      this.smseq = smseq;
		      this.suseq = suseq;
		   }
		   
	   
	   public int getSseq() {
	      return sseq;
	   }
	   public void setSseq(int sseq) {
	      this.sseq = sseq;
	   }
	   public int getSgrade() {
	      return sgrade;
	   }
	   public void setSgrade(int sgrade) {
	      this.sgrade = sgrade;
	   }
	   public int getSmseq() {
	      return smseq;
	   }
	   public void setSmseq(int smseq) {
	      this.smseq = smseq;
	   }
	   public int getSuseq() {
	      return suseq;
	   }
	   public void setSuseq(int suseq) {
	      this.suseq = suseq;
	   }
	   @Override
	   public String toString() {
	      return "StarpointDto [sseq=" + sseq + ", sgrade=" + sgrade + ", smseq=" + smseq + ", suseq=" + suseq + "]";
	   }
	  

}
