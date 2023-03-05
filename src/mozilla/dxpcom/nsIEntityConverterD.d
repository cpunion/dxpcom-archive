/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEntityConverter.idl
 */

module mozilla.dxpcom.nsIEntityConverterD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIEntityConverter;


public import mozilla.dxpcom.nsIEntityConverterD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIEntityConverter */
class nsIEntityConverterD : public nsISupportsD {

  static const nsIID IID = NS_IENTITYCONVERTER_IID;


  alias nsIEntityConverter InnerType;

  this(nsIEntityConverter intr){
    super(intr);
    this.inner = intr;
  }

  nsIEntityConverter opCast() {
    return inner;
  }

  void opAssign(nsIEntityConverter value) {
    inner = value;
  }

  enum { entityNone = 0U }

  enum { html40Latin1 = 1U }

  enum { html40Symbols = 2U }

  enum { html40Special = 4U }

  enum { transliterate = 8U }

  enum { mathml20 = 16U }

  enum { html32 = 1U }

  enum { html40 = 7U }

  enum { entityW3C = 23U }

  /* string ConvertUTF32ToEntity (in unsigned long character, in unsigned long entityVersion); */
  char* ConvertUTF32ToEntity(PRUint32 character, PRUint32 entityVersion){
    char* _retval;
    nsresult __result = inner.ConvertUTF32ToEntity(character, entityVersion, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* string ConvertToEntity (in wchar character, in unsigned long entityVersion); */
  char* ConvertToEntity(PRUnichar character, PRUint32 entityVersion){
    char* _retval;
    nsresult __result = inner.ConvertToEntity(character, entityVersion, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* wstring ConvertToEntities (in wstring inString, in unsigned long entityVersion); */
  PRUnichar* ConvertToEntities(PRUnichar*inString, PRUint32 entityVersion){
    PRUnichar* _retval;
    nsresult __result = inner.ConvertToEntities(inString, entityVersion, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIEntityConverter inner;

}

