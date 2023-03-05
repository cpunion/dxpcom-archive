/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUnicharOutputStream.idl
 */

module mozilla.dxpcom.nsIUnicharOutputStreamD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIUnicharOutputStream;


public import mozilla.dxpcom.nsIUnicharOutputStreamD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIUnicharOutputStream */
/**
 * An interface that allows writing unicode data.
 */
class nsIUnicharOutputStreamD : public nsISupportsD {

  static const nsIID IID = NS_IUNICHAROUTPUTSTREAM_IID;


  alias nsIUnicharOutputStream InnerType;

  this(nsIUnicharOutputStream intr){
    super(intr);
    this.inner = intr;
  }

  nsIUnicharOutputStream opCast() {
    return inner;
  }

  void opAssign(nsIUnicharOutputStream value) {
    inner = value;
  }

  /**
     * Write a single character to the stream. When writing many characters,
     * prefer the string-taking write method.
     *
     * @retval true The character was written successfully
     * @retval false Not all bytes of the character could be written.
     */
  /* boolean write (in unsigned long aCount, [array, size_is (aCount), const] in PRUnichar c); */
  PRBool Write(PRUint32 aCount, PRUnichar *c){
    PRBool _retval;
    nsresult __result = inner.Write(aCount, c, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Write a string to the stream.
     *
     * @retval true The string was written successfully
     * @retval false Not all bytes of the string could be written.
     */
  /* boolean writeString (in AString str); */
  PRBool WriteString(wchar[] str){
    scope auto _str = new AString(str);
    PRBool _retval;
    nsresult __result = inner.WriteString(cast(nsAString*)_str, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Flush the stream. This finishes the conversion and writes any bytes that
     * finish the current byte sequence.
     *
     * It does NOT flush the underlying stream.
     *
     * @see nsIUnicodeEncoder::Finish
     */
  /* void flush (); */
  void Flush(){
    nsresult __result = inner.Flush();
    CheckException(__result);
  }

  /**
     * Close the stream and free associated resources. This also closes the
     * underlying stream.
     */
  /* void close (); */
  void Close(){
    nsresult __result = inner.Close();
    CheckException(__result);
  }

private:
  nsIUnicharOutputStream inner;

}

