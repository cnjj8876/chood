package paging;

public class Paging {


	public int getRowLimit() {
		return rowLimit;
	}

	public void setRowLimit(int rowLimit) {
		this.rowLimit = rowLimit;
	}

	public int getPageLimit() {
		return pageLimit;
	}

	public void setPageLimit(int pageLimit) {
		this.pageLimit = pageLimit;
	}

	public int getCurrPage() {
		return currPage;
	}

	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}

	public int getCurrBlock() {
		return currBlock;
	}

	public void setCurrBlock(int currBlock) {
		this.currBlock = currBlock;
	}

	public int getPageStartNum() {
		return pageStartNum;
	}

	public void setPageStartNum(int pageStartNum) {
		this.pageStartNum = pageStartNum;
	}

	public int getPageEndNum() {
		return pageEndNum;
	}

	public void setPageEndNum(int pageEndNum) {
		this.pageEndNum = pageEndNum;
	}

	public int getTotalBlock() {
		return totalBlock;
	}

	public void setTotalBlock(int totalBlock) {
		this.totalBlock = totalBlock;
	}

	public int getTotalRow() {
		return totalRow;
	}

	public void setTotalRow(int totalRow) {
		this.totalRow = totalRow;
	}

	public int getTotalPageNum() {
		return totalPageNum;
	}

	public void setTotalPageNum(int totalPageNum) {
		this.totalPageNum = totalPageNum;
	}

	public int getRowStartNum() {
		return rowStartNum;
	}

	public void setRowStartNum(int rowStartNum) {
		this.rowStartNum = rowStartNum;
	}

	//초기화 값
	private int rowLimit;
	private int pageLimit;
	private int currPage;
	private int currBlock;
	
	//페이징 초기화 값
	private int pageStartNum;
	private int pageEndNum;
	private int totalBlock;
	
	//table의 총 row 수
	private int totalRow;
	private int totalPageNum;
	//row번호
	private int rowStartNum;
	
	public void pageingSet() {
		this.totalBlock=(this.totalPageNum/this.pageLimit)+1; 
		this.totalPageNum=(this.totalRow/this.rowLimit)+(this.totalRow%this.rowLimit==0?0:1);		
		
		if(this.currBlock <= this.totalBlock) {
			
			this.pageStartNum=(this.currBlock)*this.pageLimit+1;
				
			if(this.pageStartNum+this.pageLimit<=totalPageNum) {
				this.pageEndNum = this.pageStartNum+this.pageLimit-1;
			}
			else {
				this.pageEndNum =this.totalPageNum;
			}
		}
		
	}
	
	public void startRowNumSet() {
		this.rowStartNum=(this.currPage-1)*this.rowLimit;
	}
}
