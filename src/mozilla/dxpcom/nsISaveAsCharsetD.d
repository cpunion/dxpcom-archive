/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISaveAsCharset.idl
 */

module mozilla.dxpcom.nsISaveAsCharsetD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISaveAsCharset;


public import mozilla.dxpcom.nsISaveAsCharsetD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIEntityConverter;
public import mozilla.dxpcom.nsIEntityConverterD;


/* starting wrapper class:    nsISaveAsCharset */
class nsISaveAsCharsetD : public nsISupportsD {

  static const nsIID IID = NS_ISAVEASCHARSET_IID;


  alias nsISaveAsCharset InnerType;

  this(nsISaveAsCharset intr){
    super(intr);
    this.inner = intr;
  }

  nsISaveAsCharset opCast() {
    return inner;
  }

  void opAssign(nsISaveAsCharset value) {
    inner = value;
  }

  enum { mask_Fallback = 255U }

  enum { mask_Entity = 768U }

  enum { mask_CharsetFallback = 1024U }

  enum { mask_IgnorableFallback = 2048U }

  enum { attr_FallbackNone = 0U }

  enum { attr_FallbackQuestionMark = 1U }

  enum { attr_FallbackEscapeU = 2U }

  enum { attr_FallbackDecimalNCR = 3U }

  enum { attr_FallbackHexNCR = 4U }

  enum { attr_EntityNone = 0U }

  enum { attr_EntityBeforeCharsetConv = 256U }

  enum { attr_EntityAfterCharsetConv = 512U }

  enum { attr_CharsetFallback = 1024U }

  enum { attr_IgnoreIgnorables = 2048U }

  enum { attr_plainTextDefault = 0U }

  enum { attr_htmlTextDefault = 259U }

  /* readonly attribute string charset; */
  char* Charset(){
    char* value;
    nsresult __result = inner.GetCharset(&value);
    CheckException(__result);
    return value;
  }

  /* void Init (in string charset, in unsigned long attr, in unsigned long entityVersion); */
  void Init(char*charset, PRUint32 attr, PRUint32 entityVersion){
    nsresult __result = inner.Init(charset, attr, entityVersion);
    CheckException(__result);
  }

  /* string Convert (in wstring inString); */
  char* Convert(PRUnichar*inString){
    char* _retval;
    nsresult __result = inner.Convert(inString, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsISaveAsCharset inner;

}

