/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISemanticUnitScanner.idl
 */

module mozilla.dxpcom.nsISemanticUnitScannerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISemanticUnitScanner;


public import mozilla.dxpcom.nsISemanticUnitScannerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsISemanticUnitScanner */
/**
 * Provides a language independent way to break UNICODE
 * text into meaningful semantic units (e.g. words).
 */
class nsISemanticUnitScannerD : public nsISupportsD {

  static const nsIID IID = NS_ISEMANTICUNITSCANNER_IID;


  alias nsISemanticUnitScanner InnerType;

  this(nsISemanticUnitScanner intr){
    super(intr);
    this.inner = intr;
  }

  nsISemanticUnitScanner opCast() {
    return inner;
  }

  void opAssign(nsISemanticUnitScanner value) {
    inner = value;
  }

  /**
     * start()
     *
     * Starts up the semantic unit scanner with an optional
     * character set, which acts as a hint to optimize the heuristics
     * used to determine the language(s) of the processed text.
     *
     * @param characterSet the character set the text was originally
     *                     encoded in (can be NULL)
     */
  /* void start (in string characterSet); */
  void Start(char*characterSet){
    nsresult __result = inner.Start(characterSet);
    CheckException(__result);
  }

  /**
     * next()
     * Get the begin / end offset of the next unit in the current text
     *
     * @param text the text to be scanned
     * @param length the number of characters in the text to be processed
     * @param pos the current position
     * @param isLastBuffer, the buffer is the last one
     * @param begin the begin offset of the next unit 
     * @param begin the end offset of the next unit 
     * @return has more unit in the current text
     */
  /* boolean next (in wstring text, in long length, in long pos, in boolean isLastBuffer, out long begin, out long end); */
  PRBool Next(PRUnichar*text, PRInt32 length, PRInt32 pos, PRBool isLastBuffer, out PRInt32 begin, out PRInt32 end){
    PRBool _retval;
    nsresult __result = inner.Next(text, length, pos, isLastBuffer, &begin, &end, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISemanticUnitScanner inner;

}

