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
	   private String runick;
	   
	   public ReviewDto() {
	      super();
	      // TODO Auto-generated constructor stub
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

	public String getRupuseq() {
		return rupuseq;
	}

	public void setRupuseq(String rupuseq) {
		this.rupuseq = rupuseq;
	}

	public String getRunick() {
		return runick;
	}

	public void setRunick(String runick) {
		this.runick = runick;
	}

	public ReviewDto(int rseq, int rmseq, int ruseq, String rcontent, String rup, Date rdate, String rdelflag,
			String rupuseq, String runick) {
		super();
		this.rseq = rseq;
		this.rmseq = rmseq;
		this.ruseq = ruseq;
		this.rcontent = rcontent;
		this.rup = rup;
		this.rdate = rdate;
		this.rdelflag = rdelflag;
		this.rupuseq = rupuseq;
		this.runick = runick;
	}

	@Override
	public String toString() {
		return "ReviewDto [rseq=" + rseq + ", rmseq=" + rmseq + ", ruseq=" + ruseq + ", rcontent=" + rcontent + ", rup="
				+ rup + ", rdate=" + rdate + ", rdelflag=" + rdelflag + ", rupuseq=" + rupuseq + ", runick=" + runick
				+ "]";
	}
	  
	   
}

