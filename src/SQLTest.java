import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

public class SQLTest {
	public static void main(String [] args) throws IOException{
		File file = new File("Output.txt");
		FileWriter fw = new FileWriter(file);
		PrintWriter pw = new PrintWriter(fw);
		
		for (int i = 0; i < 4; i++) {
//			pw.println(getHotel(i));
			pw.println(getRoom(i));
		}
		
		pw.close();
		
//		for(int i = 1; i<= 12; i++) {
//			if(i == 1 || i == 3 || i == 5 || i == 7 || i == 8 || i == 10 || i == 12)
//				for(int j = 1; j <= 31; j++) {
//					pw.printf("insert into Date_List values ('%02d/%02d/2018');\n", i,j);
//				}
//			else if(i == 4 || i == 6 || i == 9 || i == 11)
//				for(int j = 1; j <= 30; j++) {
//					pw.printf("insert into Date_List values ('%02d/%02d/2018');\n", i,j);
//				}
//			else
//				for(int j = 1; j <= 28; j++) {
//					pw.printf("insert into Date_List values ('%02d/%02d/2018');\n", i,j);
//				}
//		}
	}
	
	public static String getHotel(int i) {
		String ret ="";
		if(i%3 == 0) {
			ret = "insert into hotel values (" + ((int) (Math.random()*1000) + 1) + ", "
					+ "'Hilton', 'Herndon', 'RoadWay'," + ((int) (Math.random()*10000) +1) + ", 'VA', " +
					((int) (Math.random()*10000)) + ");";}
		else if (i%3 == 1){
			ret = "insert into hotel values (" + ((int) (Math.random()*1000) + 1) + ", "
					+ "'Four_Seasons', 'NewYork', 'RandomRd'," + ((int) (Math.random()*10000) +1) + ", 'NY', " +
					((int) (Math.random()*10000)) + ");";}
		else {
			ret = "insert into hotel values (" + ((int) (Math.random()*1000) + 1) + ", "
					+ "'Hans_And_Fonz', 'NewYork', '5thAve'," + ((int) (Math.random()*10000) +1) + ", 'NY', " +
					((int) (Math.random()*10000)) + ");";}
		
		return ret;		
	}
	
	public static String getRoom(int i) {
		String ret = "";
		
		if(i%4==0) {
			ret = "insert into room values ( 'King'," + ((int) (Math.random()*1000) + 1) + ", "
					+ ((int) (Math.random()*5) + 1) + ", " + ((int) (Math.random()*50) + 1) + ", "
					+ ((int) (Math.random()*10) + 1) + ", " + ((int) (Math.random()*500) + 1) + ");";
		}
		else if(i%4==1) {
			ret = "insert into room values ( 'Queen'," + ((int) (Math.random()*1000) + 1) + ", "
					+ ((int) (Math.random()*4) + 1) + ", " + ((int) (Math.random()*50) + 1) + ", "
					+ ((int) (Math.random()*15) + 1) + ", " + ((int) (Math.random()*250) + 1) + ");";
		}
		if(i%4==2) {
			ret = "insert into room values ( 'Twin'," + ((int) (Math.random()*1000) + 1) + ", "
					+ ((int) (Math.random()*2) + 1) + ", " + ((int) (Math.random()*50) + 1) + ", "
					+ ((int) (Math.random()*20) + 1) + ", " + ((int) (Math.random()*100) + 1) + ");";
		}
		if(i%4==3) {
			ret = "insert into room values ( 'Suite'," + ((int) (Math.random()*1000) + 1) + ", "
					+ ((int) (Math.random()*6) + 1) + ", " + ((int) (Math.random()*50) + 1) + ", "
					+ ((int) (Math.random()*5) + 1) + ", " + ((int) (Math.random()*1000) + 1) + ");";
		}
		return ret;
	}
	
}
