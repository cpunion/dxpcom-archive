/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWSDLSOAPBinding.idl
 */

module mozilla.dxpcom.nsIWSDLSOAPBindingD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWSDLSOAPBinding;


public import mozilla.dxpcom.nsIWSDLSOAPBindingD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIWSDL;
public import mozilla.dxpcom.nsIWSDLD;


/* starting wrapper class:    nsIWSDLSOAPBinding */
class nsIWSDLSOAPBindingD : public nsIWSDLBindingD {

  static const nsIID IID = NS_IWSDLSOAPBINDING_IID;


  alias nsIWSDLSOAPBinding InnerType;

  this(nsIWSDLSOAPBinding intr){
    super(intr);
    this.inner = intr;
  }

  nsIWSDLSOAPBinding opCast() {
    return inner;
  }

  void opAssign(nsIWSDLSOAPBinding value) {
    inner = value;
  }

  enum { STYLE_RPC = 1U }

  enum { STYLE_DOCUMENT = 2U }

private:
  nsIWSDLSOAPBinding inner;

}


/* starting wrapper class:    nsISOAPPortBinding */
class nsISOAPPortBindingD : public nsIWSDLSOAPBindingD {

  static const nsIID IID = NS_ISOAPPORTBINDING_IID;


  alias nsISOAPPortBinding InnerType;

  this(nsISOAPPortBinding intr){
    super(intr);
    this.inner = intr;
  }

  nsISOAPPortBinding opCast() {
    return inner;
  }

  void opAssign(nsISOAPPortBinding value) {
    inner = value;
  }

  enum { SOAP_VERSION_1_1 = 0U }

  enum { SOAP_VERSION_1_2 = 1U }

  enum { SOAP_VERSION_UNKNOWN = 32767U }

  /* readonly attribute AString name; */
  wchar[] Name(){
    scope auto value = new AString();
    nsresult __result = inner.GetName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute AString address; */
  wchar[] Address(){
    scope auto value = new AString();
    nsresult __result = inner.GetAddress(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute unsigned short style; */
  PRUint16 Style(){
    PRUint16 value;
    nsresult __result = inner.GetStyle(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute AString transport; */
  wchar[] Transport(){
    scope auto value = new AString();
    nsresult __result = inner.GetTransport(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute unsigned short soapVersion; */
  PRUint16 SoapVersion(){
    PRUint16 value;
    nsresult __result = inner.GetSoapVersion(&value);
    CheckException(__result);
    return value;
  }

private:
  nsISOAPPortBinding inner;

}


/* starting wrapper class:    nsISOAPOperationBinding */
class nsISOAPOperationBindingD : public nsIWSDLSOAPBindingD {

  static const nsIID IID = NS_ISOAPOPERATIONBINDING_IID;


  alias nsISOAPOperationBinding InnerType;

  this(nsISOAPOperationBinding intr){
    super(intr);
    this.inner = intr;
  }

  nsISOAPOperationBinding opCast() {
    return inner;
  }

  void opAssign(nsISOAPOperationBinding value) {
    inner = value;
  }

  /* readonly attribute unsigned short style; */
  PRUint16 Style(){
    PRUint16 value;
    nsresult __result = inner.GetStyle(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute AString soapAction; */
  wchar[] SoapAction(){
    scope auto value = new AString();
    nsresult __result = inner.GetSoapAction(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

private:
  nsISOAPOperationBinding inner;

}


/* starting wrapper class:    nsISOAPMessageBinding */
class nsISOAPMessageBindingD : public nsIWSDLSOAPBindingD {

  static const nsIID IID = NS_ISOAPMESSAGEBINDING_IID;


  alias nsISOAPMessageBinding InnerType;

  this(nsISOAPMessageBinding intr){
    super(intr);
    this.inner = intr;
  }

  nsISOAPMessageBinding opCast() {
    return inner;
  }

  void opAssign(nsISOAPMessageBinding value) {
    inner = value;
  }

  /* readonly attribute AString namespace; */
  wchar[] Namespace(){
    scope auto value = new AString();
    nsresult __result = inner.GetNamespace(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

private:
  nsISOAPMessageBinding inner;

}


/* starting wrapper class:    nsISOAPPartBinding */
class nsISOAPPartBindingD : public nsIWSDLSOAPBindingD {

  static const nsIID IID = NS_ISOAPPARTBINDING_IID;


  alias nsISOAPPartBinding InnerType;

  this(nsISOAPPartBinding intr){
    super(intr);
    this.inner = intr;
  }

  nsISOAPPartBinding opCast() {
    return inner;
  }

  void opAssign(nsISOAPPartBinding value) {
    inner = value;
  }

  enum { LOCATION_BODY = 1U }

  enum { LOCATION_HEADER = 2U }

  enum { LOCATION_FAULT = 3U }

  enum { USE_LITERAL = 1U }

  enum { USE_ENCODED = 2U }

  /* readonly attribute unsigned short location; */
  PRUint16 Location(){
    PRUint16 value;
    nsresult __result = inner.GetLocation(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute unsigned short use; */
  PRUint16 Use(){
    PRUint16 value;
    nsresult __result = inner.GetUse(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute AString encodingStyle; */
  wchar[] EncodingStyle(){
    scope auto value = new AString();
    nsresult __result = inner.GetEncodingStyle(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute AString namespace; */
  wchar[] Namespace(){
    scope auto value = new AString();
    nsresult __result = inner.GetNamespace(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

private:
  nsISOAPPartBinding inner;

}

