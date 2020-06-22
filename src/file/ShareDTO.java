package file;

public class ShareDTO {
	
	String fileName1;
	String fileRealName1;

	public String getFileName1() {
		return fileName1;
	}
	public void setFileName1(String fileName) {
		this.fileName1 = fileName;
	}
	public String getFileRealName1() {
		return fileRealName1;
	}
	public void setFileRealName1(String fileRealName) {
		this.fileRealName1 = fileRealName;
	}
	
	
	public ShareDTO(String fileName, String fileRealName) {
		// TODO Auto-generated constructor stub
		super();
		this.fileName1 = fileName;
		this.fileRealName1 = fileRealName;

	}
}
