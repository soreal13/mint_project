package com.mint.project.dtos;

public class TasteDto {

	   private int tseq;
	   private int tuseq;
	   private String taction;
	   private String tcomedy;
	   private String tcrime;
	   private String tdocumentary;
	   private String tdrama;
	   private String tfamily;
	   private String tfantasy;
	   private String tnoir;
	   private String thorror;
	   private String tmusical;
	   private String tmystery;
	   private String tromance;
	   private String tsf;
	   private String tsports;
	   private String tthriller;
	   private String twar;
	   private String tcar;
	   private String trabbit;
	   private String tanimation;
	   private String tchildren;
	   private String thistory;
	   private String troco;
	   private String tdisaster;
	   private String twuxia;
	   private String twestern;
	   private String thotguy;
	   private String thighteen;
	   private String tdomestic;
	   private String tforeign;
	   private String tstatus;
	   
	   public TasteDto() {
	      super();
	      // TODO Auto-generated constructor stub
	   }
	   

	   public TasteDto(int tseq, int tuseq, String taction, String tcomedy, String tcrime, String tdocumentary,
	         String tdrama, String tfamily, String tfantasy, String tnoir, String thorror, String tmusical,
	         String tmystery, String tromance, String tsf, String tsports, String tthriller, String twar, String tcar,
	         String trabbit, String tanimation, String tchildren, String thistory, String troco, String tdisaster,
	         String twuxia, String twestern, String thotguy, String thighteen, String tdomestic, String tforeign, String tstatus) {
	      super();
	      this.tseq = tseq;
	      this.tuseq = tuseq;
	      this.taction = taction;
	      this.tcomedy = tcomedy;
	      this.tcrime = tcrime;
	      this.tdocumentary = tdocumentary;
	      this.tdrama = tdrama;
	      this.tfamily = tfamily;
	      this.tfantasy = tfantasy;
	      this.tnoir = tnoir;
	      this.thorror = thorror;
	      this.tmusical = tmusical;
	      this.tmystery = tmystery;
	      this.tromance = tromance;
	      this.tsf = tsf;
	      this.tsports = tsports;
	      this.tthriller = tthriller;
	      this.twar = twar;
	      this.tcar = tcar;
	      this.trabbit = trabbit;
	      this.tanimation = tanimation;
	      this.tchildren = tchildren;
	      this.thistory = thistory;
	      this.troco = troco;
	      this.tdisaster = tdisaster;
	      this.twuxia = twuxia;
	      this.twestern = twestern;
	      this.thotguy = thotguy;
	      this.thighteen = thighteen;
	      this.tdomestic = tdomestic;
	      this.tforeign = tforeign;
	      this.tstatus = tstatus;
	   }	   
	   
	   public void setSelect(String name){
		     if(name=="taction"){
		          setTaction("1");
		     }else if(name=="tcomedy"){
		          setTcomedy("1");
		     }else if(name=="tcrime") {
		    	 setTcrime("1");
		     }else if(name=="tdocumentary") {
		    	 setTdocumentary("1");
		     }else if(name=="tdrama") {
		    	 setTdrama("1");
		     }else if(name=="tfamily") {
		    	 setTfamily("1");
		     }else if(name=="tfantasy") {
		    	 setTfantasy("1");
		     }else if(name=="tnoir") {
		    	 setTnoir("1");
		     }else if(name=="thorror") {
		    	 setThorror("1");
		     }else if(name=="tmusical") {
		    	 setTmusical("1");
		     }else if(name=="tmystery") {
		    	 setTmystery("1");
		     }else if(name=="tromance") {
		    	 setTromance("1");
		     }else if(name=="tsf") {
		    	 setTsf("1");
		     }else if(name=="tsports") {
		    	 setTsports("1");
		     }else if(name=="tthriller") {
		    	 setTthriller("1");
		     }else if(name=="twar") {
		    	 setTwar("1");
		     }else if(name=="tcar") {
		    	 setTcar("1");
		     }else if(name=="trabbit") {
		    	 setTrabbit("1");
		     }else if(name=="tanimation") {
		    	 setTanimation("1");
		     }else if(name=="tchildren") {
		    	 setTchildren("1");
		     }else if(name=="thistory") {
		    	 setThistory("1");
		     }else if(name=="troco") {
		    	 setTroco("1");
		     }else if(name=="tdisaster") {
		    	 setTdisaster("1");
		     }else if(name=="twuxia") {
		    	 setTwuxia("1");
		     }else if(name=="twestern") {
		    	 setTwestern("1");
		     }else if(name=="thotguy") {
		    	 setThotguy("1");
		     }else if(name=="thighteen") {
		    	 setThighteen("1");
		     }else if(name=="tdomestic") {
		    	 setTdomestic("1");
		     }else if(name=="tforeign") {
		    	 setTforeign("1");
		     }		     
		}
	   
	   
	   
