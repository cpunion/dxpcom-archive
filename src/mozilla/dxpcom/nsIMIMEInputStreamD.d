/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMIMEInputStream.idl
 */

module mozilla.dxpcom.nsIMIMEInputStreamD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMIMEInputStream;


public import mozilla.dxpcom.nsIMIMEInputStreamD;

public import mozilla.xpcom.nsIInputStream;
public import mozilla.dxpcom.nsIInputStreamD;


/* starting wrapper class:    nsIMIMEInputStream */
/**
 * The MIME stream separates headers and a datastream. It also allows
 * automatic creation of the content-length header.
 */
class nsIMIMEInputStreamD : public nsIInputStreamD {

  static const nsIID IID = NS_IMIMEINPUTSTREAM_IID;


  alias nsIMIMEInputStream InnerType;

  this(nsIMIMEInputStream intr){
    super(intr);
    this.inner = intr;
  }

  nsIMIMEInputStream opCast() {
    return inner;
  }

  void opAssign(nsIMIMEInputStream value) {
    inner = value;
  }

  /**
     * When true a "Content-Length" header is automatically added to the
     * stream. The value of the content-length is automatically calculated
     * using the available() method on the data stream. The value is
     * recalculated every time the stream is rewinded to the start.
     * Not allowed to be changed once the stream has been started to be read.
     */
  /* attribute boolean addContentLength; */
  PRBool AddContentLength(){
    PRBool value;
    nsresult __result = inner.GetAddContentLength(&value);
    CheckException(__result);
    return value;
  }
  void AddContentLength(PRBool aAddContentLength){
    nsresult __result = inner.SetAddContentLength(aAddContentLength);
    CheckException(__result);
  }

  /**
     * Adds an additional header to the stream on the form "name: value". May
     * not be called once the stream has been started to be read.
     * @param name   name of the header
     * @param value  value of the header
     */
  /* void addHeader (in string name, in string value); */
  void AddHeader(char*name, char*value){
    nsresult __result = inner.AddHeader(name, value);
    CheckException(__result);
  }

  /**
     * Sets data-stream. May not be called once the stream has been started
     * to be read.
     * The cursor of the new stream should be located at the beginning of the
     * stream if the implementation of the nsIMIMEInputStream also is used as
     * an nsISeekableStream.
     * @param stream  stream containing the data for the stream
     */
  /* void setData (in nsIInputStream stream); */
  void SetData(nsIInputStreamD stream){
    nsresult __result = inner.SetData(stream ? cast(nsIInputStream)stream : null);
    CheckException(__result);
  }

private:
  nsIMIMEInputStream inner;

}

