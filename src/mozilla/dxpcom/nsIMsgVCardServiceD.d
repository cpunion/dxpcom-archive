/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgVCardService.idl
 */

module mozilla.dxpcom.nsIMsgVCardServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgVCardService;


public import mozilla.dxpcom.nsIMsgVCardServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIMsgVCardService */
class nsIMsgVCardServiceD : public nsISupportsD {

  static const nsIID IID = NS_IMSGVCARDSERVICE_IID;


  alias nsIMsgVCardService InnerType;

  this(nsIMsgVCardService intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgVCardService opCast() {
    return inner;
  }

  void opAssign(nsIMsgVCardService value) {
    inner = value;
  }

  /* [noscript, notxpcom] void cleanVObject (in VObject_ptr o); */
  void CleanVObject(VObject * o){
  inner.CleanVObject(o);

  }

  /* [noscript, notxpcom] VObject_ptr nextVObjectInList (in VObject_ptr o); */
  VObject * NextVObjectInList(VObject * o){
    VObject * _retval;
    _retval = inner.NextVObjectInList(o);

    return _retval;
  }

  /* [noscript, notxpcom] VObject_ptr parse_MIME (in string input, in unsigned long len); */
  VObject * Parse_MIME(char*input, PRUint32 len){
    VObject * _retval;
    _retval = inner.Parse_MIME(input, len);

    return _retval;
  }

  /* [noscript, notxpcom] string fakeCString (in VObject_ptr o); */
  char* FakeCString(VObject * o){
    char* _retval;
    _retval = inner.FakeCString(o);

    return _retval;
  }

  /* [noscript, notxpcom] VObject_ptr isAPropertyOf (in VObject_ptr o, in string id); */
  VObject * IsAPropertyOf(VObject * o, char*id){
    VObject * _retval;
    _retval = inner.IsAPropertyOf(o, id);

    return _retval;
  }

  /* [noscript, notxpcom] string writeMemoryVObjects (in string s, out long len, in VObject_ptr list, in boolean expandSpaces); */
  char* WriteMemoryVObjects(char*s, out PRInt32 len, VObject * list, PRBool expandSpaces){
    char* _retval;
    _retval = inner.WriteMemoryVObjects(s, &len, list, expandSpaces);

    return _retval;
  }

  /* [noscript, notxpcom] VObject_ptr nextVObject (in VObjectIterator_ptr i); */
  VObject * NextVObject(VObjectIterator * i){
    VObject * _retval;
    _retval = inner.NextVObject(i);

    return _retval;
  }

  /* [noscript, notxpcom] void initPropIterator (in VObjectIterator_ptr i, in VObject_ptr o); */
  void InitPropIterator(VObjectIterator * i, VObject * o){
  inner.InitPropIterator(i, o);

  }

  /* [noscript, notxpcom] long moreIteration (in VObjectIterator_ptr i); */
  PRInt32 MoreIteration(VObjectIterator * i){
    PRInt32 _retval;
    _retval = inner.MoreIteration(i);

    return _retval;
  }

  /* [noscript, notxpcom] const_char_ptr vObjectName (in VObject_ptr o); */
  char * VObjectName(VObject * o){
    char * _retval;
    _retval = inner.VObjectName(o);

    return _retval;
  }

  /* [noscript, notxpcom] string vObjectAnyValue (in VObject_ptr o); */
  char* VObjectAnyValue(VObject * o){
    char* _retval;
    _retval = inner.VObjectAnyValue(o);

    return _retval;
  }

private:
  nsIMsgVCardService inner;

}

