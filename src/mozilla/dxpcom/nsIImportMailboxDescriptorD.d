/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImportMailboxDescriptor.idl
 */

module mozilla.dxpcom.nsIImportMailboxDescriptorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIImportMailboxDescriptor;


public import mozilla.dxpcom.nsIImportMailboxDescriptorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIFileSpec;

public import mozilla.dxpcom.nsIFileSpecD;


/* starting wrapper class:    nsIImportMailboxDescriptor */
class nsIImportMailboxDescriptorD : public nsISupportsD {

  static const nsIID IID = NS_IIMPORTMAILBOXDESCRIPTOR_IID;


  alias nsIImportMailboxDescriptor InnerType;

  this(nsIImportMailboxDescriptor intr){
    super(intr);
    this.inner = intr;
  }

  nsIImportMailboxDescriptor opCast() {
    return inner;
  }

  void opAssign(nsIImportMailboxDescriptor value) {
    inner = value;
  }

  /* attribute unsigned long identifier; */
  PRUint32 Identifier(){
    PRUint32 value;
    nsresult __result = inner.GetIdentifier(&value);
    CheckException(__result);
    return value;
  }
  void Identifier(PRUint32 aIdentifier){
    nsresult __result = inner.SetIdentifier(aIdentifier);
    CheckException(__result);
  }

  /* attribute unsigned long depth; */
  PRUint32 Depth(){
    PRUint32 value;
    nsresult __result = inner.GetDepth(&value);
    CheckException(__result);
    return value;
  }
  void Depth(PRUint32 aDepth){
    nsresult __result = inner.SetDepth(aDepth);
    CheckException(__result);
  }

  /* attribute unsigned long size; */
  PRUint32 Size(){
    PRUint32 value;
    nsresult __result = inner.GetSize(&value);
    CheckException(__result);
    return value;
  }
  void Size(PRUint32 aSize){
    nsresult __result = inner.SetSize(aSize);
    CheckException(__result);
  }

  /* wstring GetDisplayName (); */
  PRUnichar* GetDisplayName(){
    PRUnichar* _retval;
    nsresult __result = inner.GetDisplayName(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void SetDisplayName ([const] in wstring name); */
  void SetDisplayName(PRUnichar*name){
    nsresult __result = inner.SetDisplayName(name);
    CheckException(__result);
  }

  /* attribute boolean import; */
  PRBool Import(){
    PRBool value;
    nsresult __result = inner.GetImport(&value);
    CheckException(__result);
    return value;
  }
  void Import(PRBool aImport){
    nsresult __result = inner.SetImport(aImport);
    CheckException(__result);
  }

  /* readonly attribute nsIFileSpec fileSpec; */
  nsIFileSpecD  FileSpec(){
    nsIFileSpec value;
    nsresult __result = inner.GetFileSpec(&value);
    CheckException(__result);
    return new nsIFileSpecD(value);
  }

private:
  nsIImportMailboxDescriptor inner;

}

