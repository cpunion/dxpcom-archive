/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILineInputStream.idl
 */

module mozilla.xpcom.nsILineInputStream;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsILineInputStream; /* forward declaration */


/* starting interface:    nsILineInputStream */
const char[] NS_ILINEINPUTSTREAM_IID_STR = "c97b466c-1e6e-4773-a4ab-2b2b3190a7a6";

const nsIID NS_ILINEINPUTSTREAM_IID= 
  {0xc97b466c, 0x1e6e, 0x4773, 
    [ 0xa4, 0xab, 0x2b, 0x2b, 0x31, 0x90, 0xa7, 0xa6 ]};

extern(Windows)
interface nsILineInputStream : nsISupports {
  static const char[] IID_STR = NS_ILINEINPUTSTREAM_IID_STR;
  static const nsIID IID = NS_ILINEINPUTSTREAM_IID;

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
  nsresult ReadLine(nsACString * aLine, PRBool *_retval);

}

