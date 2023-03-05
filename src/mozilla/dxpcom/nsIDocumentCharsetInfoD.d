/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDocumentCharsetInfo.idl
 */

module mozilla.dxpcom.nsIDocumentCharsetInfoD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDocumentCharsetInfo;


public import mozilla.dxpcom.nsIDocumentCharsetInfoD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIAtom;
public import mozilla.dxpcom.nsIAtomD;


/* starting wrapper class:    nsIDocumentCharsetInfo */
class nsIDocumentCharsetInfoD : public nsISupportsD {

  static const nsIID IID = NS_IDOCUMENTCHARSETINFO_IID;


  alias nsIDocumentCharsetInfo InnerType;

  this(nsIDocumentCharsetInfo intr){
    super(intr);
    this.inner = intr;
  }

  nsIDocumentCharsetInfo opCast() {
    return inner;
  }

  void opAssign(nsIDocumentCharsetInfo value) {
    inner = value;
  }

  /* attribute nsIAtom forcedCharset; */
  nsIAtomD  ForcedCharset(){
    nsIAtom value;
    nsresult __result = inner.GetForcedCharset(&value);
    CheckException(__result);
    return new nsIAtomD(value);
  }
  void ForcedCharset(nsIAtomD  aForcedCharset){
    nsIAtom value;
    nsresult __result = inner.SetForcedCharset(value);
    CheckException(__result);
  }

  /* attribute boolean forcedDetector; */
  PRBool ForcedDetector(){
    PRBool value;
    nsresult __result = inner.GetForcedDetector(&value);
    CheckException(__result);
    return value;
  }
  void ForcedDetector(PRBool aForcedDetector){
    nsresult __result = inner.SetForcedDetector(aForcedDetector);
    CheckException(__result);
  }

  /* attribute nsIAtom parentCharset; */
  nsIAtomD  ParentCharset(){
    nsIAtom value;
    nsresult __result = inner.GetParentCharset(&value);
    CheckException(__result);
    return new nsIAtomD(value);
  }
  void ParentCharset(nsIAtomD  aParentCharset){
    nsIAtom value;
    nsresult __result = inner.SetParentCharset(value);
    CheckException(__result);
  }

  /* attribute PRInt32 parentCharsetSource; */
  PRInt32 ParentCharsetSource(){
    PRInt32 value;
    nsresult __result = inner.GetParentCharsetSource(&value);
    CheckException(__result);
    return value;
  }
  void ParentCharsetSource(PRInt32 aParentCharsetSource){
    PRInt32 value;
    nsresult __result = inner.SetParentCharsetSource(value);
    CheckException(__result);
  }

private:
  nsIDocumentCharsetInfo inner;

}

