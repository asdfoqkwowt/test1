package mingle.product;

public class ProductVO {

	private int pno;
	private String pname;
	private int price;
	private String content,srcfilename,savefilename,savepath;
	
	public ProductVO() {
	}


	public ProductVO(int pno, String pname, int price, String content, String srcfilename, String savefilename,
			String savepath) {
		this.pno = pno;
		this.pname = pname;
		this.price = price;
		this.content = content;
		this.srcfilename = srcfilename;
		this.savefilename = savefilename;
		this.savepath = savepath;
	}

	public ProductVO(String pname, int price, String content, String savepath) {
		this.pname = pname;
		this.price = price;
		this.content = content;
		this.savepath = savepath;		
	}
	

	public int getPno() {return pno;}
	public void setPno(int pno) {this.pno = pno;}
	public String getPname() {return pname;}
	public void setPname(String pname) {this.pname = pname;}
	public int getPrice() {return price;}
	public void setPrice(int price) {this.price = price;}
	public String getContent() {return content;}
	public void setContent(String content) {this.content = content;}
	public String getSrcfilename() {return srcfilename;}
	public void setSrcfilename(String srcfilename) {this.srcfilename = srcfilename;}
	public String getSavefilename() {return savefilename;}
	public void setSavefilename(String savefilename) {this.savefilename = savefilename;}
	public String getSavepath() {return savepath;}
	public void setSavepath(String savepath) {this.savepath = savepath;}
	
	
}
