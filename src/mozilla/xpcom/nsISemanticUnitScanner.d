/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISemanticUnitScanner.idl
 */

module mozilla.xpcom.nsISemanticUnitScanner;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsISemanticUnitScanner */
const char[] NS_ISEMANTICUNITSCANNER_IID_STR = "9f620be4-e535-11d6-b254-00039310a47a";

const nsIID NS_ISEMANTICUNITSCANNER_IID= 
  {0x9f620be4, 0xe535, 0x11d6, 
    [ 0xb2, 0x54, 0x00, 0x03, 0x93, 0x10, 0xa4, 0x7a ]};

/**
 * Provides a language independent way to break UNICODE
 * text into meaningful semantic units (e.g. words).
 */
extern(Windows)
interface nsISemanticUnitScanner : nsISupports {
  static const char[] IID_STR = NS_ISEMANTICUNITSCANNER_IID_STR;
  static const nsIID IID = NS_ISEMANTICUNITSCANNER_IID;

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
  nsresult Start(char *characterSet);

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
  nsresult Next(PRUnichar *text, PRInt32 length, PRInt32 pos, PRBool isLastBuffer, PRInt32 *begin, PRInt32 *end, PRBool *_retval);

}

