/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScriptableInterfaceInfo.idl
 */

module mozilla.dxpcom.nsIScriptableInterfaceInfoD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIScriptableInterfaceInfo;


public import mozilla.dxpcom.nsIScriptableInterfaceInfoD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIInterfaceInfo;
public import mozilla.dxpcom.nsIInterfaceInfoD;
public import mozilla.xpcom.nsIVariant;
public import mozilla.dxpcom.nsIVariantD;


/* starting wrapper class:    nsIScriptableDataType */
class nsIScriptableDataTypeD : public nsISupportsD {

  static const nsIID IID = NS_ISCRIPTABLEDATATYPE_IID;


  alias nsIScriptableDataType InnerType;

  this(nsIScriptableDataType intr){
    super(intr);
    this.inner = intr;
  }

  nsIScriptableDataType opCast() {
    return inner;
  }

  void opAssign(nsIScriptableDataType value) {
    inner = value;
  }

  /* readonly attribute PRBool isPointer; */
  PRBool IsPointer(){
    PRBool value;
    nsresult __result = inner.GetIsPointer(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRBool isUniquePointer; */
  PRBool IsUniquePointer(){
    PRBool value;
    nsresult __result = inner.GetIsUniquePointer(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRBool isReference; */
  PRBool IsReference(){
    PRBool value;
    nsresult __result = inner.GetIsReference(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRBool isArithmetic; */
  PRBool IsArithmetic(){
    PRBool value;
    nsresult __result = inner.GetIsArithmetic(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRBool isInterfacePointer; */
  PRBool IsInterfacePointer(){
    PRBool value;
    nsresult __result = inner.GetIsInterfacePointer(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRBool isArray; */
  PRBool IsArray(){
    PRBool value;
    nsresult __result = inner.GetIsArray(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRBool isDependent; */
  PRBool IsDependent(){
    PRBool value;
    nsresult __result = inner.GetIsDependent(&value);
    CheckException(__result);
    return value;
  }

  /**
    * This is one of the constants declared in nsIDataType
    */
  /* readonly attribute PRUint16 dataType; */
  PRUint16 DataType(){
    PRUint16 value;
    nsresult __result = inner.GetDataType(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIScriptableDataType inner;

}


/* starting wrapper class:    nsIScriptableParamInfo */
class nsIScriptableParamInfoD : public nsISupportsD {

  static const nsIID IID = NS_ISCRIPTABLEPARAMINFO_IID;


  alias nsIScriptableParamInfo InnerType;

  this(nsIScriptableParamInfo intr){
    super(intr);
    this.inner = intr;
  }

  nsIScriptableParamInfo opCast() {
    return inner;
  }

  void opAssign(nsIScriptableParamInfo value) {
    inner = value;
  }

  /* readonly attribute PRBool isIn; */
  PRBool IsIn(){
    PRBool value;
    nsresult __result = inner.GetIsIn(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRBool isOut; */
  PRBool IsOut(){
    PRBool value;
    nsresult __result = inner.GetIsOut(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRBool isRetval; */
  PRBool IsRetval(){
    PRBool value;
    nsresult __result = inner.GetIsRetval(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRBool isShared; */
  PRBool IsShared(){
    PRBool value;
    nsresult __result = inner.GetIsShared(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRBool isDipper; */
  PRBool IsDipper(){
    PRBool value;
    nsresult __result = inner.GetIsDipper(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsIScriptableDataType type; */
  nsIScriptableDataTypeD  Type(){
    nsIScriptableDataType value;
    nsresult __result = inner.GetType(&value);
    CheckException(__result);
    return new nsIScriptableDataTypeD(value);
  }

  /* [noscript] void getParamInfo ([shared, const, retval] out nsXPTParamInfoPtr aInfo); */
  void GetParamInfo(out nsXPTParamInfo * aInfo){
    nsresult __result = inner.GetParamInfo(&aInfo);
    CheckException(__result);
  }

private:
  nsIScriptableParamInfo inner;

}


/* starting wrapper class:    nsIScriptableConstant */
class nsIScriptableConstantD : public nsISupportsD {

  static const nsIID IID = NS_ISCRIPTABLECONSTANT_IID;


  alias nsIScriptableConstant InnerType;

  this(nsIScriptableConstant intr){
    super(intr);
    this.inner = intr;
  }

  nsIScriptableConstant opCast() {
    return inner;
  }

  void opAssign(nsIScriptableConstant value) {
    inner = value;
  }

  /* readonly attribute string name; */
  char* Name(){
    char* value;
    nsresult __result = inner.GetName(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsIScriptableDataType type; */
  nsIScriptableDataTypeD  Type(){
    nsIScriptableDataType value;
    nsresult __result = inner.GetType(&value);
    CheckException(__result);
    return new nsIScriptableDataTypeD(value);
  }

  /* readonly attribute nsIVariant value; */
  nsIVariantD  Value(){
    nsIVariant value;
    nsresult __result = inner.GetValue(&value);
    CheckException(__result);
    return new nsIVariantD(value);
  }

private:
  nsIScriptableConstant inner;

}


/* starting wrapper class:    nsIScriptableMethodInfo */
class nsIScriptableMethodInfoD : public nsISupportsD {

  static const nsIID IID = NS_ISCRIPTABLEMETHODINFO_IID;


  alias nsIScriptableMethodInfo InnerType;

  this(nsIScriptableMethodInfo intr){
    super(intr);
    this.inner = intr;
  }

  nsIScriptableMethodInfo opCast() {
    return inner;
  }

  void opAssign(nsIScriptableMethodInfo value) {
    inner = value;
  }

  /* readonly attribute PRBool isGetter; */
  PRBool IsGetter(){
    PRBool value;
    nsresult __result = inner.GetIsGetter(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRBool isSetter; */
  PRBool IsSetter(){
    PRBool value;
    nsresult __result = inner.GetIsSetter(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRBool isNotXPCOM; */
  PRBool IsNotXPCOM(){
    PRBool value;
    nsresult __result = inner.GetIsNotXPCOM(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRBool isConstructor; */
  PRBool IsConstructor(){
    PRBool value;
    nsresult __result = inner.GetIsConstructor(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRBool isHidden; */
  PRBool IsHidden(){
    PRBool value;
    nsresult __result = inner.GetIsHidden(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute string name; */
  char* Name(){
    char* value;
    nsresult __result = inner.GetName(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRUint8 paramCount; */
  PRUint8 ParamCount(){
    PRUint8 value;
    nsresult __result = inner.GetParamCount(&value);
    CheckException(__result);
    return value;
  }

  /* nsIScriptableParamInfo getParam (in PRUint8 idx); */
  nsIScriptableParamInfoD  GetParam(PRUint8 idx){
    nsIScriptableParamInfo _retval;
    nsresult __result = inner.GetParam(idx, &_retval);
    CheckException(__result);
    return new nsIScriptableParamInfoD(_retval);
  }

  /* readonly attribute nsIScriptableParamInfo result; */
  nsIScriptableParamInfoD  Result(){
    nsIScriptableParamInfo value;
    nsresult __result = inner.GetResult(&value);
    CheckException(__result);
    return new nsIScriptableParamInfoD(value);
  }

private:
  nsIScriptableMethodInfo inner;

}


/* starting wrapper class:    nsIScriptableInterfaceInfo */
class nsIScriptableInterfaceInfoD : public nsISupportsD {

  static const nsIID IID = NS_ISCRIPTABLEINTERFACEINFO_IID;


  alias nsIScriptableInterfaceInfo InnerType;

  this(nsIScriptableInterfaceInfo intr){
    super(intr);
    this.inner = intr;
  }

  nsIScriptableInterfaceInfo opCast() {
    return inner;
  }

  void opAssign(nsIScriptableInterfaceInfo value) {
    inner = value;
  }

  /* [noscript] attribute nsIInterfaceInfo info; */
  nsIInterfaceInfoD  Info(){
    nsIInterfaceInfo value;
    nsresult __result = inner.GetInfo(&value);
    CheckException(__result);
    return new nsIInterfaceInfoD(value);
  }
  void Info(nsIInterfaceInfoD  aInfo){
    nsIInterfaceInfo value;
    nsresult __result = inner.SetInfo(value);
    CheckException(__result);
  }

  /* void init (in nsIIDPtr aIID); */
  void Init(nsIID * aIID){
    nsresult __result = inner.Init(aIID);
    CheckException(__result);
  }

  /* void initWithName (in string name); */
  void InitWithName(char*name){
    nsresult __result = inner.InitWithName(name);
    CheckException(__result);
  }

  /* readonly attribute string name; */
  char* Name(){
    char* value;
    nsresult __result = inner.GetName(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsIIDPtr interfaceID; */
  nsIID * InterfaceID(){
    nsIID * value;
    nsresult __result = inner.GetInterfaceID(&value);
    CheckException(__result);
    return value;
  }

  /** 
     * True if this object has been sucessfully set to wrap an interface info.
     */
  /* readonly attribute PRBool isValid; */
  PRBool IsValid(){
    PRBool value;
    nsresult __result = inner.GetIsValid(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRBool isScriptable; */
  PRBool IsScriptable(){
    PRBool value;
    nsresult __result = inner.GetIsScriptable(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsIScriptableInterfaceInfo parent; */
  nsIScriptableInterfaceInfoD  Parent(){
    nsIScriptableInterfaceInfo value;
    nsresult __result = inner.GetParent(&value);
    CheckException(__result);
    return new nsIScriptableInterfaceInfoD(value);
  }

  /**
    * These include counts for parent (and all ancestors).
    */
  /* readonly attribute PRUint16 methodCount; */
  PRUint16 MethodCount(){
    PRUint16 value;
    nsresult __result = inner.GetMethodCount(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRUint16 constantCount; */
  PRUint16 ConstantCount(){
    PRUint16 value;
    nsresult __result = inner.GetConstantCount(&value);
    CheckException(__result);
    return value;
  }

  /**
    * These include methods and constants for parent (and all ancestors).
    */
  /* nsIScriptableMethodInfo getMethodInfo (in PRUint16 index); */
  nsIScriptableMethodInfoD  GetMethodInfo(PRUint16 index){
    nsIScriptableMethodInfo _retval;
    nsresult __result = inner.GetMethodInfo(index, &_retval);
    CheckException(__result);
    return new nsIScriptableMethodInfoD(_retval);
  }

  /* nsIScriptableMethodInfo getMethodInfoForName (in string methodName, out PRUint16 index); */
  nsIScriptableMethodInfoD  GetMethodInfoForName(char*methodName, out PRUint16 index){
    nsIScriptableMethodInfo _retval;
    nsresult __result = inner.GetMethodInfoForName(methodName, &index, &_retval);
    CheckException(__result);
    return new nsIScriptableMethodInfoD(_retval);
  }

  /* nsIScriptableConstant getConstant (in PRUint16 index); */
  nsIScriptableConstantD  GetConstant(PRUint16 index){
    nsIScriptableConstant _retval;
    nsresult __result = inner.GetConstant(index, &_retval);
    CheckException(__result);
    return new nsIScriptableConstantD(_retval);
  }

  /**
    * Get the interface information or iid associated with a param of some
    * method in this interface.
    */
  /* nsIScriptableInterfaceInfo getInfoForParam (in PRUint16 methodIndex, in nsIScriptableParamInfo param); */
  nsIScriptableInterfaceInfoD  GetInfoForParam(PRUint16 methodIndex, nsIScriptableParamInfoD param){
    nsIScriptableInterfaceInfo _retval;
    nsresult __result = inner.GetInfoForParam(methodIndex, param ? cast(nsIScriptableParamInfo)param : null, &_retval);
    CheckException(__result);
    return new nsIScriptableInterfaceInfoD(_retval);
  }

  /* nsIIDPtr getIIDForParam (in PRUint16 methodIndex, in nsIScriptableParamInfo param); */
  nsIID * GetIIDForParam(PRUint16 methodIndex, nsIScriptableParamInfoD param){
nsIID * _retval;
    nsresult __result = inner.GetIIDForParam(methodIndex, param ? cast(nsIScriptableParamInfo)param : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsIScriptableDataType getTypeForParam (in PRUint16 methodIndex, in nsIScriptableParamInfo param, in PRUint16 dimension); */
  nsIScriptableDataTypeD  GetTypeForParam(PRUint16 methodIndex, nsIScriptableParamInfoD param, PRUint16 dimension){
    nsIScriptableDataType _retval;
    nsresult __result = inner.GetTypeForParam(methodIndex, param ? cast(nsIScriptableParamInfo)param : null, dimension, &_retval);
    CheckException(__result);
    return new nsIScriptableDataTypeD(_retval);
  }

  /* PRUint8 getSizeIsArgNumberForParam (in PRUint16 methodIndex, in nsIScriptableParamInfo param, in PRUint16 dimension); */
  PRUint8 GetSizeIsArgNumberForParam(PRUint16 methodIndex, nsIScriptableParamInfoD param, PRUint16 dimension){
    PRUint8 _retval;
    nsresult __result = inner.GetSizeIsArgNumberForParam(methodIndex, param ? cast(nsIScriptableParamInfo)param : null, dimension, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRUint8 getLengthIsArgNumberForParam (in PRUint16 methodIndex, in nsIScriptableParamInfo param, in PRUint16 dimension); */
  PRUint8 GetLengthIsArgNumberForParam(PRUint16 methodIndex, nsIScriptableParamInfoD param, PRUint16 dimension){
    PRUint8 _retval;
    nsresult __result = inner.GetLengthIsArgNumberForParam(methodIndex, param ? cast(nsIScriptableParamInfo)param : null, dimension, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRUint8 getInterfaceIsArgNumberForParam (in PRUint16 methodIndex, in nsIScriptableParamInfo param); */
  PRUint8 GetInterfaceIsArgNumberForParam(PRUint16 methodIndex, nsIScriptableParamInfoD param){
    PRUint8 _retval;
    nsresult __result = inner.GetInterfaceIsArgNumberForParam(methodIndex, param ? cast(nsIScriptableParamInfo)param : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRBool isIID (in nsIIDPtr IID); */
  PRBool IsIID(nsIID * IID){
    PRBool _retval;
    nsresult __result = inner.IsIID(IID, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* readonly attribute PRBool isFunction; */
  PRBool IsFunction(){
    PRBool value;
    nsresult __result = inner.GetIsFunction(&value);
    CheckException(__result);
    return value;
  }

  /* PRBool hasAncestor (in nsIIDPtr iid); */
  PRBool HasAncestor(nsIID * iid){
    PRBool _retval;
    nsresult __result = inner.HasAncestor(iid, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIScriptableInterfaceInfo inner;

}

