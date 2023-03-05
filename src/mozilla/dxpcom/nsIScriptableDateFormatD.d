/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScriptableDateFormat.idl
 */

module mozilla.dxpcom.nsIScriptableDateFormatD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIScriptableDateFormat;


public import mozilla.dxpcom.nsIScriptableDateFormatD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIScriptableDateFormat */
class nsIScriptableDateFormatD : public nsISupportsD {

  static const nsIID IID = NS_ISCRIPTABLEDATEFORMAT_IID;


  alias nsIScriptableDateFormat InnerType;

  this(nsIScriptableDateFormat intr){
    super(intr);
    this.inner = intr;
  }

  nsIScriptableDateFormat opCast() {
    return inner;
  }

  void opAssign(nsIScriptableDateFormat value) {
    inner = value;
  }

  enum { dateFormatNone = 0 }

  enum { dateFormatLong = 1 }

  enum { dateFormatShort = 2 }

  enum { dateFormatYearMonth = 3 }

  enum { dateFormatWeekday = 4 }

  enum { timeFormatNone = 0 }

  enum { timeFormatSeconds = 1 }

  enum { timeFormatNoSeconds = 2 }

  enum { timeFormatSecondsForce24Hour = 3 }

  enum { timeFormatNoSecondsForce24Hour = 4 }

  /* wstring FormatDateTime (in wstring locale, in long dateFormatSelector, in long timeFormatSelector, in long year, in long month, in long day, in long hour, in long minute, in long second); */
  PRUnichar* FormatDateTime(PRUnichar*locale, PRInt32 dateFormatSelector, PRInt32 timeFormatSelector, PRInt32 year, PRInt32 month, PRInt32 day, PRInt32 hour, PRInt32 minute, PRInt32 second){
    PRUnichar* _retval;
    nsresult __result = inner.FormatDateTime(locale, dateFormatSelector, timeFormatSelector, year, month, day, hour, minute, second, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* wstring FormatDate (in wstring locale, in long dateFormatSelector, in long year, in long month, in long day); */
  PRUnichar* FormatDate(PRUnichar*locale, PRInt32 dateFormatSelector, PRInt32 year, PRInt32 month, PRInt32 day){
    PRUnichar* _retval;
    nsresult __result = inner.FormatDate(locale, dateFormatSelector, year, month, day, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* wstring FormatTime (in wstring locale, in long timeFormatSelector, in long hour, in long minute, in long second); */
  PRUnichar* FormatTime(PRUnichar*locale, PRInt32 timeFormatSelector, PRInt32 hour, PRInt32 minute, PRInt32 second){
    PRUnichar* _retval;
    nsresult __result = inner.FormatTime(locale, timeFormatSelector, hour, minute, second, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIScriptableDateFormat inner;

}

