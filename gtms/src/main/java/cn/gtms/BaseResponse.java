package cn.gtms;

public class BaseResponse<T> {
	private String status;
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	private String message;
	private T output;
	public T getOutput() {
		return output;
	}
	public void setOutput(T output) {
		this.output = output;
	}

}