	   public int getTseq() {
	      return tseq;
	   }
	   public void setTseq(int tseq) {
	      this.tseq = tseq;
	   }
	   public int getTuseq() {
	      return tuseq;
	   }
	   public void setTuseq(int tuseq) {
	      this.tuseq = tuseq;
	   }
	   public String getTaction() {
	      return taction;
	   }
	   public void setTaction(String taction) {
	      this.taction = taction;
	   }
	   public String getTcomedy() {
	      return tcomedy;
	   }
	   public void setTcomedy(String tcomedy) {
	      this.tcomedy = tcomedy;
	   }
	   public String getTcrime() {
	      return tcrime;
	   }
	   public void setTcrime(String tcrime) {
	      this.tcrime = tcrime;
	   }
	   public String getTdocumentary() {
	      return tdocumentary;
	   }
	   public void setTdocumentary(String tdocumentary) {
	      this.tdocumentary = tdocumentary;
	   }
	   public String getTdrama() {
	      return tdrama;
	   }
	   public void setTdrama(String tdrama) {
	      this.tdrama = tdrama;
	   }
	   public String getTfamily() {
	      return tfamily;
	   }
	   public void setTfamily(String tfamily) {
	      this.tfamily = tfamily;
	   }
	   public String getTfantasy() {
	      return tfantasy;
	   }
	   public void setTfantasy(String tfantasy) {
	      this.tfantasy = tfantasy;
	   }
	   public String getTnoir() {
	      return tnoir;
	   }
	   public void setTnoir(String tnoir) {
	      this.tnoir = tnoir;
	   }
	   public String getThorror() {
	      return thorror;
	   }
	   public void setThorror(String thorror) {
	      this.thorror = thorror;
	   }
	   public String getTmusical() {
	      return tmusical;
	   }
	   public void setTmusical(String tmusical) {
	      this.tmusical = tmusical;
	   }
	   public String getTmystery() {
	      return tmystery;
	   }
	   public void setTmystery(String tmystery) {
	      this.tmystery = tmystery;
	   }
	   public String getTromance() {
	      return tromance;
	   }
	   public void setTromance(String tromance) {
	      this.tromance = tromance;
	   }
	   public String getTsf() {
	      return tsf;
	   }
	   public void setTsf(String tsf) {
	      this.tsf = tsf;
	   }
	   public String getTsports() {
	      return tsports;
	   }
	   public void setTsports(String tsports) {
	      this.tsports = tsports;
	   }
	   public String getTthriller() {
	      return tthriller;
	   }
	   public void setTthriller(String tthriller) {
	      this.tthriller = tthriller;
	   }
	   public String getTwar() {
	      return twar;
	   }
	   public void setTwar(String twar) {
	      this.twar = twar;
	   }
	   public String getTcar() {
	      return tcar;
	   }
	   public void setTcar(String tcar) {
	      this.tcar = tcar;
	   }
	   public String getTrabbit() {
	      return trabbit;
	   }
	   public void setTrabbit(String trabbit) {
	      this.trabbit = trabbit;
	   }
	   public String getTanimation() {
	      return tanimation;
	   }
	   public void setTanimation(String tanimation) {
	      this.tanimation = tanimation;
	   }
	   public String getTchildren() {
	      return tchildren;
	   }
	   public void setTchildren(String tchildren) {
	      this.tchildren = tchildren;
	   }
	   public String getThistory() {
	      return thistory;
	   }
	   public void setThistory(String thistory) {
	      this.thistory = thistory;
	   }
	   public String getTroco() {
	      return troco;
	   }
	   public void setTroco(String troco) {
	      this.troco = troco;
	   }
	   public String getTdisaster() {
	      return tdisaster;
	   }
	   public void setTdisaster(String tdisaster) {
	      this.tdisaster = tdisaster;
	   }
	   public String getTwuxia() {
	      return twuxia;
	   }
	   public void setTwuxia(String twuxia) {
	      this.twuxia = twuxia;
	   }
	   public String getTwestern() {
	      return twestern;
	   }
	   public void setTwestern(String twestern) {
	      this.twestern = twestern;
	   }
	   public String getThotguy() {
	      return thotguy;
	   }
	   public void setThotguy(String thotguy) {
	      this.thotguy = thotguy;
	   }
	   public String getThighteen() {
	      return thighteen;
	   }
	   public void setThighteen(String thighteen) {
	      this.thighteen = thighteen;
	   }
	   public String getTdomestic() {
	      return tdomestic;
	   }
	   public void setTdomestic(String tdomestic) {
	      this.tdomestic = tdomestic;
	   }
	   public String getTforeign() {
	      return tforeign;
	   }
	   public void setTforeign(String tforeign) {
	      this.tforeign = tforeign;
	   }
	   public String getTstatus() {
		   return tstatus;
	   }
	   public void setTstatus(String tstatus) {
		   this.tstatus = tstatus;
	   }
	   
	   
	   @Override
	   public String toString() {
	      return "TasteDto [tseq=" + tseq + ", tuseq=" + tuseq + ", taction=" + taction + ", tcomedy=" + tcomedy
	            + ", tcrime=" + tcrime + ", tdocumentary=" + tdocumentary + ", tdrama=" + tdrama + ", tfamily="
	            + tfamily + ", tfantasy=" + tfantasy + ", tnoir=" + tnoir + ", thorror=" + thorror + ", tmusical="
	            + tmusical + ", tmystery=" + tmystery + ", tromance=" + tromance + ", tsf=" + tsf + ", tsports="
	            + tsports + ", tthriller=" + tthriller + ", twar=" + twar + ", tcar=" + tcar + ", trabbit=" + trabbit
	            + ", tanimation=" + tanimation + ", tchildren=" + tchildren + ", thistory=" + thistory
	            + ", troco=" + troco + ", tdisaster=" + tdisaster + ", twuxia=" + twuxia + ", twestern="
	            + twestern + ", thotguy=" + thotguy + ", thighteen=" + thighteen + ", tdomestic=" + tdomestic
	            + ", tforeign=" + tforeign + ", tstatus="+ tstatus + "]";
	   }
	   
	   
	   
	
}
