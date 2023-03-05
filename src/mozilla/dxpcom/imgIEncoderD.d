/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM imgIEncoder.idl
 */

module mozilla.dxpcom.imgIEncoderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.imgIEncoder;


public import mozilla.dxpcom.imgIEncoderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIInputStream;
public import mozilla.dxpcom.nsIInputStreamD;


/* starting wrapper class:    imgIEncoder_MOZILLA_1_8_BRANCH */
/**
 * imgIEncoder interface
 */
class imgIEncoder_MOZILLA_1_8_BRANCHD : public nsIInputStreamD {

  static const nsIID IID = IMGIENCODER_MOZILLA_1_8_BRANCH_IID;


  alias imgIEncoder_MOZILLA_1_8_BRANCH InnerType;

  this(imgIEncoder_MOZILLA_1_8_BRANCH intr){
    super(intr);
    this.inner = intr;
  }

  imgIEncoder_MOZILLA_1_8_BRANCH opCast() {
    return inner;
  }

  void opAssign(imgIEncoder_MOZILLA_1_8_BRANCH value) {
    inner = value;
  }

  enum { INPUT_FORMAT_RGB = 0U }

  enum { INPUT_FORMAT_RGBA = 1U }

  enum { INPUT_FORMAT_HOSTARGB = 2U }

  /* void initFromData ([array, size_is (length), const] in PRUint8 data, in unsigned long length, in PRUint32 width, in PRUint32 height, in PRUint32 stride, in PRUint32 inputFormat, in AString outputOptions); */
  void InitFromData(PRUint8 *data, PRUint32 length, PRUint32 width, PRUint32 height, PRUint32 stride, PRUint32 inputFormat, wchar[] outputOptions){
    scope auto _outputOptions = new AString(outputOptions);
    nsresult __result = inner.InitFromData(data, length, width, height, stride, inputFormat, cast(nsAString*)_outputOptions);
    CheckException(__result);
  }

private:
  imgIEncoder_MOZILLA_1_8_BRANCH inner;

}

public import mozilla.xpcom.nsIClipboard;

import mozilla.dxpcom.nsIClipboardD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;


/* starting wrapper class:    imgIEncoder */
class imgIEncoderD : public nsISupportsD {

  static const nsIID IID = IMGIENCODER_IID;


  alias imgIEncoder InnerType;

  this(imgIEncoder intr){
    super(intr);
    this.inner = intr;
  }

  imgIEncoder opCast() {
    return inner;
  }

  void opAssign(imgIEncoder value) {
    inner = value;
  }

  /* void encodeClipboardImage (in nsIClipboardImage aClipboardImage, out nsIFile aImageFile); */
  void EncodeClipboardImage(nsIClipboardImageD aClipboardImage, out nsIFileD aImageFile){
    nsIFile _aImageFile;
    nsresult __result = inner.EncodeClipboardImage(aClipboardImage ? cast(nsIClipboardImage)aClipboardImage : null, &_aImageFile);
    CheckException(__result);
    aImageFile = _aImageFile ? new nsIFileD(_aImageFile) : null;
  }

private:
  imgIEncoder inner;

}

