/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFLiteral.idl
 */

module mozilla.dxpcom.nsIRDFLiteralD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIRDFLiteral;


public import mozilla.dxpcom.nsIRDFLiteralD;

public import mozilla.xpcom.nsIRDFNode;
public import mozilla.dxpcom.nsIRDFNodeD;


/* starting wrapper class:    nsIRDFLiteral */
/**
 * A literal node in the graph, whose value is a string.
 */
class nsIRDFLiteralD : public nsIRDFNodeD {

  static const nsIID IID = NS_IRDFLITERAL_IID;


  alias nsIRDFLiteral InnerType;

  this(nsIRDFLiteral intr){
    super(intr);
    this.inner = intr;
  }

  nsIRDFLiteral opCast() {
    return inner;
  }

  void opAssign(nsIRDFLiteral value) {
    inner = value;
  }

  /**
     * The Unicode string value of the literal.
     */
  /* readonly attribute wstring Value; */
  PRUnichar* Value(){
    PRUnichar* value;
    nsresult __result = inner.GetValue(&value);
    CheckException(__result);
    return value;
  }

  /**
     * An unscriptable version used to avoid a string copy. Meant
     * for use as a performance optimization.
     */
  /* [noscript] void GetValueConst ([shared] out wstring aConstValue); */
  void GetValueConst(out PRUnichar*aConstValue){
    nsresult __result = inner.GetValueConst(&aConstValue);
    CheckException(__result);
  }

private:
  nsIRDFLiteral inner;

}


/* starting wrapper class:    nsIRDFDate */
/**
 * A literal node in the graph, whose value is a date
 */
class nsIRDFDateD : public nsIRDFNodeD {

  static const nsIID IID = NS_IRDFDATE_IID;


  alias nsIRDFDate InnerType;

  this(nsIRDFDate intr){
    super(intr);
    this.inner = intr;
  }

  nsIRDFDate opCast() {
    return inner;
  }

  void opAssign(nsIRDFDate value) {
    inner = value;
  }

  /**
     * The date value of the literal
     */
  /* readonly attribute long long Value; */
  PRInt64 Value(){
    PRInt64 value;
    nsresult __result = inner.GetValue(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIRDFDate inner;

}


/* starting wrapper class:    nsIRDFInt */
/**
 * A literal node in the graph, whose value is an integer
 */
class nsIRDFIntD : public nsIRDFNodeD {

  static const nsIID IID = NS_IRDFINT_IID;


  alias nsIRDFInt InnerType;

  this(nsIRDFInt intr){
    super(intr);
    this.inner = intr;
  }

  nsIRDFInt opCast() {
    return inner;
  }

  void opAssign(nsIRDFInt value) {
    inner = value;
  }

  /**
     * The integer value of the literal
     */
  /* readonly attribute long Value; */
  PRInt32 Value(){
    PRInt32 value;
    nsresult __result = inner.GetValue(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIRDFInt inner;

}


/* starting wrapper class:    nsIRDFBlob */
/**
 * A literal node in the graph, whose value is arbitrary
 * binary data.
 */
class nsIRDFBlobD : public nsIRDFNodeD {

  static const nsIID IID = NS_IRDFBLOB_IID;


  alias nsIRDFBlob InnerType;

  this(nsIRDFBlob intr){
    super(intr);
    this.inner = intr;
  }

  nsIRDFBlob opCast() {
    return inner;
  }

  void opAssign(nsIRDFBlob value) {
    inner = value;
  }

  /**
     * The binary data.
     */
  /* [noscript] readonly attribute const_octet_ptr value; */
  PRUint8 * Value(){
    PRUint8 * value;
    nsresult __result = inner.GetValue(&value);
    CheckException(__result);
    return value;
  }

  /**
     * The data's length.
     */
  /* readonly attribute long length; */
  PRInt32 Length(){
    PRInt32 value;
    nsresult __result = inner.GetLength(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIRDFBlob inner;

}

