/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITimelineService.idl
 */

module mozilla.dxpcom.nsITimelineServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsITimelineService;


public import mozilla.dxpcom.nsITimelineServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsITimelineService */
/**
 * nsITimelineService is used to constuct a timeline of program
 * execution.  The timeline is output to a file, either stderr or the
 * value of the environment variable NS_TIMELINE_LOG_FILE.  On the
 * Mac, the timeline is output to the file named "timeline.txt".  The
 * reason it's different on the Mac is that the Mac environment
 * initialization code happens after timeline initialization code.
 * 
 * If NS_TIMELINE_INIT_TIME is set in the environment, that will be
 * used as the time of startup; otherwise the current time when mark()
 * is first called will be used.
 * 
 * mark() is used to put marks on the timeline.
 * 
 * indent() and outdent() are used to format the timeline a bit to
 * show nesting.  This doesn't produce perfect results in the face of
 * asychrony and multiple threads.
 * 
 * enter() and leave() are convenience functions that add marks to the
 * timeline and do indentation.
 * 
 * startTimer() and stopTimer() control named stop watches.  If
 * startTimer() is called more than once, an equal number of
 * stopTimer() calls are needed to actually stop the timer.  This
 * makes these timers slightly useful in a threaded environment.
 * 
 * markTimer() puts a mark on the timeline containing the total for
 * the named timer.
 * 
 * Don't use nsITimelineService in C++ code; use the NS_TIMELINE
 * macros instead.  nsITimelineService exists so that JavaScript code
 * can mark the timeline.
 */
class nsITimelineServiceD : public nsISupportsD {

  static const nsIID IID = NS_ITIMELINESERVICE_IID;


  alias nsITimelineService InnerType;

  this(nsITimelineService intr){
    super(intr);
    this.inner = intr;
  }

  nsITimelineService opCast() {
    return inner;
  }

  void opAssign(nsITimelineService value) {
    inner = value;
  }

  /**
     * mark()
     * Print "<elapsed time>: <text>\n" in the timeline log file.
     */
  /* void mark (in string text); */
  void Mark(char*text){
    nsresult __result = inner.Mark(text);
    CheckException(__result);
  }

  /**
     * causes subsequent marks to be indented for a more readable
     * report.
     */
  /* void indent (); */
  void Indent(){
    nsresult __result = inner.Indent();
    CheckException(__result);
  }

  /**
     * Causes subsequent marks to be outdented.
     */
  /* void outdent (); */
  void Outdent(){
    nsresult __result = inner.Outdent();
    CheckException(__result);
  }

  /**
     * enter/leave bracket code with "<text>..." and "...<text>" as
     * well as indentation.
     */
  /* void enter (in string text); */
  void Enter(char*text){
    nsresult __result = inner.Enter(text);
    CheckException(__result);
  }

  /* void leave (in string text); */
  void Leave(char*text){
    nsresult __result = inner.Leave(text);
    CheckException(__result);
  }

  /* void startTimer (in string timerName); */
  void StartTimer(char*timerName){
    nsresult __result = inner.StartTimer(timerName);
    CheckException(__result);
  }

  /* void stopTimer (in string timerName); */
  void StopTimer(char*timerName){
    nsresult __result = inner.StopTimer(timerName);
    CheckException(__result);
  }

  /* void markTimer (in string timerName); */
  void MarkTimer(char*timerName){
    nsresult __result = inner.MarkTimer(timerName);
    CheckException(__result);
  }

  /* void resetTimer (in string timerName); */
  void ResetTimer(char*timerName){
    nsresult __result = inner.ResetTimer(timerName);
    CheckException(__result);
  }

  /* void markTimerWithComment (in string timerName, in string comment); */
  void MarkTimerWithComment(char*timerName, char*comment){
    nsresult __result = inner.MarkTimerWithComment(timerName, comment);
    CheckException(__result);
  }

private:
  nsITimelineService inner;

}

