/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISaveAsCharset.idl
 */

module mozilla.xpcom.nsISaveAsCharset;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIEntityConverter;


/* starting interface:    nsISaveAsCharset */
const char[] NS_ISAVEASCHARSET_IID_STR = "33b87f70-7a9c-11d3-915c-006008a6edf6";

const nsIID NS_ISAVEASCHARSET_IID= 
  {0x33b87f70, 0x7a9c, 0x11d3, 
    [ 0x91, 0x5c, 0x00, 0x60, 0x08, 0xa6, 0xed, 0xf6 ]};

extern(Windows)
interface nsISaveAsCharset : nsISupports {
  static const char[] IID_STR = NS_ISAVEASCHARSET_IID_STR;
  static const nsIID IID = NS_ISAVEASCHARSET_IID;

  enum { mask_Fallback = 255U };

  enum { mask_Entity = 768U };

  enum { mask_CharsetFallback = 1024U };

  enum { mask_IgnorableFallback = 2048U };

  enum { attr_FallbackNone = 0U };

  enum { attr_FallbackQuestionMark = 1U };

  enum { attr_FallbackEscapeU = 2U };

  enum { attr_FallbackDecimalNCR = 3U };

  enum { attr_FallbackHexNCR = 4U };

  enum { attr_EntityNone = 0U };

  enum { attr_EntityBeforeCharsetConv = 256U };

  enum { attr_EntityAfterCharsetConv = 512U };

  enum { attr_CharsetFallback = 1024U };

  enum { attr_IgnoreIgnorables = 2048U };

  enum { attr_plainTextDefault = 0U };

  enum { attr_htmlTextDefault = 259U };

  /* readonly attribute string charset; */
  nsresult GetCharset(char * *aCharset);

  /* void Init (in string charset, in unsigned long attr, in unsigned long entityVersion); */
  nsresult Init(char *charset, PRUint32 attr, PRUint32 entityVersion);

  /* string Convert (in wstring inString); */
  nsresult Convert(PRUnichar *inString, char **_retval);

}

