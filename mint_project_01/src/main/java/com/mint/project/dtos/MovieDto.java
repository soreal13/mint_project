package com.mint.project.dtos;

public class MovieDto {
   
   private int mseq;
      private String mimg;
      private String mkeyw;
      private String mshowdate;
      private String mdirector;
      private String mtitle;
      private String mage;
      private String mactor;
      private String msummary;
      private String mgrade;
      private String mmdpick;
      private String mfollow;
      
      
      
   public MovieDto() {
      super();
      // TODO Auto-generated constructor stub
   }
   public int getMseq() {
      return mseq;
   }
   public void setMseq(int mseq) {
      this.mseq = mseq;
   }
   public String getMimg() {
      return mimg;
   }
   public void setMimg(String mimg) {
      this.mimg = mimg;
   }
   public String getMkeyw() {
      return mkeyw;
   }
   public void setMkeyw(String mkeyw) {
      this.mkeyw = mkeyw;
   }
   public String getMshowdate() {
      return mshowdate;
   }
   public void setMshowdate(String mshowdate) {
      this.mshowdate = mshowdate;
   }
   public String getMdirector() {
      return mdirector;
   }
   public void setMdirector(String mdirector) {
      this.mdirector = mdirector;
   }
   public String getMtitle() {
      return mtitle;
   }
   public void setMtitle(String mtitle) {
      this.mtitle = mtitle;
   }
   public String getMage() {
      return mage;
   }
   public void setMage(String mage) {
      this.mage = mage;
   }
   public String getMactor() {
      return mactor;
   }
   public void setMactor(String mactor) {
      this.mactor = mactor;
   }
   public String getMsummary() {
      return msummary;
   }
   public void setMsummary(String msummary) {
      this.msummary = msummary;
   }
   public String getMgrade() {
      return mgrade;
   }
   public void setMgrade(String mgrade) {
      this.mgrade = mgrade;
   }
   public String getMmdpick() {
      return mmdpick;
   }
   public void setMmdpick(String mmdpick) {
      this.mmdpick = mmdpick;
   }
   public String getMfollow() {
      return mfollow;
   }
   public void setMfollow(String mfollow) {
      this.mfollow = mfollow;
   }
   @Override
   public String toString() {
      return "MovieDto [mseq=" + mseq + ", mimg=" + mimg + ", mkeyw=" + mkeyw + ", mshowdate=" + mshowdate
            + ", mdirector=" + mdirector + ", mtitle=" + mtitle + ", mage=" + mage + ", mactor=" + mactor
            + ", msummary=" + msummary + ", mgrade=" + mgrade + ", mmdpick=" + mmdpick + ", mfollow=" + mfollow
            + "]";
   }
   public MovieDto(int mseq, String mimg, String mkeyw, String mshowdate, String mdirector, String mtitle, String mage,
         String mactor, String msummary, String mgrade, String mmdpick, String mfollow) {
      super();
      this.mseq = mseq;
      this.mimg = mimg;
      this.mkeyw = mkeyw;
      this.mshowdate = mshowdate;
      this.mdirector = mdirector;
      this.mtitle = mtitle;
      this.mage = mage;
      this.mactor = mactor;
      this.msummary = msummary;
      this.mgrade = mgrade;
      this.mmdpick = mmdpick;
      this.mfollow = mfollow;
   }
      



}
