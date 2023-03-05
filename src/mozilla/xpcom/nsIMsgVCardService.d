/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgVCardService.idl
 */

module mozilla.xpcom.nsIMsgVCardService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIMsgVCardService */
const char[] NS_IMSGVCARDSERVICE_IID_STR = "45539703-94b4-47fb-afd0-14dfe174899f";

const nsIID NS_IMSGVCARDSERVICE_IID= 
  {0x45539703, 0x94b4, 0x47fb, 
    [ 0xaf, 0xd0, 0x14, 0xdf, 0xe1, 0x74, 0x89, 0x9f ]};

extern(Windows)
interface nsIMsgVCardService : nsISupports {
  static const char[] IID_STR = NS_IMSGVCARDSERVICE_IID_STR;
  static const nsIID IID = NS_IMSGVCARDSERVICE_IID;

  /* [noscript, notxpcom] void cleanVObject (in VObject_ptr o); */
  void CleanVObject(VObject * o);

  /* [noscript, notxpcom] VObject_ptr nextVObjectInList (in VObject_ptr o); */
  VObject * NextVObjectInList(VObject * o);

  /* [noscript, notxpcom] VObject_ptr parse_MIME (in string input, in unsigned long len); */
  VObject * Parse_MIME(char *input, PRUint32 len);

  /* [noscript, notxpcom] string fakeCString (in VObject_ptr o); */
  char * FakeCString(VObject * o);

  /* [noscript, notxpcom] VObject_ptr isAPropertyOf (in VObject_ptr o, in string id); */
  VObject * IsAPropertyOf(VObject * o, char *id);

  /* [noscript, notxpcom] string writeMemoryVObjects (in string s, out long len, in VObject_ptr list, in boolean expandSpaces); */
  char * WriteMemoryVObjects(char *s, PRInt32 *len, VObject * list, PRBool expandSpaces);

  /* [noscript, notxpcom] VObject_ptr nextVObject (in VObjectIterator_ptr i); */
  VObject * NextVObject(VObjectIterator * i);

  /* [noscript, notxpcom] void initPropIterator (in VObjectIterator_ptr i, in VObject_ptr o); */
  void InitPropIterator(VObjectIterator * i, VObject * o);

  /* [noscript, notxpcom] long moreIteration (in VObjectIterator_ptr i); */
  PRInt32 MoreIteration(VObjectIterator * i);

  /* [noscript, notxpcom] const_char_ptr vObjectName (in VObject_ptr o); */
  char * VObjectName(VObject * o);

  /* [noscript, notxpcom] string vObjectAnyValue (in VObject_ptr o); */
  char * VObjectAnyValue(VObject * o);

}

