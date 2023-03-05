/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM imgIEncoder.idl
 */

module mozilla.xpcom.imgIEncoder;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIInputStream;


/* starting interface:    imgIEncoder_MOZILLA_1_8_BRANCH */
const char[] IMGIENCODER_MOZILLA_1_8_BRANCH_IID_STR = "b1b0b493-3369-44e0-878d-f7c56d937680";

const nsIID IMGIENCODER_MOZILLA_1_8_BRANCH_IID= 
  {0xb1b0b493, 0x3369, 0x44e0, 
    [ 0x87, 0x8d, 0xf7, 0xc5, 0x6d, 0x93, 0x76, 0x80 ]};

/**
 * imgIEncoder interface
 */
extern(Windows)
interface imgIEncoder_MOZILLA_1_8_BRANCH : nsIInputStream {
  static const char[] IID_STR = IMGIENCODER_MOZILLA_1_8_BRANCH_IID_STR;
  static const nsIID IID = IMGIENCODER_MOZILLA_1_8_BRANCH_IID;

  enum { INPUT_FORMAT_RGB = 0U };

  enum { INPUT_FORMAT_RGBA = 1U };

  enum { INPUT_FORMAT_HOSTARGB = 2U };

  /* void initFromData ([array, size_is (length), const] in PRUint8 data, in unsigned long length, in PRUint32 width, in PRUint32 height, in PRUint32 stride, in PRUint32 inputFormat, in AString outputOptions); */
  nsresult InitFromData(PRUint8 *data, PRUint32 length, PRUint32 width, PRUint32 height, PRUint32 stride, PRUint32 inputFormat, nsAString * outputOptions);

}

public import mozilla.xpcom.nsIClipboard;

public import mozilla.xpcom.nsIFile; /* forward declaration */


/* starting interface:    imgIEncoder */
const char[] IMGIENCODER_IID_STR = "ccc5b3ad-3e67-4e3d-97e1-b06b2e96fef8";

const nsIID IMGIENCODER_IID= 
  {0xccc5b3ad, 0x3e67, 0x4e3d, 
    [ 0x97, 0xe1, 0xb0, 0x6b, 0x2e, 0x96, 0xfe, 0xf8 ]};

extern(Windows)
interface imgIEncoder : nsISupports {
  static const char[] IID_STR = IMGIENCODER_IID_STR;
  static const nsIID IID = IMGIENCODER_IID;

  /* void encodeClipboardImage (in nsIClipboardImage aClipboardImage, out nsIFile aImageFile); */
  nsresult EncodeClipboardImage(nsIClipboardImage aClipboardImage, nsIFile *aImageFile);

}

