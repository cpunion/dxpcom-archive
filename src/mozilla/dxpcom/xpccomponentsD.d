/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM xpccomponents.idl
 */

module mozilla.dxpcom.xpccomponentsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.xpccomponents;


public import mozilla.dxpcom.xpccomponentsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.xpcexception;
public import mozilla.dxpcom.xpcexceptionD;
public import mozilla.xpcom.xpcjsid;
public import mozilla.dxpcom.xpcjsidD;
public import mozilla.xpcom.nsIComponentManager;
public import mozilla.dxpcom.nsIComponentManagerD;
public import mozilla.xpcom.nsIScriptableInterfaces;
public import mozilla.dxpcom.nsIScriptableInterfacesD;


/* starting wrapper class:    nsIXPCComponents_Classes */
/**
* interface of Components.classes
* (interesting stuff only reflected into JavaScript)
*/
class nsIXPCComponents_ClassesD : public nsISupportsD {

  static const nsIID IID = NS_IXPCCOMPONENTS_CLASSES_IID;


  alias nsIXPCComponents_Classes InnerType;

  this(nsIXPCComponents_Classes intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPCComponents_Classes opCast() {
    return inner;
  }

  void opAssign(nsIXPCComponents_Classes value) {
    inner = value;
  }

private:
  nsIXPCComponents_Classes inner;

}


/* starting wrapper class:    nsIXPCComponents_ClassesByID */
/**
* interface of Components.classesByID
* (interesting stuff only reflected into JavaScript)
*/
class nsIXPCComponents_ClassesByIDD : public nsISupportsD {

  static const nsIID IID = NS_IXPCCOMPONENTS_CLASSESBYID_IID;


  alias nsIXPCComponents_ClassesByID InnerType;

  this(nsIXPCComponents_ClassesByID intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPCComponents_ClassesByID opCast() {
    return inner;
  }

  void opAssign(nsIXPCComponents_ClassesByID value) {
    inner = value;
  }

private:
  nsIXPCComponents_ClassesByID inner;

}


/* starting wrapper class:    nsIXPCComponents_Results */
/**
* interface of Components.results
* (interesting stuff only reflected into JavaScript)
*/
class nsIXPCComponents_ResultsD : public nsISupportsD {

  static const nsIID IID = NS_IXPCCOMPONENTS_RESULTS_IID;


  alias nsIXPCComponents_Results InnerType;

  this(nsIXPCComponents_Results intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPCComponents_Results opCast() {
    return inner;
  }

  void opAssign(nsIXPCComponents_Results value) {
    inner = value;
  }

private:
  nsIXPCComponents_Results inner;

}


/* starting wrapper class:    nsIXPCComponents_ID */
/**
* interface of Components.ID
* (interesting stuff only reflected into JavaScript)
*/
class nsIXPCComponents_IDD : public nsISupportsD {

  static const nsIID IID = NS_IXPCCOMPONENTS_ID_IID;


  alias nsIXPCComponents_ID InnerType;

  this(nsIXPCComponents_ID intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPCComponents_ID opCast() {
    return inner;
  }

  void opAssign(nsIXPCComponents_ID value) {
    inner = value;
  }

private:
  nsIXPCComponents_ID inner;

}


/* starting wrapper class:    nsIXPCComponents_Exception */
/**
* interface of Components.Exception
* (interesting stuff only reflected into JavaScript)
*/
class nsIXPCComponents_ExceptionD : public nsISupportsD {

  static const nsIID IID = NS_IXPCCOMPONENTS_EXCEPTION_IID;


  alias nsIXPCComponents_Exception InnerType;

  this(nsIXPCComponents_Exception intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPCComponents_Exception opCast() {
    return inner;
  }

  void opAssign(nsIXPCComponents_Exception value) {
    inner = value;
  }

private:
  nsIXPCComponents_Exception inner;

}


/* starting wrapper class:    nsIXPCComponents_Constructor */
/**
* interface of Components.Constructor
* (interesting stuff only reflected into JavaScript)
*/
class nsIXPCComponents_ConstructorD : public nsISupportsD {

