package com.mint.project.dtos;

import java.sql.Date;

public class ReviewDto {
	
	
	 private int rseq;
	   private int rmseq;
	   private int ruseq;
	   private String rcontent;
	   private String rup;
	   private Date rdate;
	   private String rdelflag;
	   private String rupuseq;
	   
	   public ReviewDto() {
	      super();
	      // TODO Auto-generated constructor stub
	   }
	   
	   public ReviewDto(int rseq, int rmseq, int ruseq, String rcontent, String rup, String rupuseq, Date rdate, String rdelflag) {
		      super();
		      this.rseq = rseq;
		      this.rmseq = rmseq;
		      this.ruseq = ruseq;
		      this.rcontent = rcontent;
		      this.rup = rup;
		      this.rupuseq = rupuseq;
		      this.rdate = rdate;
		      this.rdelflag = rdelflag;
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
	   public String getRupuseq() {
	      return rupuseq;
	   }
	   public void setRupuseq(String rupuseq) {
	      this.rupuseq = rupuseq;
	   }
	   public Date getRdate() {
	      return rdate;
	   }
	   public void setRdate(Date rdate) {
	      this.rdate = rdate;
	   }
	   
	   public String getRdelflag() {
		return rdelflag;
	   }

	   public void setRdelflag(String rdelflag) {
		this.rdelflag = rdelflag;
	   }

	@Override
	   public String toString() {
	      return "ReviewDto [rseq=" + rseq + ", rmseq=" + rmseq + ", ruseq=" + ruseq + ", rcontent=" + rcontent + ", rup="
	            + rup + ", rupuseq=" + rupuseq + ", rdate=" + rdate + ", rdelflag=" + rdelflag + "]";
	   }

}
