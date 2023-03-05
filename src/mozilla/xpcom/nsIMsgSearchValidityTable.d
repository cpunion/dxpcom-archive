/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSearchValidityTable.idl
 */

module mozilla.xpcom.nsIMsgSearchValidityTable;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsMsgSearchCore;

public import mozilla.xpcom.nsISupportsArray; /* forward declaration */


/* starting interface:    nsIMsgSearchValidityTable */
const char[] NS_IMSGSEARCHVALIDITYTABLE_IID_STR = "b07f1cb6-fae9-4d92-9edb-03f9ad249c66";

const nsIID NS_IMSGSEARCHVALIDITYTABLE_IID= 
  {0xb07f1cb6, 0xfae9, 0x4d92, 
    [ 0x9e, 0xdb, 0x03, 0xf9, 0xad, 0x24, 0x9c, 0x66 ]};

extern(Windows)
interface nsIMsgSearchValidityTable : nsISupports {
  static const char[] IID_STR = NS_IMSGSEARCHVALIDITYTABLE_IID_STR;
  static const nsIID IID = NS_IMSGSEARCHVALIDITYTABLE_IID;

  /* void setAvailable (in nsMsgSearchAttribValue attrib, in nsMsgSearchOpValue op, in boolean active); */
  nsresult SetAvailable(nsMsgSearchAttribValue attrib, nsMsgSearchOpValue op, PRBool active);

  /* void setEnabled (in nsMsgSearchAttribValue attrib, in nsMsgSearchOpValue op, in boolean enabled); */
  nsresult SetEnabled(nsMsgSearchAttribValue attrib, nsMsgSearchOpValue op, PRBool enabled);

  /* void setValidButNotShown (in nsMsgSearchAttribValue attrib, in nsMsgSearchOpValue op, in boolean valid); */
  nsresult SetValidButNotShown(nsMsgSearchAttribValue attrib, nsMsgSearchOpValue op, PRBool valid);

  /* boolean getAvailable (in nsMsgSearchAttribValue attrib, in nsMsgSearchOpValue op); */
  nsresult GetAvailable(nsMsgSearchAttribValue attrib, nsMsgSearchOpValue op, PRBool *_retval);

  /* boolean getEnabled (in nsMsgSearchAttribValue attrib, in nsMsgSearchOpValue op); */
  nsresult GetEnabled(nsMsgSearchAttribValue attrib, nsMsgSearchOpValue op, PRBool *_retval);

  /* boolean getValidButNotShown (in nsMsgSearchAttribValue attrib, in nsMsgSearchOpValue op); */
  nsresult GetValidButNotShown(nsMsgSearchAttribValue attrib, nsMsgSearchOpValue op, PRBool *_retval);

  /* [noscript] void validateTerms (in nsISupportsArray terms); */
  nsresult ValidateTerms(nsISupportsArray terms);

  /* readonly attribute long numAvailAttribs; */
  nsresult GetNumAvailAttribs(PRInt32 *aNumAvailAttribs);

  /* void getAvailableAttributes (out unsigned long length, [array, size_is (length), retval] out nsMsgSearchAttribValue attrs); */
  nsresult GetAvailableAttributes(PRUint32 *length, nsMsgSearchAttribValue **attrs);

  /* void getAvailableOperators (in nsMsgSearchAttribValue attrib, out unsigned long length, [array, size_is (length), retval] out nsMsgSearchOpValue operators); */
  nsresult GetAvailableOperators(nsMsgSearchAttribValue attrib, PRUint32 *length, nsMsgSearchOpValue **operators);

  /* void setDefaultAttrib (in nsMsgSearchAttribValue defaultAttrib); */
  nsresult SetDefaultAttrib(nsMsgSearchAttribValue defaultAttrib);

}

