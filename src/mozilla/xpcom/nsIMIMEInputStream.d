/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMIMEInputStream.idl
 */

module mozilla.xpcom.nsIMIMEInputStream;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIInputStream;


/* starting interface:    nsIMIMEInputStream */
const char[] NS_IMIMEINPUTSTREAM_IID_STR = "dcbce63c-1dd1-11b2-b94d-91f6d49a3161";

const nsIID NS_IMIMEINPUTSTREAM_IID= 
  {0xdcbce63c, 0x1dd1, 0x11b2, 
    [ 0xb9, 0x4d, 0x91, 0xf6, 0xd4, 0x9a, 0x31, 0x61 ]};

/**
 * The MIME stream separates headers and a datastream. It also allows
 * automatic creation of the content-length header.
 */
extern(Windows)
interface nsIMIMEInputStream : nsIInputStream {
  static const char[] IID_STR = NS_IMIMEINPUTSTREAM_IID_STR;
  static const nsIID IID = NS_IMIMEINPUTSTREAM_IID;

  /**
     * When true a "Content-Length" header is automatically added to the
     * stream. The value of the content-length is automatically calculated
     * using the available() method on the data stream. The value is
     * recalculated every time the stream is rewinded to the start.
     * Not allowed to be changed once the stream has been started to be read.
     */
  /* attribute boolean addContentLength; */
  nsresult GetAddContentLength(PRBool *aAddContentLength);
  nsresult SetAddContentLength(PRBool aAddContentLength);

  /**
     * Adds an additional header to the stream on the form "name: value". May
     * not be called once the stream has been started to be read.
     * @param name   name of the header
     * @param value  value of the header
     */
  /* void addHeader (in string name, in string value); */
  nsresult AddHeader(char *name, char *value);

  /**
     * Sets data-stream. May not be called once the stream has been started
     * to be read.
     * The cursor of the new stream should be located at the beginning of the
     * stream if the implementation of the nsIMIMEInputStream also is used as
     * an nsISeekableStream.
     * @param stream  stream containing the data for the stream
     */
  /* void setData (in nsIInputStream stream); */
  nsresult SetData(nsIInputStream stream);

}

