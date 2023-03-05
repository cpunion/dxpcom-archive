/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITimelineService.idl
 */

module mozilla.xpcom.nsITimelineService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsITimelineService */
const char[] NS_ITIMELINESERVICE_IID_STR = "93276790-3daf-11d5-b67d-000064657374";

const nsIID NS_ITIMELINESERVICE_IID= 
  {0x93276790, 0x3daf, 0x11d5, 
    [ 0xb6, 0x7d, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

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
extern(Windows)
interface nsITimelineService : nsISupports {
  static const char[] IID_STR = NS_ITIMELINESERVICE_IID_STR;
  static const nsIID IID = NS_ITIMELINESERVICE_IID;

  /**
     * mark()
     * Print "<elapsed time>: <text>\n" in the timeline log file.
     */
  /* void mark (in string text); */
  nsresult Mark(char *text);

  /**
     * causes subsequent marks to be indented for a more readable
     * report.
     */
  /* void indent (); */
  nsresult Indent();

  /**
     * Causes subsequent marks to be outdented.
     */
  /* void outdent (); */
  nsresult Outdent();

  /**
     * enter/leave bracket code with "<text>..." and "...<text>" as
     * well as indentation.
     */
  /* void enter (in string text); */
  nsresult Enter(char *text);

  /* void leave (in string text); */
  nsresult Leave(char *text);

  /* void startTimer (in string timerName); */
  nsresult StartTimer(char *timerName);

  /* void stopTimer (in string timerName); */
  nsresult StopTimer(char *timerName);

  /* void markTimer (in string timerName); */
  nsresult MarkTimer(char *timerName);

  /* void resetTimer (in string timerName); */
  nsresult ResetTimer(char *timerName);

  /* void markTimerWithComment (in string timerName, in string comment); */
  nsresult MarkTimerWithComment(char *timerName, char *comment);

}

