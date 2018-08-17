package com.mint.project.dtos;

import java.sql.Date;

public class ReviewDto {
	
	
	 private int rseq;
	   private int rmseq;
	   private int ruseq;
	   private String rcontent;
	   private String rup;
	   private String rdown;
	   private Date rdate;
	   
	   public ReviewDto() {
	      super();
	      // TODO Auto-generated constructor stub
	   }
	   
	   public ReviewDto(int rseq, int rmseq, int ruseq, String rcontent, String rup, String rdown, Date rdate) {
		      super();
		      this.rseq = rseq;
		      this.rmseq = rmseq;
		      this.ruseq = ruseq;
		      this.rcontent = rcontent;
		      this.rup = rup;
		      this.rdown = rdown;
		      this.rdate = rdate;
	   }

	   
	   public int getRseq() {
	      return rseq;
	   }
	   public void setRseq(int rseq) {
	      this.rseq = rseq;
	   }
	   public int getRmseq() {
	      return rmseq;
	   }
	   public void setRmseq(int rmseq) {
	      this.rmseq = rmseq;
	   }
	   public int getRuseq() {
	      return ruseq;
	   }
	   public void setRuseq(int ruseq) {
	      this.ruseq = ruseq;
	   }
	   public String getRcontent() {
	      return rcontent;
	   }
	   public void setRcontent(String rcontent) {
	      this.rcontent = rcontent;
	   }
	   public String getRup() {
	      return rup;
	   }
	   public void setRup(String rup) {
	      this.rup = rup;
	   }
	   public String getRdown() {
	      return rdown;
	   }
	   public void setRdown(String rdown) {
	      this.rdown = rdown;
	   }
	   public Date getRdate() {
	      return rdate;
	   }
	   public void setRdate(Date rdate) {
	      this.rdate = rdate;
	   }
	   @Override
	   public String toString() {
	      return "ReviewDto [rseq=" + rseq + ", rmseq=" + rmseq + ", ruseq=" + ruseq + ", rcontent=" + rcontent + ", rup="
	            + rup + ", rdown=" + rdown + ", rdate=" + rdate + "]";
	   }

}
