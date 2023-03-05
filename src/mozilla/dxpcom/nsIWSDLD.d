/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWSDL.idl
 */

module mozilla.dxpcom.nsIWSDLD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWSDL;


public import mozilla.dxpcom.nsIWSDLD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISchema;
public import mozilla.dxpcom.nsISchemaD;

public import mozilla.xpcom.nsIWSDL;

import mozilla.dxpcom.nsIWSDLD;

public import mozilla.xpcom.nsIWSDL;

import mozilla.dxpcom.nsIWSDLD;

public import mozilla.xpcom.nsIWSDL;

import mozilla.dxpcom.nsIWSDLD;

public import mozilla.xpcom.nsIWSDL;

import mozilla.dxpcom.nsIWSDLD;

public import mozilla.xpcom.nsIWSDL;

import mozilla.dxpcom.nsIWSDLD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;


/* starting wrapper class:    nsIWSDLPort */
class nsIWSDLPortD : public nsISupportsD {

  static const nsIID IID = NS_IWSDLPORT_IID;


  alias nsIWSDLPort InnerType;

  this(nsIWSDLPort intr){
    super(intr);
    this.inner = intr;
  }

  nsIWSDLPort opCast() {
    return inner;
  }

  void opAssign(nsIWSDLPort value) {
    inner = value;
  }

