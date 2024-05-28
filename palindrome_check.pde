public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) {
    lines[i] = lines[i].replaceAll("\\s", "");
    lines[i] = lines[i].replaceAll("!", "");
    lines[i] = lines[i].replaceAll(",", "");
    lines[i] = lines[i].replaceAll("'", "");
    lines[i] =lines[i].toLowerCase();
  }


  for (int i=0; i < lines.length; i++)
  {
    if (palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    } else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{

  String rev = Reverse(word);
  if (rev.equals(word)) {
    return true;
  }
  return false;
}


public String Reverse(String word) {

  String ret = "";
  for (int i = word.length()-1; i >= 0; i--) {
    ret += word.substring(i, i+1);
  }

  return ret;
}
