public class Player {
  // Object fields 
  private String playerName;
  private int[] scores;
  private int count;
  
  // Constructor
  public Player(String playerName, int numberOfGames)
  {
    if (playerName.length() < 6)
    {
      this.playerName = playerName;
    } else
    {
      this.playerName = playerName.substring(0, 6);
    }
    scores = new int[numberOfGames];
    count = 0;
  }
  
  // Getters
  public String getPlayerName()
  {
    return playerName;
  }

  public int[] getscores()
  {
    return scores;
  }
  
  // Setters
  public void setPlayerName(String playerName)
  {
    this.playerName = playerName.substring(0, 6);
  }

  public void setscores(int[] scores)
  {
    this.scores = scores;
  }

  // Method to add a score at the next available location in the scores array
  public void addScore(int score)
  {
    if (score >= 0) {
      scores[count] = score;
      count++;
    }
  }


  // Created highest score with math function
  public int highestScore()
  {
    return max(scores);
  }

  // Method returns the lowest score stored in the scores array
  // If there is only one element in the scores array, this value is returned as the lowest
  public int lowestScore()
  {
    int lowestScore = scores[0] ;
    for (int i = 1; i < count; i++) {
      if (scores[i] < lowestScore) {
        lowestScore = scores[i];
      }
    }
    return lowestScore;
  }
  
  // Method returns the average score stored in the scores array
  public int averageScore()
  {
    int total = 0;
    for (int i = 0; i < count; i++) {
      total = total +  scores[i];
    }
    return total / count;
  }

  /*
  **Bespoke methods
  */
  public String toString()
  {
    String str = "Scores for " + playerName + "\n";
    int temp;
    // Sort scores array in desc order
    // Learned from https://www.youtube.com/watch?v=TmqJSD-CJKY
   for (int i = 0; i < scores.length - 1; i++) 
    {
            if (scores[i] < scores[i+1])
            {
                temp = scores[i];
                scores[i] = scores[i+1];
                scores[i+1] = temp;
                i=-1;
            }
          }
    for (int i = 0; i < count; i++) {
      str = str + "     Score " + (i+1) + ": " + scores[i] + "\n";
    }

    return str;
  }
  /*Bespoke methods
   **Overloaded method
   */
  public String toString(int howManyScoresToDisplay)
  {
    String str = "Top " + howManyScoresToDisplay + " Scores: " + "\n";
    int temp;
    // Sort scores array in ascending order
    // Learned from https://www.youtube.com/watch?v=TmqJSD-CJKY
    for (int i = 0; i < scores.length; i++) {
      for (int j = i + 1; j < scores.length; j++) {
        if (scores[i] < scores[j]) {
          temp = scores[i];
          scores[i] = scores[j];
          scores[j] = temp;
        }
      }
    }
    for (int i = 0; i < howManyScoresToDisplay; i++) {
      str = str + "Score " + (i+1) + ": " + scores[i] + "\n";
    }

    return str;
  }
}
