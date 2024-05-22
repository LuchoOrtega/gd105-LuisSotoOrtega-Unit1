class Timer {
  float Time;
  
  // Constructor
  Timer(float set) {
    Time = set;
  }
  // Returns current time
  float getTime() {
    return(Time);
  }
  
  // Loops the timer at 60 seconds
  void setTime(float set) {
    Time = set;
  }
  // Counts down
  void countUp() {
    Time += 1/frameRate;
  }
}
