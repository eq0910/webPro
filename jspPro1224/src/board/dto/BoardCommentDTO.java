package board.dto;

import java.util.Date;

public class BoardCommentDTO {

	private int commnet_num;
	private int board_num;
	private String writer;
	private String job;
	private Date reg_date; //java.util.Date
	
	//getter, setter, toString까지만
	public int getCommnet_num() {
		return commnet_num;
	}
	public void setCommnet_num(int commnet_num) {
		this.commnet_num = commnet_num;
	}
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	@Override
	public String toString() {
		return "BoardCommentDTO [commnet_num=" + commnet_num + ", board_num=" + board_num + ", writer=" + writer
				+ ", job=" + job + ", reg_date=" + reg_date + "]";
	}
	
	
	
}