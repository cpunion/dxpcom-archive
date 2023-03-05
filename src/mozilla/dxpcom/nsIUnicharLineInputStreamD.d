/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUnicharLineInputStream.idl
 */

module mozilla.dxpcom.nsIUnicharLineInputStreamD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIUnicharLineInputStream;


public import mozilla.dxpcom.nsIUnicharLineInputStreamD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIUnicharLineInputStream */
class nsIUnicharLineInputStreamD : public nsISupportsD {

  static const nsIID IID = NS_IUNICHARLINEINPUTSTREAM_IID;


  alias nsIUnicharLineInputStream InnerType;

  this(nsIUnicharLineInputStream intr){
    super(intr);
    this.inner = intr;
  }

  nsIUnicharLineInputStream opCast() {
    return inner;
  }

  void opAssign(nsIUnicharLineInputStream value) {
    inner = value;
  }

  /**
   * Read a single line from the stream, where a line is a 
   * possibly zero length sequence of characters terminated by a
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
  /* boolean readLine (out AString aLine); */
  PRBool ReadLine(wchar[] aLine){
    scope auto _aLine = new AString;
    PRBool _retval;
    nsresult __result = inner.ReadLine(cast(nsAString*)_aLine, &_retval);
    CheckException(__result);
    aLine = _aLine.GetString();
    return _retval;
  }

private:
  nsIUnicharLineInputStream inner;

}

