/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUnicharOutputStream.idl
 */

module mozilla.xpcom.nsIUnicharOutputStream;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIUnicharOutputStream */
const char[] NS_IUNICHAROUTPUTSTREAM_IID_STR = "2d00b1bb-8b21-4a63-bcc6-7213f513ac2e";

const nsIID NS_IUNICHAROUTPUTSTREAM_IID= 
  {0x2d00b1bb, 0x8b21, 0x4a63, 
    [ 0xbc, 0xc6, 0x72, 0x13, 0xf5, 0x13, 0xac, 0x2e ]};

/**
 * An interface that allows writing unicode data.
 */
extern(Windows)
interface nsIUnicharOutputStream : nsISupports {
  static const char[] IID_STR = NS_IUNICHAROUTPUTSTREAM_IID_STR;
  static const nsIID IID = NS_IUNICHAROUTPUTSTREAM_IID;

  /**
     * Write a single character to the stream. When writing many characters,
     * prefer the string-taking write method.
     *
     * @retval true The character was written successfully
     * @retval false Not all bytes of the character could be written.
     */
  /* boolean write (in unsigned long aCount, [array, size_is (aCount), const] in PRUnichar c); */
  nsresult Write(PRUint32 aCount, PRUnichar *c, PRBool *_retval);

  /**
     * Write a string to the stream.
     *
     * @retval true The string was written successfully
     * @retval false Not all bytes of the string could be written.
     */
  /* boolean writeString (in AString str); */
  nsresult WriteString(nsAString * str, PRBool *_retval);

  /**
     * Flush the stream. This finishes the conversion and writes any bytes that
     * finish the current byte sequence.
     *
     * It does NOT flush the underlying stream.
     *
     * @see nsIUnicodeEncoder::Finish
     */
  /* void flush (); */
  nsresult Flush();

  /**
     * Close the stream and free associated resources. This also closes the
     * underlying stream.
     */
  /* void close (); */
  nsresult Close();

}

