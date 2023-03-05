/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgRecipientArray.idl
 */

module mozilla.xpcom.nsIMsgRecipientArray;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIMsgRecipientArray */
const char[] NS_IMSGRECIPIENTARRAY_IID_STR = "650c3281-a1bf-11d3-a449-d481b6e12daa";

const nsIID NS_IMSGRECIPIENTARRAY_IID= 
  {0x650c3281, 0xa1bf, 0x11d3, 
    [ 0xa4, 0x49, 0xd4, 0x81, 0xb6, 0xe1, 0x2d, 0xaa ]};

extern(Windows)
interface nsIMsgRecipientArray : nsISupports {
  static const char[] IID_STR = NS_IMSGRECIPIENTARRAY_IID_STR;
  static const nsIID IID = NS_IMSGRECIPIENTARRAY_IID;

  /* wstring StringAt (in long index); */
  nsresult StringAt(PRInt32 index, PRUnichar **_retval);

  /* boolean AppendString (in wstring aString); */
  nsresult AppendString(PRUnichar *aString, PRBool *_retval);

  /* boolean RemoveStringAt (in long index); */
  nsresult RemoveStringAt(PRInt32 index, PRBool *_retval);

  /* void Clear (); */
  nsresult Clear();

  /* readonly attribute long count; */
  nsresult GetCount(PRInt32 *aCount);

}

