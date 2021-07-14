//Java Program to illustrate reading and writing
// in URLConnection Class
import java.io.*;
import java.net.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class URLConnection
{
	public static void main(String[] args)
	{
		try
		{
			URL url = new URL("https://www.geeksforgeeks.org/java");
			
			//open the connection to the above URL.
			URLConnection urlcon = url.openConnection();
			
				Map<String, List<String>> header = urlcon.getHeaderFields();
			
			//print all the fields along with their value.
			for (Map.Entry<String, List<String>> mp : header.entrySet())
			{
				System.out.print(mp.getKey() + " : ");
				System.out.println(mp.getValue().toString());
			}
			System.out.println();
			System.out.println("Complete source code of the URL is-");
			System.out.println("---------------------------------");
			
			//get the inputstream of the open connection.
			BufferedReader br = new BufferedReader(new InputStreamReader
												(urlcon.getInputStream()));
			String i;
			
			//print the source code line by line.
			while ((i = br.readLine()) != null)
			{
				System.out.println(i);
			}
		}
		
		catch (Exception e)
		{
			System.out.println(e);
		}
	}
}
