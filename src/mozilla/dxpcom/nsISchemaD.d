/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISchema.idl
 */

module mozilla.dxpcom.nsISchemaD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISchema;


public import mozilla.dxpcom.nsISchemaD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIWebServiceErrorHandler;
public import mozilla.dxpcom.nsIWebServiceErrorHandlerD;

public import mozilla.xpcom.nsISchema;

import mozilla.dxpcom.nsISchemaD;

public import mozilla.xpcom.nsISchema;

import mozilla.dxpcom.nsISchemaD;

public import mozilla.xpcom.nsISchema;

import mozilla.dxpcom.nsISchemaD;

public import mozilla.xpcom.nsISchema;

import mozilla.dxpcom.nsISchemaD;

public import mozilla.xpcom.nsISchema;

import mozilla.dxpcom.nsISchemaD;

public import mozilla.xpcom.nsISchema;

import mozilla.dxpcom.nsISchemaD;

public import mozilla.xpcom.nsISchema;

import mozilla.dxpcom.nsISchemaD;

public import mozilla.xpcom.nsISchema;

import mozilla.dxpcom.nsISchemaD;

public import mozilla.xpcom.nsISchema;

import mozilla.dxpcom.nsISchemaD;

public import mozilla.xpcom.nsISchema;

import mozilla.dxpcom.nsISchemaD;

public import mozilla.xpcom.nsISchema;

import mozilla.dxpcom.nsISchemaD;

public import mozilla.xpcom.nsISchema;

import mozilla.dxpcom.nsISchemaD;

public import mozilla.xpcom.nsISchema;

import mozilla.dxpcom.nsISchemaD;

public import mozilla.xpcom.nsISchema;

import mozilla.dxpcom.nsISchemaD;

public import mozilla.xpcom.nsISchema;

import mozilla.dxpcom.nsISchemaD;

public import mozilla.xpcom.nsISchema;

import mozilla.dxpcom.nsISchemaD;

public import mozilla.xpcom.nsISchema;

import mozilla.dxpcom.nsISchemaD;


/* starting wrapper class:    nsISchemaCollection */
/**
 * The collection of loaded schemas. If a schema references other 
 * schemas (generally through an import), these will be included
 * in the corresponding collection. 
 */
class nsISchemaCollectionD : public nsISupportsD {

  static const nsIID IID = NS_ISCHEMACOLLECTION_IID;


  alias nsISchemaCollection InnerType;

  this(nsISchemaCollection intr){
    super(intr);
    this.inner = intr;
  }

  nsISchemaCollection opCast() {
    return inner;
  }

  void opAssign(nsISchemaCollection value) {
    inner = value;
  }

  /* nsISchema getSchema (in AString targetNamespace); */
  nsISchemaD  GetSchema(wchar[] targetNamespace){
    scope auto _targetNamespace = new AString(targetNamespace);
    nsISchema _retval;
    nsresult __result = inner.GetSchema(cast(nsAString*)_targetNamespace, &_retval);
    CheckException(__result);
    return new nsISchemaD(_retval);
  }

  /* nsISchemaElement getElement (in AString name, in AString aNamespace); */
  nsISchemaElementD  GetElement(wchar[] name, wchar[] aNamespace){
    scope auto _name = new AString(name);
    scope auto _aNamespace = new AString(aNamespace);
    nsISchemaElement _retval;
    nsresult __result = inner.GetElement(cast(nsAString*)_name, cast(nsAString*)_aNamespace, &_retval);
    CheckException(__result);
    return new nsISchemaElementD(_retval);
  }

  /* nsISchemaAttribute getAttribute (in AString name, in AString aNamespace); */
  nsISchemaAttributeD  GetAttribute(wchar[] name, wchar[] aNamespace){
    scope auto _name = new AString(name);
    scope auto _aNamespace = new AString(aNamespace);
    nsISchemaAttribute _retval;
    nsresult __result = inner.GetAttribute(cast(nsAString*)_name, cast(nsAString*)_aNamespace, &_retval);
    CheckException(__result);
    return new nsISchemaAttributeD(_retval);
  }

  /* nsISchemaType getType (in AString name, in AString aNamespace); */
  nsISchemaTypeD  GetType(wchar[] name, wchar[] aNamespace){
    scope auto _name = new AString(name);
    scope auto _aNamespace = new AString(aNamespace);
    nsISchemaType _retval;
    nsresult __result = inner.GetType(cast(nsAString*)_name, cast(nsAString*)_aNamespace, &_retval);
    CheckException(__result);
    return new nsISchemaTypeD(_retval);
  }

private:
  nsISchemaCollection inner;

}


/* starting wrapper class:    nsISchemaComponent */
class nsISchemaComponentD : public nsISupportsD {

  static const nsIID IID = NS_ISCHEMACOMPONENT_IID;


  alias nsISchemaComponent InnerType;

