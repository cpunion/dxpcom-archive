/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM imgILoad.idl
 */

module mozilla.xpcom.imgILoad;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.imgIContainer; /* forward declaration */


/* starting interface:    imgILoad */
const char[] IMGILOAD_IID_STR = "e6273acc-1dd1-11b2-a08b-824ad1b1628d";

const nsIID IMGILOAD_IID= 
  {0xe6273acc, 0x1dd1, 0x11b2, 
    [ 0xa0, 0x8b, 0x82, 0x4a, 0xd1, 0xb1, 0x62, 0x8d ]};

/**
 * imgILoad interface
 *
 * @author Stuart Parmenter <pavlov@netscape.com>
 * @version 0.1
 * @see imagelib2
 */
extern(Windows)
interface imgILoad : nsISupports {
  static const char[] IID_STR = IMGILOAD_IID_STR;
  static const nsIID IID = IMGILOAD_IID;

  /**
   * the image container...
   * @return the image object associated with the request.
   * @attention NEED DOCS
   */
  /* attribute imgIContainer image; */
  nsresult GetImage(imgIContainer  *aImage);
  nsresult SetImage(imgIContainer  aImage);

  /* readonly attribute PRBool isMultiPartChannel; */
  nsresult GetIsMultiPartChannel(PRBool *aIsMultiPartChannel);

}

