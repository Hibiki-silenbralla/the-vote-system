package vote;
import java.io.*;
import java.util.*;
public class vote {
 public String filePath = "";
 public int n;
 private File voteFile;
 private BufferedReader fileRead;
 private PrintWriter fileWrite;
 public String systemMessage = "";
 private String voteStr[] = new String[10];
 public int voteNum[] = new int[10];
 public void createFile() throws FileNotFoundException {
  voteFile = new File(filePath);
  if (!voteFile.exists()) {
   fileWrite = new PrintWriter(new FileOutputStream(filePath));
   for (int i = 0; i < n; i++)
    fileWrite.println("0");
   fileWrite.close();
  }
 }
 public void writeFile() throws FileNotFoundException {
  fileWrite = new PrintWriter(new FileOutputStream(filePath));
  for (int i = 0; i < n; i++) {
   fileWrite.println(voteNum[i]);
  }
  fileWrite.close();
 }
 public void readFile() throws FileNotFoundException {
  fileRead = new BufferedReader(new FileReader(filePath));
  for (int i = 0; i < n; i++) {
   try {
    voteStr[i] = fileRead.readLine();
   } catch (IOException f) {
    voteStr[i] = "0";
   }
   voteNum[i] = Integer.parseInt(voteStr[i]);
  }
  try {
   fileRead.close();
  } catch (IOException d) {
   systemMessage = d.toString();
  }
 }
}