  /* readonly attribute AString name; */
  wchar[] Name(){
    scope auto value = new AString();
    nsresult __result = inner.GetName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute nsIDOMElement documentation; */
  nsIDOMElementD  Documentation(){
    nsIDOMElement value;
    nsresult __result = inner.GetDocumentation(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

  /* readonly attribute nsIWSDLBinding binding; */
  nsIWSDLBindingD  Binding(){
    nsIWSDLBinding value;
    nsresult __result = inner.GetBinding(&value);
    CheckException(__result);
    return new nsIWSDLBindingD(value);
  }

  /* readonly attribute PRUint32 operationCount; */
  PRUint32 OperationCount(){
    PRUint32 value;
    nsresult __result = inner.GetOperationCount(&value);
    CheckException(__result);
    return value;
  }

  /* nsIWSDLOperation getOperation (in PRUint32 index); */
  nsIWSDLOperationD  GetOperation(PRUint32 index){
    nsIWSDLOperation _retval;
    nsresult __result = inner.GetOperation(index, &_retval);
    CheckException(__result);
    return new nsIWSDLOperationD(_retval);
  }

  /* nsIWSDLOperation getOperationByName (in AString name); */
  nsIWSDLOperationD  GetOperationByName(wchar[] name){
    scope auto _name = new AString(name);
    nsIWSDLOperation _retval;
    nsresult __result = inner.GetOperationByName(cast(nsAString*)_name, &_retval);
    CheckException(__result);
    return new nsIWSDLOperationD(_retval);
  }

private:
  nsIWSDLPort inner;

}


/* starting wrapper class:    nsIWSDLOperation */
class nsIWSDLOperationD : public nsISupportsD {

  static const nsIID IID = NS_IWSDLOPERATION_IID;


  alias nsIWSDLOperation InnerType;

  this(nsIWSDLOperation intr){
    super(intr);
    this.inner = intr;
  }

  nsIWSDLOperation opCast() {
    return inner;
  }

  void opAssign(nsIWSDLOperation value) {
    inner = value;
  }

  /* readonly attribute AString name; */
  wchar[] Name(){
    scope auto value = new AString();
    nsresult __result = inner.GetName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute nsIDOMElement documentation; */
  nsIDOMElementD  Documentation(){
    nsIDOMElement value;
    nsresult __result = inner.GetDocumentation(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

  /* readonly attribute nsIWSDLBinding binding; */
  nsIWSDLBindingD  Binding(){
    nsIWSDLBinding value;
    nsresult __result = inner.GetBinding(&value);
    CheckException(__result);
    return new nsIWSDLBindingD(value);
  }

  /* readonly attribute nsIWSDLMessage input; */
  nsIWSDLMessageD  Input(){
    nsIWSDLMessage value;
    nsresult __result = inner.GetInput(&value);
    CheckException(__result);
    return new nsIWSDLMessageD(value);
  }

  /* readonly attribute nsIWSDLMessage output; */
  nsIWSDLMessageD  Output(){
    nsIWSDLMessage value;
    nsresult __result = inner.GetOutput(&value);
    CheckException(__result);
    return new nsIWSDLMessageD(value);
  }

  /* readonly attribute PRUint32 faultCount; */
  PRUint32 FaultCount(){
    PRUint32 value;
    nsresult __result = inner.GetFaultCount(&value);
    CheckException(__result);
    return value;
  }

  /* nsIWSDLMessage getFault (in PRUint32 index); */
  nsIWSDLMessageD  GetFault(PRUint32 index){
    nsIWSDLMessage _retval;
    nsresult __result = inner.GetFault(index, &_retval);
    CheckException(__result);
    return new nsIWSDLMessageD(_retval);
  }

  /* readonly attribute PRUint32 parameterOrderCount; */
  PRUint32 ParameterOrderCount(){
    PRUint32 value;
    nsresult __result = inner.GetParameterOrderCount(&value);
    CheckException(__result);
    return value;
  }

  /* AString getParameter (in PRUint32 index); */
  wchar[] GetParameter(PRUint32 index){
    scope auto _retval = new AString;
    nsresult __result = inner.GetParameter(index, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* PRUint32 getParameterIndex (in AString name); */
  PRUint32 GetParameterIndex(wchar[] name){
    scope auto _name = new AString(name);
    PRUint32 _retval;
    nsresult __result = inner.GetParameterIndex(cast(nsAString*)_name, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIWSDLOperation inner;

}


/* starting wrapper class:    nsIWSDLMessage */
class nsIWSDLMessageD : public nsISupportsD {

  static const nsIID IID = NS_IWSDLMESSAGE_IID;


  alias nsIWSDLMessage InnerType;

  this(nsIWSDLMessage intr){
    super(intr);
    this.inner = intr;
  }

  nsIWSDLMessage opCast() {
    return inner;
  }

  void opAssign(nsIWSDLMessage value) {
    inner = value;
  }

  /* readonly attribute AString name; */
  wchar[] Name(){
    scope auto value = new AString();
    nsresult __result = inner.GetName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute nsIDOMElement documentation; */
  nsIDOMElementD  Documentation(){
    nsIDOMElement value;
    nsresult __result = inner.GetDocumentation(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

  /* readonly attribute nsIWSDLBinding binding; */
  nsIWSDLBindingD  Binding(){
    nsIWSDLBinding value;
    nsresult __result = inner.GetBinding(&value);
    CheckException(__result);
    return new nsIWSDLBindingD(value);
  }

  /* readonly attribute PRUint32 partCount; */
  PRUint32 PartCount(){
    PRUint32 value;
    nsresult __result = inner.GetPartCount(&value);
    CheckException(__result);
    return value;
  }

  /* nsIWSDLPart getPart (in PRUint32 index); */
  nsIWSDLPartD  GetPart(PRUint32 index){
    nsIWSDLPart _retval;
    nsresult __result = inner.GetPart(index, &_retval);
    CheckException(__result);
    return new nsIWSDLPartD(_retval);
  }

  /* nsIWSDLPart getPartByName (in AString name); */
  nsIWSDLPartD  GetPartByName(wchar[] name){
    scope auto _name = new AString(name);
    nsIWSDLPart _retval;
    nsresult __result = inner.GetPartByName(cast(nsAString*)_name, &_retval);
    CheckException(__result);
    return new nsIWSDLPartD(_retval);
  }

private:
  nsIWSDLMessage inner;

}


/* starting wrapper class:    nsIWSDLPart */
class nsIWSDLPartD : public nsISupportsD {

  static const nsIID IID = NS_IWSDLPART_IID;


  alias nsIWSDLPart InnerType;

  this(nsIWSDLPart intr){
    super(intr);
    this.inner = intr;
  }

  nsIWSDLPart opCast() {
    return inner;
  }

  void opAssign(nsIWSDLPart value) {
    inner = value;
  }

  /* readonly attribute AString name; */
  wchar[] Name(){
    scope auto value = new AString();
    nsresult __result = inner.GetName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute nsIWSDLBinding binding; */
  nsIWSDLBindingD  Binding(){
    nsIWSDLBinding value;
    nsresult __result = inner.GetBinding(&value);
    CheckException(__result);
    return new nsIWSDLBindingD(value);
  }

  /* readonly attribute AString type; */
  wchar[] Type(){
    scope auto value = new AString();
    nsresult __result = inner.GetType(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute AString elementName; */
  wchar[] ElementName(){
    scope auto value = new AString();
    nsresult __result = inner.GetElementName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * The schema component that corresponds to this part. If the
   * type attribute is used, this is a nsISchemaType. If the 
   * elementName attribute is used, it is a nsISchemaElement.
   */
  /* readonly attribute nsISchemaComponent schemaComponent; */
  nsISchemaComponentD  SchemaComponent(){
    nsISchemaComponent value;
    nsresult __result = inner.GetSchemaComponent(&value);
    CheckException(__result);
    return new nsISchemaComponentD(value);
  }

private:
  nsIWSDLPart inner;

}


/* starting wrapper class:    nsIWSDLBinding */
class nsIWSDLBindingD : public nsISupportsD {

  static const nsIID IID = NS_IWSDLBINDING_IID;


  alias nsIWSDLBinding InnerType;

  this(nsIWSDLBinding intr){
    super(intr);
    this.inner = intr;
  }

  nsIWSDLBinding opCast() {
    return inner;
  }

  void opAssign(nsIWSDLBinding value) {
    inner = value;
  }

  /* readonly attribute AString protocol; */
  wchar[] Protocol(){
    scope auto value = new AString();
    nsresult __result = inner.GetProtocol(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute nsIDOMElement documentation; */
  nsIDOMElementD  Documentation(){
    nsIDOMElement value;
    nsresult __result = inner.GetDocumentation(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

private:
  nsIWSDLBinding inner;

}

