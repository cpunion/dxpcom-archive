/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAppleFileDecoder.idl
 */

module mozilla.xpcom.nsIAppleFileDecoder;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIOutputStream;
public import mozilla.xpcom.nsIFile;


/* starting interface:    nsIAppleFileDecoder */
const char[] NS_IAPPLEFILEDECODER_IID_STR = "3a2bb280-64b8-11d5-9daa-bb433143c53c";

const nsIID NS_IAPPLEFILEDECODER_IID= 
  {0x3a2bb280, 0x64b8, 0x11d5, 
    [ 0x9d, 0xaa, 0xbb, 0x43, 0x31, 0x43, 0xc5, 0x3c ]};

extern(Windows)
interface nsIAppleFileDecoder : nsIOutputStream {
  static const char[] IID_STR = NS_IAPPLEFILEDECODER_IID_STR;
  static const nsIID IID = NS_IAPPLEFILEDECODER_IID;

  /**
     * Initialize the Apple File Decoder Output stream.
     *
     * @param outputStream     The output stream which the AppleFile Decoder will write to the data fork.
     * @param outputFile       The output file which the AppleFile Decoder will write to the resource fork.
     */
  /* void Initialize (in nsIOutputStream outputStream, in nsIFile outputFile); */
  nsresult Initialize(nsIOutputStream outputStream, nsIFile outputFile);

}

