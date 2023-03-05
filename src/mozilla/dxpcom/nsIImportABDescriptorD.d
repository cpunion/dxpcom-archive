/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImportABDescriptor.idl
 */

module mozilla.dxpcom.nsIImportABDescriptorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIImportABDescriptor;


public import mozilla.dxpcom.nsIImportABDescriptorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIFileSpec;

public import mozilla.dxpcom.nsIFileSpecD;


/* starting wrapper class:    nsIImportABDescriptor */
class nsIImportABDescriptorD : public nsISupportsD {

  static const nsIID IID = NS_IIMPORTABDESCRIPTOR_IID;


  alias nsIImportABDescriptor InnerType;

  this(nsIImportABDescriptor intr){
    super(intr);
    this.inner = intr;
  }

  nsIImportABDescriptor opCast() {
    return inner;
  }

  void opAssign(nsIImportABDescriptor value) {
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

  /* attribute unsigned long ref; */
  PRUint32 Ref(){
    PRUint32 value;
    nsresult __result = inner.GetRef(&value);
    CheckException(__result);
    return value;
  }
  void Ref(PRUint32 aRef){
    nsresult __result = inner.SetRef(aRef);
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

  /* wstring GetPreferredName (); */
  PRUnichar* GetPreferredName(){
    PRUnichar* _retval;
    nsresult __result = inner.GetPreferredName(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void SetPreferredName ([const] in wstring name); */
  void SetPreferredName(PRUnichar*name){
    nsresult __result = inner.SetPreferredName(name);
    CheckException(__result);
  }

  /* readonly attribute nsIFileSpec fileSpec; */
  nsIFileSpecD  FileSpec(){
    nsIFileSpec value;
    nsresult __result = inner.GetFileSpec(&value);
    CheckException(__result);
    return new nsIFileSpecD(value);
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

private:
  nsIImportABDescriptor inner;

}

