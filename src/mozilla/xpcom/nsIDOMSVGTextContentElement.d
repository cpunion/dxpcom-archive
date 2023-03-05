/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMSVGTextContentElement.idl
 */

module mozilla.xpcom.nsIDOMSVGTextContentElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMSVGElement;

public import mozilla.xpcom.nsIDOMSVGAnimatedLength; /* forward declaration */

public import mozilla.xpcom.nsIDOMSVGAnimatedEnum;

public import mozilla.xpcom.nsIDOMSVGPoint; /* forward declaration */

public import mozilla.xpcom.nsIDOMSVGRect; /* forward declaration */


/* starting interface:    nsIDOMSVGTextContentElement */
const char[] NS_IDOMSVGTEXTCONTENTELEMENT_IID_STR = "87ad94bc-07c9-412b-b2d8-de245a2e84a5";

const nsIID NS_IDOMSVGTEXTCONTENTELEMENT_IID= 
  {0x87ad94bc, 0x07c9, 0x412b, 
    [ 0xb2, 0xd8, 0xde, 0x24, 0x5a, 0x2e, 0x84, 0xa5 ]};

extern(Windows)
interface nsIDOMSVGTextContentElement : nsIDOMSVGElement {
  static const char[] IID_STR = NS_IDOMSVGTEXTCONTENTELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMSVGTEXTCONTENTELEMENT_IID;

  enum { LENGTHADJUST_UNKNOWN = 0U };

  enum { LENGTHADJUST_SPACING = 1U };

  enum { LENGTHADJUST_SPACINGANDGLYPHS = 2U };

  /* readonly attribute nsIDOMSVGAnimatedLength textLength; */
  nsresult GetTextLength(nsIDOMSVGAnimatedLength  *aTextLength);

  /* readonly attribute nsIDOMSVGAnimatedEnumeration lengthAdjust; */
  nsresult GetLengthAdjust(nsIDOMSVGAnimatedEnumeration  *aLengthAdjust);

  /* long getNumberOfChars (); */
  nsresult GetNumberOfChars(PRInt32 *_retval);

  /* float getComputedTextLength (); */
  nsresult GetComputedTextLength(float *_retval);

  /* float getSubStringLength (in unsigned long charnum, in unsigned long nchars); */
  nsresult GetSubStringLength(PRUint32 charnum, PRUint32 nchars, float *_retval);

  /* nsIDOMSVGPoint getStartPositionOfChar (in unsigned long charnum); */
  nsresult GetStartPositionOfChar(PRUint32 charnum, nsIDOMSVGPoint *_retval);

  /* nsIDOMSVGPoint getEndPositionOfChar (in unsigned long charnum); */
  nsresult GetEndPositionOfChar(PRUint32 charnum, nsIDOMSVGPoint *_retval);

  /* nsIDOMSVGRect getExtentOfChar (in unsigned long charnum); */
  nsresult GetExtentOfChar(PRUint32 charnum, nsIDOMSVGRect *_retval);

  /* float getRotationOfChar (in unsigned long charnum); */
  nsresult GetRotationOfChar(PRUint32 charnum, float *_retval);

  /* long getCharNumAtPosition (in nsIDOMSVGPoint point); */
  nsresult GetCharNumAtPosition(nsIDOMSVGPoint point, PRInt32 *_retval);

  /* void selectSubString (in unsigned long charnum, in unsigned long nchars); */
  nsresult SelectSubString(PRUint32 charnum, PRUint32 nchars);

}

