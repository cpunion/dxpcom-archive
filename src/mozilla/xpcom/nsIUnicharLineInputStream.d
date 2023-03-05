/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUnicharLineInputStream.idl
 */

module mozilla.xpcom.nsIUnicharLineInputStream;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIUnicharLineInputStream */
const char[] NS_IUNICHARLINEINPUTSTREAM_IID_STR = "67f42475-ba80-40f8-ac0b-649c89230184";

const nsIID NS_IUNICHARLINEINPUTSTREAM_IID= 
  {0x67f42475, 0xba80, 0x40f8, 
    [ 0xac, 0x0b, 0x64, 0x9c, 0x89, 0x23, 0x01, 0x84 ]};

extern(Windows)
interface nsIUnicharLineInputStream : nsISupports {
  static const char[] IID_STR = NS_IUNICHARLINEINPUTSTREAM_IID_STR;
  static const nsIID IID = NS_IUNICHARLINEINPUTSTREAM_IID;

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
  nsresult ReadLine(nsAString * aLine, PRBool *_retval);

}

