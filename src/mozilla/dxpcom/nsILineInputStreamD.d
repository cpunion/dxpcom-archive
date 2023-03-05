/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILineInputStream.idl
 */

module mozilla.dxpcom.nsILineInputStreamD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsILineInputStream;


public import mozilla.dxpcom.nsILineInputStreamD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsILineInputStream;

public import mozilla.dxpcom.nsILineInputStreamD;


/* starting wrapper class:    nsILineInputStream */
class nsILineInputStreamD : public nsISupportsD {

  static const nsIID IID = NS_ILINEINPUTSTREAM_IID;


  alias nsILineInputStream InnerType;

  this(nsILineInputStream intr){
    super(intr);
    this.inner = intr;
  }

  nsILineInputStream opCast() {
    return inner;
  }

  void opAssign(nsILineInputStream value) {
    inner = value;
  }

  /**
   * Read a single line from the stream, where a line is a 
   * possibly zero length sequence of 8bit chars terminated by a
   * CR, LF, CRLF, LFCR, or eof.
   * The line terminator is not returned.
   * @retval false
   *         End of file. This line is the last line of the file
   *         (aLine is valid).
   * @retval true
   *         The file contains further lines.
   * @note Do not mix readLine with other read functions.
   *       Doing so can cause various problems and is not supported.
   */
  /* boolean readLine (out ACString aLine); */
  PRBool ReadLine(char[] aLine){
    scope auto _aLine = new ACString;
    PRBool _retval;
    nsresult __result = inner.ReadLine(cast(nsACString*)_aLine, &_retval);
    CheckException(__result);
    aLine = _aLine.GetString();
    return _retval;
  }

private:
  nsILineInputStream inner;

}

