/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScriptableDateFormat.idl
 */

module mozilla.xpcom.nsIScriptableDateFormat;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

alias PRInt32 nsDateFormatSelector;

alias PRInt32 nsTimeFormatSelector;


/* starting interface:    nsIScriptableDateFormat */
const char[] NS_ISCRIPTABLEDATEFORMAT_IID_STR = "0c89efb0-1aae-11d3-9141-006008a6edf6";

const nsIID NS_ISCRIPTABLEDATEFORMAT_IID= 
  {0x0c89efb0, 0x1aae, 0x11d3, 
    [ 0x91, 0x41, 0x00, 0x60, 0x08, 0xa6, 0xed, 0xf6 ]};

extern(Windows)
interface nsIScriptableDateFormat : nsISupports {
  static const char[] IID_STR = NS_ISCRIPTABLEDATEFORMAT_IID_STR;
  static const nsIID IID = NS_ISCRIPTABLEDATEFORMAT_IID;

  enum { dateFormatNone = 0 };

  enum { dateFormatLong = 1 };

  enum { dateFormatShort = 2 };

  enum { dateFormatYearMonth = 3 };

  enum { dateFormatWeekday = 4 };

  enum { timeFormatNone = 0 };

  enum { timeFormatSeconds = 1 };

  enum { timeFormatNoSeconds = 2 };

  enum { timeFormatSecondsForce24Hour = 3 };

  enum { timeFormatNoSecondsForce24Hour = 4 };

  /* wstring FormatDateTime (in wstring locale, in long dateFormatSelector, in long timeFormatSelector, in long year, in long month, in long day, in long hour, in long minute, in long second); */
  nsresult FormatDateTime(PRUnichar *locale, PRInt32 dateFormatSelector, PRInt32 timeFormatSelector, PRInt32 year, PRInt32 month, PRInt32 day, PRInt32 hour, PRInt32 minute, PRInt32 second, PRUnichar **_retval);

  /* wstring FormatDate (in wstring locale, in long dateFormatSelector, in long year, in long month, in long day); */
  nsresult FormatDate(PRUnichar *locale, PRInt32 dateFormatSelector, PRInt32 year, PRInt32 month, PRInt32 day, PRUnichar **_retval);

  /* wstring FormatTime (in wstring locale, in long timeFormatSelector, in long hour, in long minute, in long second); */
  nsresult FormatTime(PRUnichar *locale, PRInt32 timeFormatSelector, PRInt32 hour, PRInt32 minute, PRInt32 second, PRUnichar **_retval);

}