  static const nsIID IID = NS_IXPCCOMPONENTS_CONSTRUCTOR_IID;


  alias nsIXPCComponents_Constructor InnerType;

  this(nsIXPCComponents_Constructor intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPCComponents_Constructor opCast() {
    return inner;
  }

  void opAssign(nsIXPCComponents_Constructor value) {
    inner = value;
  }

private:
  nsIXPCComponents_Constructor inner;

}


/* starting wrapper class:    nsIXPCConstructor */
/**
* interface of object returned by Components.Constructor
* (additional interesting stuff only reflected into JavaScript)
*/
class nsIXPCConstructorD : public nsISupportsD {

  static const nsIID IID = NS_IXPCCONSTRUCTOR_IID;


  alias nsIXPCConstructor InnerType;

  this(nsIXPCConstructor intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPCConstructor opCast() {
    return inner;
  }

  void opAssign(nsIXPCConstructor value) {
    inner = value;
  }

  /* readonly attribute nsIJSCID classID; */
  nsIJSCIDD  ClassID(){
    nsIJSCID value;
    nsresult __result = inner.GetClassID(&value);
    CheckException(__result);
    return new nsIJSCIDD(value);
  }

  /* readonly attribute nsIJSIID interfaceID; */
  nsIJSIIDD  InterfaceID(){
    nsIJSIID value;
    nsresult __result = inner.GetInterfaceID(&value);
    CheckException(__result);
    return new nsIJSIIDD(value);
  }

  /* readonly attribute string initializer; */
  char* Initializer(){
    char* value;
    nsresult __result = inner.GetInitializer(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIXPCConstructor inner;

}


/* starting wrapper class:    nsIXPCComponents_utils_Sandbox */
/**
* interface of object returned by Components.utils.Sandbox.
*/
class nsIXPCComponents_utils_SandboxD : public nsISupportsD {

  static const nsIID IID = NS_IXPCCOMPONENTS_UTILS_SANDBOX_IID;


  alias nsIXPCComponents_utils_Sandbox InnerType;

  this(nsIXPCComponents_utils_Sandbox intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPCComponents_utils_Sandbox opCast() {
    return inner;
  }

  void opAssign(nsIXPCComponents_utils_Sandbox value) {
    inner = value;
  }

private:
  nsIXPCComponents_utils_Sandbox inner;

}


/* starting wrapper class:    nsIXPCComponents_Utils */
/**
* interface of Components.utils
*/
class nsIXPCComponents_UtilsD : public nsISupportsD {

  static const nsIID IID = NS_IXPCCOMPONENTS_UTILS_IID;


  alias nsIXPCComponents_Utils InnerType;

  this(nsIXPCComponents_Utils intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPCComponents_Utils opCast() {
    return inner;
  }

  void opAssign(nsIXPCComponents_Utils value) {
    inner = value;
  }

  /* void reportError (); */
  void ReportError(){
    nsresult __result = inner.ReportError();
    CheckException(__result);
  }

  /* void lookupMethod (); */
  void LookupMethod(){
    nsresult __result = inner.LookupMethod();
    CheckException(__result);
  }

  /* readonly attribute nsIXPCComponents_utils_Sandbox Sandbox; */
  nsIXPCComponents_utils_SandboxD  Sandbox(){
    nsIXPCComponents_utils_Sandbox value;
    nsresult __result = inner.GetSandbox(&value);
    CheckException(__result);
    return new nsIXPCComponents_utils_SandboxD(value);
  }

  /* void evalInSandbox (in AString source); */
  void EvalInSandbox(wchar[] source){
    scope auto _source = new AString(source);
    nsresult __result = inner.EvalInSandbox(cast(nsAString*)_source);
    CheckException(__result);
  }

private:
  nsIXPCComponents_Utils inner;

}


/* starting wrapper class:    nsIXPCComponents */
/**
* interface of JavaScript's 'Components' object
*/
class nsIXPCComponentsD : public nsISupportsD {

  static const nsIID IID = NS_IXPCCOMPONENTS_IID;


  alias nsIXPCComponents InnerType;

  this(nsIXPCComponents intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPCComponents opCast() {
    return inner;
  }

  void opAssign(nsIXPCComponents value) {
    inner = value;
  }

  /* readonly attribute nsIScriptableInterfaces interfaces; */
  nsIScriptableInterfacesD  Interfaces(){
    nsIScriptableInterfaces value;
    nsresult __result = inner.GetInterfaces(&value);
    CheckException(__result);
    return new nsIScriptableInterfacesD(value);
  }

  /* readonly attribute nsIScriptableInterfacesByID interfacesByID; */
  nsIScriptableInterfacesByIDD  InterfacesByID(){
    nsIScriptableInterfacesByID value;
    nsresult __result = inner.GetInterfacesByID(&value);
    CheckException(__result);
    return new nsIScriptableInterfacesByIDD(value);
  }

  /* readonly attribute nsIXPCComponents_Classes classes; */
  nsIXPCComponents_ClassesD  Classes(){
    nsIXPCComponents_Classes value;
    nsresult __result = inner.GetClasses(&value);
    CheckException(__result);
    return new nsIXPCComponents_ClassesD(value);
  }

  /* readonly attribute nsIXPCComponents_ClassesByID classesByID; */
  nsIXPCComponents_ClassesByIDD  ClassesByID(){
    nsIXPCComponents_ClassesByID value;
    nsresult __result = inner.GetClassesByID(&value);
    CheckException(__result);
    return new nsIXPCComponents_ClassesByIDD(value);
  }

  /* readonly attribute nsIStackFrame stack; */
  nsIStackFrameD  Stack(){
    nsIStackFrame value;
    nsresult __result = inner.GetStack(&value);
    CheckException(__result);
    return new nsIStackFrameD(value);
  }

  /* readonly attribute nsIXPCComponents_Results results; */
  nsIXPCComponents_ResultsD  Results(){
    nsIXPCComponents_Results value;
    nsresult __result = inner.GetResults(&value);
    CheckException(__result);
    return new nsIXPCComponents_ResultsD(value);
  }

  /* readonly attribute nsIComponentManager manager; */
  nsIComponentManagerD  Manager(){
    nsIComponentManager value;
    nsresult __result = inner.GetManager(&value);
    CheckException(__result);
    return new nsIComponentManagerD(value);
  }

  /* readonly attribute nsIXPCComponents_Utils utils; */
  nsIXPCComponents_UtilsD  Utils(){
    nsIXPCComponents_Utils value;
    nsresult __result = inner.GetUtils(&value);
    CheckException(__result);
    return new nsIXPCComponents_UtilsD(value);
  }

  /* readonly attribute nsIXPCComponents_ID ID; */
  nsIXPCComponents_IDD  ID(){
    nsIXPCComponents_ID value;
    nsresult __result = inner.GetID(&value);
    CheckException(__result);
    return new nsIXPCComponents_IDD(value);
  }

  /* readonly attribute nsIXPCComponents_Exception Exception; */
  nsIXPCComponents_ExceptionD  Exception(){
    nsIXPCComponents_Exception value;
    nsresult __result = inner.GetException(&value);
    CheckException(__result);
    return new nsIXPCComponents_ExceptionD(value);
  }

  /* readonly attribute nsIXPCComponents_Constructor Constructor; */
  nsIXPCComponents_ConstructorD  Constructor(){
    nsIXPCComponents_Constructor value;
    nsresult __result = inner.GetConstructor(&value);
    CheckException(__result);
    return new nsIXPCComponents_ConstructorD(value);
  }

  /* boolean isSuccessCode (in nsresult result); */
  PRBool IsSuccessCode(nsresult result){
    PRBool _retval;
    nsresult __result = inner.IsSuccessCode(result, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void lookupMethod (); */
  void LookupMethod(){
    nsresult __result = inner.LookupMethod();
    CheckException(__result);
  }

  /* void reportError (); */
  void ReportError(){
    nsresult __result = inner.ReportError();
    CheckException(__result);
  }

private:
  nsIXPCComponents inner;

}