  this(nsISchemaComponent intr){
    super(intr);
    this.inner = intr;
  }

  nsISchemaComponent opCast() {
    return inner;
  }

  void opAssign(nsISchemaComponent value) {
    inner = value;
  }

  /* readonly attribute AString targetNamespace; */
  wchar[] TargetNamespace(){
    scope auto value = new AString();
    nsresult __result = inner.GetTargetNamespace(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* void resolve (in nsIWebServiceErrorHandler aErrorHandler); */
  void Resolve(nsIWebServiceErrorHandlerD aErrorHandler){
    nsresult __result = inner.Resolve(aErrorHandler ? cast(nsIWebServiceErrorHandler)aErrorHandler : null);
    CheckException(__result);
  }

  /* void clear (); */
  void Clear(){
    nsresult __result = inner.Clear();
    CheckException(__result);
  }

private:
  nsISchemaComponent inner;

}


/* starting wrapper class:    nsISchema */
class nsISchemaD : public nsISchemaComponentD {

  static const nsIID IID = NS_ISCHEMA_IID;


  alias nsISchema InnerType;

  this(nsISchema intr){
    super(intr);
    this.inner = intr;
  }

  nsISchema opCast() {
    return inner;
  }

  void opAssign(nsISchema value) {
    inner = value;
  }

  /* readonly attribute AString schemaNamespace; */
  wchar[] SchemaNamespace(){
    scope auto value = new AString();
    nsresult __result = inner.GetSchemaNamespace(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute PRUint32 typeCount; */
  PRUint32 TypeCount(){
    PRUint32 value;
    nsresult __result = inner.GetTypeCount(&value);
    CheckException(__result);
    return value;
  }

  /* nsISchemaType getTypeByIndex (in PRUint32 index); */
  nsISchemaTypeD  GetTypeByIndex(PRUint32 index){
    nsISchemaType _retval;
    nsresult __result = inner.GetTypeByIndex(index, &_retval);
    CheckException(__result);
    return new nsISchemaTypeD(_retval);
  }

  /* nsISchemaType getTypeByName (in AString name); */
  nsISchemaTypeD  GetTypeByName(wchar[] name){
    scope auto _name = new AString(name);
    nsISchemaType _retval;
    nsresult __result = inner.GetTypeByName(cast(nsAString*)_name, &_retval);
    CheckException(__result);
    return new nsISchemaTypeD(_retval);
  }

  /* readonly attribute PRUint32 attributeCount; */
  PRUint32 AttributeCount(){
    PRUint32 value;
    nsresult __result = inner.GetAttributeCount(&value);
    CheckException(__result);
    return value;
  }

  /* nsISchemaAttribute getAttributeByIndex (in PRUint32 index); */
  nsISchemaAttributeD  GetAttributeByIndex(PRUint32 index){
    nsISchemaAttribute _retval;
    nsresult __result = inner.GetAttributeByIndex(index, &_retval);
    CheckException(__result);
    return new nsISchemaAttributeD(_retval);
  }

  /* nsISchemaAttribute getAttributeByName (in AString name); */
  nsISchemaAttributeD  GetAttributeByName(wchar[] name){
    scope auto _name = new AString(name);
    nsISchemaAttribute _retval;
    nsresult __result = inner.GetAttributeByName(cast(nsAString*)_name, &_retval);
    CheckException(__result);
    return new nsISchemaAttributeD(_retval);
  }

  /* readonly attribute PRUint32 elementCount; */
  PRUint32 ElementCount(){
    PRUint32 value;
    nsresult __result = inner.GetElementCount(&value);
    CheckException(__result);
    return value;
  }

  /* nsISchemaElement getElementByIndex (in PRUint32 index); */
  nsISchemaElementD  GetElementByIndex(PRUint32 index){
    nsISchemaElement _retval;
    nsresult __result = inner.GetElementByIndex(index, &_retval);
    CheckException(__result);
    return new nsISchemaElementD(_retval);
  }

  /* nsISchemaElement getElementByName (in AString name); */
  nsISchemaElementD  GetElementByName(wchar[] name){
    scope auto _name = new AString(name);
    nsISchemaElement _retval;
    nsresult __result = inner.GetElementByName(cast(nsAString*)_name, &_retval);
    CheckException(__result);
    return new nsISchemaElementD(_retval);
  }

  /* readonly attribute PRUint32 attributeGroupCount; */
  PRUint32 AttributeGroupCount(){
    PRUint32 value;
    nsresult __result = inner.GetAttributeGroupCount(&value);
    CheckException(__result);
    return value;
  }

  /* nsISchemaAttributeGroup getAttributeGroupByIndex (in PRUint32 index); */
  nsISchemaAttributeGroupD  GetAttributeGroupByIndex(PRUint32 index){
    nsISchemaAttributeGroup _retval;
    nsresult __result = inner.GetAttributeGroupByIndex(index, &_retval);
    CheckException(__result);
    return new nsISchemaAttributeGroupD(_retval);
  }

  /* nsISchemaAttributeGroup getAttributeGroupByName (in AString name); */
  nsISchemaAttributeGroupD  GetAttributeGroupByName(wchar[] name){
    scope auto _name = new AString(name);
    nsISchemaAttributeGroup _retval;
    nsresult __result = inner.GetAttributeGroupByName(cast(nsAString*)_name, &_retval);
    CheckException(__result);
    return new nsISchemaAttributeGroupD(_retval);
  }

  /* readonly attribute PRUint32 modelGroupCount; */
  PRUint32 ModelGroupCount(){
    PRUint32 value;
    nsresult __result = inner.GetModelGroupCount(&value);
    CheckException(__result);
    return value;
  }

  /* nsISchemaModelGroup getModelGroupByIndex (in PRUint32 index); */
  nsISchemaModelGroupD  GetModelGroupByIndex(PRUint32 index){
    nsISchemaModelGroup _retval;
    nsresult __result = inner.GetModelGroupByIndex(index, &_retval);
    CheckException(__result);
    return new nsISchemaModelGroupD(_retval);
  }

  /* nsISchemaModelGroup getModelGroupByName (in AString name); */
  nsISchemaModelGroupD  GetModelGroupByName(wchar[] name){
    scope auto _name = new AString(name);
    nsISchemaModelGroup _retval;
    nsresult __result = inner.GetModelGroupByName(cast(nsAString*)_name, &_retval);
    CheckException(__result);
    return new nsISchemaModelGroupD(_retval);
  }

  /* readonly attribute nsISchemaCollection collection; */
  nsISchemaCollectionD  Collection(){
    nsISchemaCollection value;
    nsresult __result = inner.GetCollection(&value);
    CheckException(__result);
    return new nsISchemaCollectionD(value);
  }

private:
  nsISchema inner;

}


/* starting wrapper class:    nsISchemaType */
class nsISchemaTypeD : public nsISchemaComponentD {

  static const nsIID IID = NS_ISCHEMATYPE_IID;


  alias nsISchemaType InnerType;

  this(nsISchemaType intr){
    super(intr);
    this.inner = intr;
  }

  nsISchemaType opCast() {
    return inner;
  }

  void opAssign(nsISchemaType value) {
    inner = value;
  }

  enum { SCHEMA_TYPE_SIMPLE = 1U }

  enum { SCHEMA_TYPE_COMPLEX = 2U }

  enum { SCHEMA_TYPE_PLACEHOLDER = 3U }

  /* readonly attribute AString name; */
  wchar[] Name(){
    scope auto value = new AString();
    nsresult __result = inner.GetName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute unsigned short schemaType; */
  PRUint16 SchemaType(){
    PRUint16 value;
    nsresult __result = inner.GetSchemaType(&value);
    CheckException(__result);
    return value;
  }

private:
  nsISchemaType inner;

}


/* starting wrapper class:    nsISchemaSimpleType */
class nsISchemaSimpleTypeD : public nsISchemaTypeD {

  static const nsIID IID = NS_ISCHEMASIMPLETYPE_IID;


  alias nsISchemaSimpleType InnerType;

  this(nsISchemaSimpleType intr){
    super(intr);
    this.inner = intr;
  }

  nsISchemaSimpleType opCast() {
    return inner;
  }

  void opAssign(nsISchemaSimpleType value) {
    inner = value;
  }

  enum { SIMPLE_TYPE_BUILTIN = 1U }

  enum { SIMPLE_TYPE_LIST = 2U }

  enum { SIMPLE_TYPE_UNION = 3U }

  enum { SIMPLE_TYPE_RESTRICTION = 4U }

  /* readonly attribute unsigned short simpleType; */
  PRUint16 SimpleType(){
    PRUint16 value;
    nsresult __result = inner.GetSimpleType(&value);
    CheckException(__result);
    return value;
  }

private:
  nsISchemaSimpleType inner;

}


/* starting wrapper class:    nsISchemaBuiltinType */
class nsISchemaBuiltinTypeD : public nsISchemaSimpleTypeD {

  static const nsIID IID = NS_ISCHEMABUILTINTYPE_IID;


  alias nsISchemaBuiltinType InnerType;

  this(nsISchemaBuiltinType intr){
    super(intr);
    this.inner = intr;
  }

  nsISchemaBuiltinType opCast() {
    return inner;
  }

  void opAssign(nsISchemaBuiltinType value) {
    inner = value;
  }

  enum { BUILTIN_TYPE_ANYTYPE = 1U }

  enum { BUILTIN_TYPE_STRING = 2U }

  enum { BUILTIN_TYPE_NORMALIZED_STRING = 3U }

  enum { BUILTIN_TYPE_TOKEN = 4U }

  enum { BUILTIN_TYPE_BYTE = 5U }

  enum { BUILTIN_TYPE_UNSIGNEDBYTE = 6U }

  enum { BUILTIN_TYPE_BASE64BINARY = 7U }

  enum { BUILTIN_TYPE_HEXBINARY = 8U }

  enum { BUILTIN_TYPE_INTEGER = 9U }

  enum { BUILTIN_TYPE_POSITIVEINTEGER = 10U }

  enum { BUILTIN_TYPE_NEGATIVEINTEGER = 11U }

  enum { BUILTIN_TYPE_NONNEGATIVEINTEGER = 12U }

  enum { BUILTIN_TYPE_NONPOSITIVEINTEGER = 13U }

  enum { BUILTIN_TYPE_INT = 14U }

  enum { BUILTIN_TYPE_UNSIGNEDINT = 15U }

  enum { BUILTIN_TYPE_LONG = 16U }

  enum { BUILTIN_TYPE_UNSIGNEDLONG = 17U }

  enum { BUILTIN_TYPE_SHORT = 18U }

  enum { BUILTIN_TYPE_UNSIGNEDSHORT = 19U }

  enum { BUILTIN_TYPE_DECIMAL = 20U }

  enum { BUILTIN_TYPE_FLOAT = 21U }

  enum { BUILTIN_TYPE_DOUBLE = 22U }

  enum { BUILTIN_TYPE_BOOLEAN = 23U }

  enum { BUILTIN_TYPE_TIME = 24U }

  enum { BUILTIN_TYPE_DATETIME = 25U }

  enum { BUILTIN_TYPE_DURATION = 26U }

  enum { BUILTIN_TYPE_DATE = 27U }

  enum { BUILTIN_TYPE_GMONTH = 28U }

  enum { BUILTIN_TYPE_GYEAR = 29U }

  enum { BUILTIN_TYPE_GYEARMONTH = 30U }

  enum { BUILTIN_TYPE_GDAY = 31U }

  enum { BUILTIN_TYPE_GMONTHDAY = 32U }

  enum { BUILTIN_TYPE_NAME = 33U }

  enum { BUILTIN_TYPE_QNAME = 34U }

  enum { BUILTIN_TYPE_NCNAME = 35U }

  enum { BUILTIN_TYPE_ANYURI = 36U }

  enum { BUILTIN_TYPE_LANGUAGE = 37U }

  enum { BUILTIN_TYPE_ID = 38U }

  enum { BUILTIN_TYPE_IDREF = 39U }

  enum { BUILTIN_TYPE_IDREFS = 40U }

  enum { BUILTIN_TYPE_ENTITY = 41U }

  enum { BUILTIN_TYPE_ENTITIES = 42U }

  enum { BUILTIN_TYPE_NOTATION = 43U }

  enum { BUILTIN_TYPE_NMTOKEN = 44U }

  enum { BUILTIN_TYPE_NMTOKENS = 45U }

  /* readonly attribute unsigned short builtinType; */
  PRUint16 BuiltinType(){
    PRUint16 value;
    nsresult __result = inner.GetBuiltinType(&value);
    CheckException(__result);
    return value;
  }

private:
  nsISchemaBuiltinType inner;

}


/* starting wrapper class:    nsISchemaListType */
class nsISchemaListTypeD : public nsISchemaSimpleTypeD {

  static const nsIID IID = NS_ISCHEMALISTTYPE_IID;


  alias nsISchemaListType InnerType;

  this(nsISchemaListType intr){
    super(intr);
    this.inner = intr;
  }

  nsISchemaListType opCast() {
    return inner;
  }

  void opAssign(nsISchemaListType value) {
    inner = value;
  }

  /* readonly attribute nsISchemaSimpleType listType; */
  nsISchemaSimpleTypeD  ListType(){
    nsISchemaSimpleType value;
    nsresult __result = inner.GetListType(&value);
    CheckException(__result);
    return new nsISchemaSimpleTypeD(value);
  }

private:
  nsISchemaListType inner;

}


/* starting wrapper class:    nsISchemaUnionType */
class nsISchemaUnionTypeD : public nsISchemaSimpleTypeD {

  static const nsIID IID = NS_ISCHEMAUNIONTYPE_IID;


  alias nsISchemaUnionType InnerType;

  this(nsISchemaUnionType intr){
    super(intr);
    this.inner = intr;
  }

  nsISchemaUnionType opCast() {
    return inner;
  }

  void opAssign(nsISchemaUnionType value) {
    inner = value;
  }

  /* readonly attribute PRUint32 unionTypeCount; */
  PRUint32 UnionTypeCount(){
    PRUint32 value;
    nsresult __result = inner.GetUnionTypeCount(&value);
    CheckException(__result);
    return value;
  }

  /* nsISchemaSimpleType getUnionType (in PRUint32 index); */
  nsISchemaSimpleTypeD  GetUnionType(PRUint32 index){
    nsISchemaSimpleType _retval;
    nsresult __result = inner.GetUnionType(index, &_retval);
    CheckException(__result);
    return new nsISchemaSimpleTypeD(_retval);
  }

private:
  nsISchemaUnionType inner;

}


/* starting wrapper class:    nsISchemaRestrictionType */
class nsISchemaRestrictionTypeD : public nsISchemaSimpleTypeD {

  static const nsIID IID = NS_ISCHEMARESTRICTIONTYPE_IID;


  alias nsISchemaRestrictionType InnerType;

  this(nsISchemaRestrictionType intr){
    super(intr);
    this.inner = intr;
  }

  nsISchemaRestrictionType opCast() {
    return inner;
  }

  void opAssign(nsISchemaRestrictionType value) {
    inner = value;
  }

  /* readonly attribute nsISchemaSimpleType baseType; */
  nsISchemaSimpleTypeD  BaseType(){
    nsISchemaSimpleType value;
    nsresult __result = inner.GetBaseType(&value);
    CheckException(__result);
    return new nsISchemaSimpleTypeD(value);
  }

  /* readonly attribute PRUint32 facetCount; */
  PRUint32 FacetCount(){
    PRUint32 value;
    nsresult __result = inner.GetFacetCount(&value);
    CheckException(__result);
    return value;
  }

  /* nsISchemaFacet getFacet (in PRUint32 index); */
  nsISchemaFacetD  GetFacet(PRUint32 index){
    nsISchemaFacet _retval;
    nsresult __result = inner.GetFacet(index, &_retval);
    CheckException(__result);
    return new nsISchemaFacetD(_retval);
  }

private:
  nsISchemaRestrictionType inner;

}


/* starting wrapper class:    nsISchemaComplexType */
class nsISchemaComplexTypeD : public nsISchemaTypeD {

  static const nsIID IID = NS_ISCHEMACOMPLEXTYPE_IID;


  alias nsISchemaComplexType InnerType;

  this(nsISchemaComplexType intr){
    super(intr);
    this.inner = intr;
  }

  nsISchemaComplexType opCast() {
    return inner;
  }

  void opAssign(nsISchemaComplexType value) {
    inner = value;
  }

  enum { CONTENT_MODEL_EMPTY = 1U }

  enum { CONTENT_MODEL_SIMPLE = 2U }

  enum { CONTENT_MODEL_ELEMENT_ONLY = 3U }

  enum { CONTENT_MODEL_MIXED = 4U }

  enum { DERIVATION_EXTENSION_SIMPLE = 1U }

  enum { DERIVATION_RESTRICTION_SIMPLE = 2U }

  enum { DERIVATION_EXTENSION_COMPLEX = 3U }

  enum { DERIVATION_RESTRICTION_COMPLEX = 4U }

  enum { DERIVATION_SELF_CONTAINED = 5U }

  /* readonly attribute unsigned short contentModel; */
  PRUint16 ContentModel(){
    PRUint16 value;
    nsresult __result = inner.GetContentModel(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute unsigned short derivation; */
  PRUint16 Derivation(){
    PRUint16 value;
    nsresult __result = inner.GetDerivation(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsISchemaType baseType; */
  nsISchemaTypeD  BaseType(){
    nsISchemaType value;
    nsresult __result = inner.GetBaseType(&value);
    CheckException(__result);
    return new nsISchemaTypeD(value);
  }

  /* readonly attribute nsISchemaSimpleType simpleBaseType; */
  nsISchemaSimpleTypeD  SimpleBaseType(){
    nsISchemaSimpleType value;
    nsresult __result = inner.GetSimpleBaseType(&value);
    CheckException(__result);
    return new nsISchemaSimpleTypeD(value);
  }

  /* readonly attribute nsISchemaModelGroup modelGroup; */
  nsISchemaModelGroupD  ModelGroup(){
    nsISchemaModelGroup value;
    nsresult __result = inner.GetModelGroup(&value);
    CheckException(__result);
    return new nsISchemaModelGroupD(value);
  }

  /* readonly attribute PRUint32 attributeCount; */
  PRUint32 AttributeCount(){
    PRUint32 value;
    nsresult __result = inner.GetAttributeCount(&value);
    CheckException(__result);
    return value;
  }

  /* nsISchemaAttributeComponent getAttributeByIndex (in PRUint32 index); */
  nsISchemaAttributeComponentD  GetAttributeByIndex(PRUint32 index){
    nsISchemaAttributeComponent _retval;
    nsresult __result = inner.GetAttributeByIndex(index, &_retval);
    CheckException(__result);
    return new nsISchemaAttributeComponentD(_retval);
  }

  /* nsISchemaAttributeComponent getAttributeByName (in AString name); */
  nsISchemaAttributeComponentD  GetAttributeByName(wchar[] name){
    scope auto _name = new AString(name);
    nsISchemaAttributeComponent _retval;
    nsresult __result = inner.GetAttributeByName(cast(nsAString*)_name, &_retval);
    CheckException(__result);
    return new nsISchemaAttributeComponentD(_retval);
  }

  /* readonly attribute boolean abstract; */
  PRBool Abstract(){
    PRBool value;
    nsresult __result = inner.GetAbstract(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean isArray; */
  PRBool IsArray(){
    PRBool value;
    nsresult __result = inner.GetIsArray(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsISchemaType arrayType; */
  nsISchemaTypeD  ArrayType(){
    nsISchemaType value;
    nsresult __result = inner.GetArrayType(&value);
    CheckException(__result);
    return new nsISchemaTypeD(value);
  }

  /* readonly attribute PRUint32 arrayDimension; */
  PRUint32 ArrayDimension(){
    PRUint32 value;
    nsresult __result = inner.GetArrayDimension(&value);
    CheckException(__result);
    return value;
  }

private:
  nsISchemaComplexType inner;

}


/* starting wrapper class:    nsISchemaParticle */
class nsISchemaParticleD : public nsISchemaComponentD {

  static const nsIID IID = NS_ISCHEMAPARTICLE_IID;


  alias nsISchemaParticle InnerType;

  this(nsISchemaParticle intr){
    super(intr);
    this.inner = intr;
  }

  nsISchemaParticle opCast() {
    return inner;
  }

  void opAssign(nsISchemaParticle value) {
    inner = value;
  }

  enum { PARTICLE_TYPE_ELEMENT = 1U }

  enum { PARTICLE_TYPE_MODEL_GROUP = 2U }

  enum { PARTICLE_TYPE_ANY = 3U }

  enum { OCCURRENCE_UNBOUNDED = 4294967295U }

  /* readonly attribute AString name; */
  wchar[] Name(){
    scope auto value = new AString();
    nsresult __result = inner.GetName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute unsigned short particleType; */
  PRUint16 ParticleType(){
    PRUint16 value;
    nsresult __result = inner.GetParticleType(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRUint32 minOccurs; */
  PRUint32 MinOccurs(){
    PRUint32 value;
    nsresult __result = inner.GetMinOccurs(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRUint32 maxOccurs; */
  PRUint32 MaxOccurs(){
    PRUint32 value;
    nsresult __result = inner.GetMaxOccurs(&value);
    CheckException(__result);
    return value;
  }

private:
  nsISchemaParticle inner;

}


/* starting wrapper class:    nsISchemaModelGroup */
class nsISchemaModelGroupD : public nsISchemaParticleD {

  static const nsIID IID = NS_ISCHEMAMODELGROUP_IID;


  alias nsISchemaModelGroup InnerType;

  this(nsISchemaModelGroup intr){
    super(intr);
    this.inner = intr;
  }

  nsISchemaModelGroup opCast() {
    return inner;
  }

  void opAssign(nsISchemaModelGroup value) {
    inner = value;
  }

  enum { COMPOSITOR_ALL = 1U }

  enum { COMPOSITOR_SEQUENCE = 2U }

  enum { COMPOSITOR_CHOICE = 3U }

  /* readonly attribute unsigned short compositor; */
  PRUint16 Compositor(){
    PRUint16 value;
    nsresult __result = inner.GetCompositor(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRUint32 particleCount; */
  PRUint32 ParticleCount(){
    PRUint32 value;
    nsresult __result = inner.GetParticleCount(&value);
    CheckException(__result);
    return value;
  }

  /* nsISchemaParticle getParticle (in PRUint32 index); */
  nsISchemaParticleD  GetParticle(PRUint32 index){
    nsISchemaParticle _retval;
    nsresult __result = inner.GetParticle(index, &_retval);
    CheckException(__result);
    return new nsISchemaParticleD(_retval);
  }

  /* nsISchemaElement getElementByName (in AString name); */
  nsISchemaElementD  GetElementByName(wchar[] name){
    scope auto _name = new AString(name);
    nsISchemaElement _retval;
    nsresult __result = inner.GetElementByName(cast(nsAString*)_name, &_retval);
    CheckException(__result);
    return new nsISchemaElementD(_retval);
  }

private:
  nsISchemaModelGroup inner;

}


/* starting wrapper class:    nsISchemaAnyParticle */
class nsISchemaAnyParticleD : public nsISchemaParticleD {

  static const nsIID IID = NS_ISCHEMAANYPARTICLE_IID;


  alias nsISchemaAnyParticle InnerType;

  this(nsISchemaAnyParticle intr){
    super(intr);
    this.inner = intr;
  }

  nsISchemaAnyParticle opCast() {
    return inner;
  }

  void opAssign(nsISchemaAnyParticle value) {
    inner = value;
  }

  enum { PROCESS_STRICT = 1U }

  enum { PROCESS_SKIP = 2U }

  enum { PROCESS_LAX = 3U }

  /* readonly attribute unsigned short process; */
  PRUint16 Process(){
    PRUint16 value;
    nsresult __result = inner.GetProcess(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute AString namespace; */
  wchar[] Namespace(){
    scope auto value = new AString();
    nsresult __result = inner.GetNamespace(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

private:
  nsISchemaAnyParticle inner;

}


/* starting wrapper class:    nsISchemaElement */
class nsISchemaElementD : public nsISchemaParticleD {

  static const nsIID IID = NS_ISCHEMAELEMENT_IID;


  alias nsISchemaElement InnerType;

  this(nsISchemaElement intr){
    super(intr);
    this.inner = intr;
  }

  nsISchemaElement opCast() {
    return inner;
  }

  void opAssign(nsISchemaElement value) {
    inner = value;
  }

  /* readonly attribute nsISchemaType type; */
  nsISchemaTypeD  Type(){
    nsISchemaType value;
    nsresult __result = inner.GetType(&value);
    CheckException(__result);
    return new nsISchemaTypeD(value);
  }

  /* readonly attribute AString defaultValue; */
  wchar[] DefaultValue(){
    scope auto value = new AString();
    nsresult __result = inner.GetDefaultValue(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute AString fixedValue; */
  wchar[] FixedValue(){
    scope auto value = new AString();
    nsresult __result = inner.GetFixedValue(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute boolean nillable; */
  PRBool Nillable(){
    PRBool value;
    nsresult __result = inner.GetNillable(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean abstract; */
  PRBool Abstract(){
    PRBool value;
    nsresult __result = inner.GetAbstract(&value);
    CheckException(__result);
    return value;
  }

private:
  nsISchemaElement inner;

}


/* starting wrapper class:    nsISchemaAttributeComponent */
class nsISchemaAttributeComponentD : public nsISchemaComponentD {

  static const nsIID IID = NS_ISCHEMAATTRIBUTECOMPONENT_IID;


  alias nsISchemaAttributeComponent InnerType;

  this(nsISchemaAttributeComponent intr){
    super(intr);
    this.inner = intr;
  }

  nsISchemaAttributeComponent opCast() {
    return inner;
  }

  void opAssign(nsISchemaAttributeComponent value) {
    inner = value;
  }

  enum { COMPONENT_TYPE_ATTRIBUTE = 1U }

  enum { COMPONENT_TYPE_GROUP = 2U }

  enum { COMPONENT_TYPE_ANY = 3U }

  /* readonly attribute AString name; */
  wchar[] Name(){
    scope auto value = new AString();
    nsresult __result = inner.GetName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute unsigned short componentType; */
  PRUint16 ComponentType(){
    PRUint16 value;
    nsresult __result = inner.GetComponentType(&value);
    CheckException(__result);
    return value;
  }

private:
  nsISchemaAttributeComponent inner;

}


/* starting wrapper class:    nsISchemaAttribute */
class nsISchemaAttributeD : public nsISchemaAttributeComponentD {

  static const nsIID IID = NS_ISCHEMAATTRIBUTE_IID;


  alias nsISchemaAttribute InnerType;

  this(nsISchemaAttribute intr){
    super(intr);
    this.inner = intr;
  }

  nsISchemaAttribute opCast() {
    return inner;
  }

  void opAssign(nsISchemaAttribute value) {
    inner = value;
  }

  enum { USE_OPTIONAL = 1U }

  enum { USE_PROHIBITED = 2U }

  enum { USE_REQUIRED = 3U }

  /* readonly attribute nsISchemaSimpleType type; */
  nsISchemaSimpleTypeD  Type(){
    nsISchemaSimpleType value;
    nsresult __result = inner.GetType(&value);
    CheckException(__result);
    return new nsISchemaSimpleTypeD(value);
  }

  /* readonly attribute AString defaultValue; */
  wchar[] DefaultValue(){
    scope auto value = new AString();
    nsresult __result = inner.GetDefaultValue(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute AString fixedValue; */
  wchar[] FixedValue(){
    scope auto value = new AString();
    nsresult __result = inner.GetFixedValue(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute unsigned short use; */
  PRUint16 Use(){
    PRUint16 value;
    nsresult __result = inner.GetUse(&value);
    CheckException(__result);
    return value;
  }

private:
  nsISchemaAttribute inner;

}


/* starting wrapper class:    nsISchemaAttributeGroup */
class nsISchemaAttributeGroupD : public nsISchemaAttributeComponentD {

  static const nsIID IID = NS_ISCHEMAATTRIBUTEGROUP_IID;


  alias nsISchemaAttributeGroup InnerType;

  this(nsISchemaAttributeGroup intr){
    super(intr);
    this.inner = intr;
  }

  nsISchemaAttributeGroup opCast() {
    return inner;
  }

  void opAssign(nsISchemaAttributeGroup value) {
    inner = value;
  }

  /* readonly attribute PRUint32 attributeCount; */
  PRUint32 AttributeCount(){
    PRUint32 value;
    nsresult __result = inner.GetAttributeCount(&value);
    CheckException(__result);
    return value;
  }

  /* nsISchemaAttributeComponent getAttributeByIndex (in PRUint32 index); */
  nsISchemaAttributeComponentD  GetAttributeByIndex(PRUint32 index){
    nsISchemaAttributeComponent _retval;
    nsresult __result = inner.GetAttributeByIndex(index, &_retval);
    CheckException(__result);
    return new nsISchemaAttributeComponentD(_retval);
  }

  /* nsISchemaAttributeComponent getAttributeByName (in AString name); */
  nsISchemaAttributeComponentD  GetAttributeByName(wchar[] name){
    scope auto _name = new AString(name);
    nsISchemaAttributeComponent _retval;
    nsresult __result = inner.GetAttributeByName(cast(nsAString*)_name, &_retval);
    CheckException(__result);
    return new nsISchemaAttributeComponentD(_retval);
  }

private:
  nsISchemaAttributeGroup inner;

}


/* starting wrapper class:    nsISchemaAnyAttribute */
class nsISchemaAnyAttributeD : public nsISchemaAttributeComponentD {

  static const nsIID IID = NS_ISCHEMAANYATTRIBUTE_IID;


  alias nsISchemaAnyAttribute InnerType;

  this(nsISchemaAnyAttribute intr){
    super(intr);
    this.inner = intr;
  }

  nsISchemaAnyAttribute opCast() {
    return inner;
  }

  void opAssign(nsISchemaAnyAttribute value) {
    inner = value;
  }

  enum { PROCESS_STRICT = 1U }

  enum { PROCESS_SKIP = 2U }

  enum { PROCESS_LAX = 3U }

  /* readonly attribute unsigned short process; */
  PRUint16 Process(){
    PRUint16 value;
    nsresult __result = inner.GetProcess(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute AString namespace; */
  wchar[] Namespace(){
    scope auto value = new AString();
    nsresult __result = inner.GetNamespace(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

private:
  nsISchemaAnyAttribute inner;

}


/* starting wrapper class:    nsISchemaFacet */
class nsISchemaFacetD : public nsISchemaComponentD {

  static const nsIID IID = NS_ISCHEMAFACET_IID;


  alias nsISchemaFacet InnerType;

  this(nsISchemaFacet intr){
    super(intr);
    this.inner = intr;
  }

  nsISchemaFacet opCast() {
    return inner;
  }

  void opAssign(nsISchemaFacet value) {
    inner = value;
  }

  enum { FACET_TYPE_LENGTH = 1U }

  enum { FACET_TYPE_MINLENGTH = 2U }

  enum { FACET_TYPE_MAXLENGTH = 3U }

  enum { FACET_TYPE_PATTERN = 4U }

  enum { FACET_TYPE_ENUMERATION = 5U }

  enum { FACET_TYPE_WHITESPACE = 6U }

  enum { FACET_TYPE_MAXINCLUSIVE = 7U }

  enum { FACET_TYPE_MININCLUSIVE = 8U }

  enum { FACET_TYPE_MAXEXCLUSIVE = 9U }

  enum { FACET_TYPE_MINEXCLUSIVE = 10U }

  enum { FACET_TYPE_TOTALDIGITS = 11U }

  enum { FACET_TYPE_FRACTIONDIGITS = 12U }

  enum { WHITESPACE_PRESERVE = 1U }

  enum { WHITESPACE_REPLACE = 1U }

  enum { WHITESPACE_COLLAPSE = 1U }

  /* readonly attribute unsigned short facetType; */
  PRUint16 FacetType(){
    PRUint16 value;
    nsresult __result = inner.GetFacetType(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute AString value; */
  wchar[] Value(){
    scope auto value = new AString();
    nsresult __result = inner.GetValue(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute PRUint32 lengthValue; */
  PRUint32 LengthValue(){
    PRUint32 value;
    nsresult __result = inner.GetLengthValue(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRUint32 digitsValue; */
  PRUint32 DigitsValue(){
    PRUint32 value;
    nsresult __result = inner.GetDigitsValue(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute unsigned short whitespaceValue; */
  PRUint16 WhitespaceValue(){
    PRUint16 value;
    nsresult __result = inner.GetWhitespaceValue(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean isfixed; */
  PRBool Isfixed(){
    PRBool value;
    nsresult __result = inner.GetIsfixed(&value);
    CheckException(__result);
    return value;
  }

private:
  nsISchemaFacet inner;

}

