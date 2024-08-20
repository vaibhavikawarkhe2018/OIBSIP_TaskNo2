package onlineExam;
import java.io.*;
@SuppressWarnings("serial")
public class AdminBean implements Serializable
{
	private String uName,pWord;
	
	
	public AdminBean()
	{
		
	}

	public String getuName()
	{
		return uName;
	}

	public void setuName(String uName) 
	{
		this.uName = uName;
	}

	public String getpWord() 
	{
		return pWord;
	}

	public void setpWord(String pWord) 
	{
		this.pWord = pWord;
	}

}
