/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAppleFileDecoder.idl
 */

module mozilla.dxpcom.nsIAppleFileDecoderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAppleFileDecoder;


public import mozilla.dxpcom.nsIAppleFileDecoderD;

public import mozilla.xpcom.nsIOutputStream;
public import mozilla.dxpcom.nsIOutputStreamD;
public import mozilla.xpcom.nsIFile;
public import mozilla.dxpcom.nsIFileD;


/* starting wrapper class:    nsIAppleFileDecoder */
class nsIAppleFileDecoderD : public nsIOutputStreamD {

  static const nsIID IID = NS_IAPPLEFILEDECODER_IID;


  alias nsIAppleFileDecoder InnerType;

  this(nsIAppleFileDecoder intr){
    super(intr);
    this.inner = intr;
  }

  nsIAppleFileDecoder opCast() {
    return inner;
  }

  void opAssign(nsIAppleFileDecoder value) {
    inner = value;
  }

  /**
     * Initialize the Apple File Decoder Output stream.
     *
     * @param outputStream     The output stream which the AppleFile Decoder will write to the data fork.
     * @param outputFile       The output file which the AppleFile Decoder will write to the resource fork.
     */
  /* void Initialize (in nsIOutputStream outputStream, in nsIFile outputFile); */
  void Initialize(nsIOutputStreamD outputStream, nsIFileD outputFile){
    nsresult __result = inner.Initialize(outputStream ? cast(nsIOutputStream)outputStream : null, outputFile ? cast(nsIFile)outputFile : null);
    CheckException(__result);
  }

private:
  nsIAppleFileDecoder inner;

}

