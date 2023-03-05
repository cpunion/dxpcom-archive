/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISchemaDuration.idl
 */

module mozilla.xpcom.nsISchemaDuration;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsISchemaDuration */
const char[] NS_ISCHEMADURATION_IID_STR = "85dad673-28ce-414d-b46b-5c3cf4fd18a6";

const nsIID NS_ISCHEMADURATION_IID= 
  {0x85dad673, 0x28ce, 0x414d, 
    [ 0xb4, 0x6b, 0x5c, 0x3c, 0xf4, 0xfd, 0x18, 0xa6 ]};

extern(Windows)
interface nsISchemaDuration : nsISupports {
  static const char[] IID_STR = NS_ISCHEMADURATION_IID_STR;
  static const nsIID IID = NS_ISCHEMADURATION_IID;

  /* readonly attribute boolean negative; */
  nsresult GetNegative(PRBool *aNegative);

  /* PRUint32 getYears (); */
  nsresult GetYears(PRUint32 *_retval);

  /* PRUint32 getMonths (); */
  nsresult GetMonths(PRUint32 *_retval);

  /* PRUint32 getDays (); */
  nsresult GetDays(PRUint32 *_retval);

  /* PRUint32 getHours (); */
  nsresult GetHours(PRUint32 *_retval);

  /* PRUint32 getMinutes (); */
  nsresult GetMinutes(PRUint32 *_retval);

  /* PRUint32 getSeconds (); */
  nsresult GetSeconds(PRUint32 *_retval);

  /* double getFractionSeconds (); */
  nsresult GetFractionSeconds(double *_retval);

}

