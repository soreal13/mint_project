package com.mint.project.dtos;

public class UserDto {
	
	
	   private int useq;
	   private String uemail;
	   private String unick;
	   private String upwd;
	   private String uimg;
	   private String udelflag;
	   private String umseq;
	   private String ufmseq;
	   private String ufuseq;
	   private String urseq;
	   private String usessionkey;
	   private String usessionlimit;
	   private String uuprseq;
	   private String udownrseq;
	public int getUseq() {
		return useq;
	}
	public void setUseq(int useq) {
		this.useq = useq;
	}
	public String getUemail() {
		return uemail;
	}
	@Override
	public String toString() {
		return "UserDto [useq=" + useq + ", uemail=" + uemail + ", unick=" + unick + ", upwd=" + upwd + ", uimg=" + uimg
				+ ", udelflag=" + udelflag + ", umseq=" + umseq + ", ufmseq=" + ufmseq + ", ufuseq=" + ufuseq
				+ ", urseq=" + urseq + ", usessionkey=" + usessionkey + ", usessionlimit=" + usessionlimit
				+ ", uuprseq=" + uuprseq + ", udownrseq=" + udownrseq + "]";
	}
	public UserDto(int useq, String uemail, String unick, String upwd, String uimg, String udelflag, String umseq,
			String ufmseq, String ufuseq, String urseq, String usessionkey, String usessionlimit, String uuprseq,
			String udownrseq) {
		super();
		this.useq = useq;
		this.uemail = uemail;
		this.unick = unick;
		this.upwd = upwd;
		this.uimg = uimg;
		this.udelflag = udelflag;
		this.umseq = umseq;
		this.ufmseq = ufmseq;
		this.ufuseq = ufuseq;
		this.urseq = urseq;
		this.usessionkey = usessionkey;
		this.usessionlimit = usessionlimit;
		this.uuprseq = uuprseq;
		this.udownrseq = udownrseq;
	}
	public UserDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUnick() {
		return unick;
	}
	public void setUnick(String unick) {
		this.unick = unick;
	}
	public String getUpwd() {
		return upwd;
	}
	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}
	public String getUimg() {
		return uimg;
	}
	public void setUimg(String uimg) {
		this.uimg = uimg;
	}
	public String getUdelflag() {
		return udelflag;
	}
	public void setUdelflag(String udelflag) {
		this.udelflag = udelflag;
	}
	public String getUmseq() {
		return umseq;
	}
	public void setUmseq(String umseq) {
		this.umseq = umseq;
	}
	public String getUfmseq() {
		return ufmseq;
	}
	public void setUfmseq(String ufmseq) {
		this.ufmseq = ufmseq;
	}
	public String getUfuseq() {
		return ufuseq;
	}
	public void setUfuseq(String ufuseq) {
		this.ufuseq = ufuseq;
	}
	public String getUrseq() {
		return urseq;
	}
	public void setUrseq(String urseq) {
		this.urseq = urseq;
	}
	public String getUsessionkey() {
		return usessionkey;
	}
	public void setUsessionkey(String usessionkey) {
		this.usessionkey = usessionkey;
	}
	public String getUsessionlimit() {
		return usessionlimit;
	}
	public void setUsessionlimit(String usessionlimit) {
		this.usessionlimit = usessionlimit;
	}
	public String getUuprseq() {
		return uuprseq;
	}
	public void setUuprseq(String uuprseq) {
		this.uuprseq = uuprseq;
	}
	public String getUdownrseq() {
		return udownrseq;
	}
	public void setUdownrseq(String udownrseq) {
		this.udownrseq = udownrseq;
	}
	   
//	   public UserDto() {
//	      super();
//	   }
//	   
//	   //이거 생성자 꽉찬거 아까 지웠음.
//	   
//	   
//	   public int getUseq() {
//	      return useq;
//	   }
//	   public void setUseq(int useq) {
//	      this.useq = useq;
//	   }
//	   public String getUemail() {
//	      return uemail;
//	   }
//	   public void setUemail(String uemail) {
//	      this.uemail = uemail;
//	   }
//	   public String getUnick() {
//	      return unick;
//	   }
//	   public void setUnick(String unick) {
//	      this.unick = unick;
//	   }
//	   public String getUpwd() {
//	      return upwd;
//	   }
//	   public void setUpwd(String upwd) {
//	      this.upwd = upwd;
//	   }
//	   public String getUimg() {
//	      return uimg;
//	   }
//	   public void setUimg(String uimg) {
//	      this.uimg = uimg;
//	   }
//	   public String getUdelflag() {
//	      return udelflag;
//	   }
//	   public void setUdelflag(String udelflag) {
//	      this.udelflag = udelflag;
//	   }
//	   public String getUmseq() {
//	      return umseq;
//	   }
//	   public void setUmseq(String umseq) {
//	      this.umseq = umseq;
//	   }
//	   public String getUfmseq() {
//	      return ufmseq;
//	   }
//	   public void setUfmseq(String ufmseq) {
//	      this.ufmseq = ufmseq;
//	   }
//	   public String getUfuseq() {
//	      return ufuseq;
//	   }
//	   public void setUfuseq(String ufuseq) {
//	      this.ufuseq = ufuseq;
//	   }
//	   public String getUrseq() {
//	      return urseq;
//	   }
//	   public void setUrseq(String urseq) {
//	      this.urseq = urseq;
//	   }
//	   public String getUsessionkey() {
//	      return usessionkey;
//	   }
//	   public void setUsessionkey(String usessionkey) {
//	      this.usessionkey = usessionkey;
//	   }
//	   public String getUsessionlimit() {
//	      return usessionlimit;
//	   }
//	   public void setUsessionlimit(String usessionlimit) {
//	      this.usessionlimit = usessionlimit;
//	   }
//	   public String getUuprseq() {
//	      return uuprseq;
//	   }
//	   public void setUuprseq(String uuprseq) {
//	      this.uuprseq = uuprseq;
//	   }
//	   public String getUdownrseq() {
//	      return udownrseq;
//	   }
//	   public void setUdownrseq(String udownrseq) {
//	      this.udownrseq = udownrseq;
//	   }
//	   
//	   
//	   @Override
//	   public String toString() {
//	      return "userdto [useq=" + useq + ", uemail=" + uemail + ", unick=" + unick + ", upwd=" + upwd + ", uimg=" + uimg
//	            + ", udelflag=" + udelflag + ", umseq=" + umseq + ", ufmseq=" + ufmseq + ", ufuseq=" + ufuseq
//	            + ", urseq=" + urseq + ", usessionkey=" + usessionkey + ", usessionlimit=" + usessionlimit
//	            + ", uuprseq=" + uuprseq + ", udownrseq=" + udownrseq + "]";
//	   }
//
//	   
	   

}
