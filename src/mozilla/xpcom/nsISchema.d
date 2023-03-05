/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISchema.idl
 */

module mozilla.xpcom.nsISchema;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIWebServiceErrorHandler;

public import mozilla.xpcom.nsISchema;

public import mozilla.xpcom.nsISchema;

public import mozilla.xpcom.nsISchema;

public import mozilla.xpcom.nsISchema;

public import mozilla.xpcom.nsISchema;

public import mozilla.xpcom.nsISchema;

public import mozilla.xpcom.nsISchema;

public import mozilla.xpcom.nsISchema;

public import mozilla.xpcom.nsISchema;

public import mozilla.xpcom.nsISchema;

public import mozilla.xpcom.nsISchema;

public import mozilla.xpcom.nsISchema;

public import mozilla.xpcom.nsISchema;

public import mozilla.xpcom.nsISchema;

public import mozilla.xpcom.nsISchema;

public import mozilla.xpcom.nsISchema;

public import mozilla.xpcom.nsISchema;


/* starting interface:    nsISchemaCollection */
const char[] NS_ISCHEMACOLLECTION_IID_STR = "427c5511-941b-48c0-9abc-8ec9ea5d964b";

const nsIID NS_ISCHEMACOLLECTION_IID= 
  {0x427c5511, 0x941b, 0x48c0, 
    [ 0x9a, 0xbc, 0x8e, 0xc9, 0xea, 0x5d, 0x96, 0x4b ]};

/**
 * The collection of loaded schemas. If a schema references other 
 * schemas (generally through an import), these will be included
 * in the corresponding collection. 
 */
extern(Windows)
interface nsISchemaCollection : nsISupports {
  static const char[] IID_STR = NS_ISCHEMACOLLECTION_IID_STR;
  static const nsIID IID = NS_ISCHEMACOLLECTION_IID;

  /* nsISchema getSchema (in AString targetNamespace); */
  nsresult GetSchema(nsAString * targetNamespace, nsISchema *_retval);

  /* nsISchemaElement getElement (in AString name, in AString aNamespace); */
  nsresult GetElement(nsAString * name, nsAString * aNamespace, nsISchemaElement *_retval);

  /* nsISchemaAttribute getAttribute (in AString name, in AString aNamespace); */
  nsresult GetAttribute(nsAString * name, nsAString * aNamespace, nsISchemaAttribute *_retval);

  /* nsISchemaType getType (in AString name, in AString aNamespace); */
  nsresult GetType(nsAString * name, nsAString * aNamespace, nsISchemaType *_retval);

}


/* starting interface:    nsISchemaComponent */
const char[] NS_ISCHEMACOMPONENT_IID_STR = "5caaa64e-e191-11d8-842a-000393b6661a";

const nsIID NS_ISCHEMACOMPONENT_IID= 
  {0x5caaa64e, 0xe191, 0x11d8, 
    [ 0x84, 0x2a, 0x00, 0x03, 0x93, 0xb6, 0x66, 0x1a ]};

extern(Windows)
interface nsISchemaComponent : nsISupports {
  static const char[] IID_STR = NS_ISCHEMACOMPONENT_IID_STR;
  static const nsIID IID = NS_ISCHEMACOMPONENT_IID;

  /* readonly attribute AString targetNamespace; */
  nsresult GetTargetNamespace(nsAString * aTargetNamespace);

  /* void resolve (in nsIWebServiceErrorHandler aErrorHandler); */
  nsresult Resolve(nsIWebServiceErrorHandler aErrorHandler);

  /* void clear (); */
  nsresult Clear();

}


/* starting interface:    nsISchema */
const char[] NS_ISCHEMA_IID_STR = "3c14a021-6f4e-11d5-9b46-000064657374";

const nsIID NS_ISCHEMA_IID= 
  {0x3c14a021, 0x6f4e, 0x11d5, 
    [ 0x9b, 0x46, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

extern(Windows)
interface nsISchema : nsISchemaComponent {
  static const char[] IID_STR = NS_ISCHEMA_IID_STR;
  static const nsIID IID = NS_ISCHEMA_IID;

  /* readonly attribute AString schemaNamespace; */
  nsresult GetSchemaNamespace(nsAString * aSchemaNamespace);

  /* readonly attribute PRUint32 typeCount; */
  nsresult GetTypeCount(PRUint32 *aTypeCount);

  /* nsISchemaType getTypeByIndex (in PRUint32 index); */
  nsresult GetTypeByIndex(PRUint32 index, nsISchemaType *_retval);

  /* nsISchemaType getTypeByName (in AString name); */
  nsresult GetTypeByName(nsAString * name, nsISchemaType *_retval);

  /* readonly attribute PRUint32 attributeCount; */
  nsresult GetAttributeCount(PRUint32 *aAttributeCount);

  /* nsISchemaAttribute getAttributeByIndex (in PRUint32 index); */
  nsresult GetAttributeByIndex(PRUint32 index, nsISchemaAttribute *_retval);

  /* nsISchemaAttribute getAttributeByName (in AString name); */
  nsresult GetAttributeByName(nsAString * name, nsISchemaAttribute *_retval);

  /* readonly attribute PRUint32 elementCount; */
  nsresult GetElementCount(PRUint32 *aElementCount);

  /* nsISchemaElement getElementByIndex (in PRUint32 index); */
  nsresult GetElementByIndex(PRUint32 index, nsISchemaElement *_retval);

  /* nsISchemaElement getElementByName (in AString name); */
  nsresult GetElementByName(nsAString * name, nsISchemaElement *_retval);

  /* readonly attribute PRUint32 attributeGroupCount; */
  nsresult GetAttributeGroupCount(PRUint32 *aAttributeGroupCount);

  /* nsISchemaAttributeGroup getAttributeGroupByIndex (in PRUint32 index); */
  nsresult GetAttributeGroupByIndex(PRUint32 index, nsISchemaAttributeGroup *_retval);

  /* nsISchemaAttributeGroup getAttributeGroupByName (in AString name); */
  nsresult GetAttributeGroupByName(nsAString * name, nsISchemaAttributeGroup *_retval);

  /* readonly attribute PRUint32 modelGroupCount; */
  nsresult GetModelGroupCount(PRUint32 *aModelGroupCount);

  /* nsISchemaModelGroup getModelGroupByIndex (in PRUint32 index); */
  nsresult GetModelGroupByIndex(PRUint32 index, nsISchemaModelGroup *_retval);

  /* nsISchemaModelGroup getModelGroupByName (in AString name); */
  nsresult GetModelGroupByName(nsAString * name, nsISchemaModelGroup *_retval);

  /* readonly attribute nsISchemaCollection collection; */
  nsresult GetCollection(nsISchemaCollection  *aCollection);

}


/* starting interface:    nsISchemaType */
const char[] NS_ISCHEMATYPE_IID_STR = "3c14a022-6f4e-11d5-9b46-000064657374";

const nsIID NS_ISCHEMATYPE_IID= 
  {0x3c14a022, 0x6f4e, 0x11d5, 
    [ 0x9b, 0x46, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

extern(Windows)
interface nsISchemaType : nsISchemaComponent {
  static const char[] IID_STR = NS_ISCHEMATYPE_IID_STR;
  static const nsIID IID = NS_ISCHEMATYPE_IID;

  enum { SCHEMA_TYPE_SIMPLE = 1U };

  enum { SCHEMA_TYPE_COMPLEX = 2U };

  enum { SCHEMA_TYPE_PLACEHOLDER = 3U };

  /* readonly attribute AString name; */
  nsresult GetName(nsAString * aName);

  /* readonly attribute unsigned short schemaType; */
  nsresult GetSchemaType(PRUint16 *aSchemaType);

}


/* starting interface:    nsISchemaSimpleType */
const char[] NS_ISCHEMASIMPLETYPE_IID_STR = "3c14a023-6f4e-11d5-9b46-000064657374";

const nsIID NS_ISCHEMASIMPLETYPE_IID= 
  {0x3c14a023, 0x6f4e, 0x11d5, 
    [ 0x9b, 0x46, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

extern(Windows)
interface nsISchemaSimpleType : nsISchemaType {
  static const char[] IID_STR = NS_ISCHEMASIMPLETYPE_IID_STR;
  static const nsIID IID = NS_ISCHEMASIMPLETYPE_IID;

  enum { SIMPLE_TYPE_BUILTIN = 1U };

  enum { SIMPLE_TYPE_LIST = 2U };

  enum { SIMPLE_TYPE_UNION = 3U };

  enum { SIMPLE_TYPE_RESTRICTION = 4U };

  /* readonly attribute unsigned short simpleType; */
  nsresult GetSimpleType(PRUint16 *aSimpleType);

}


/* starting interface:    nsISchemaBuiltinType */
const char[] NS_ISCHEMABUILTINTYPE_IID_STR = "3c14a024-6f4e-11d5-9b46-000064657374";

const nsIID NS_ISCHEMABUILTINTYPE_IID= 
  {0x3c14a024, 0x6f4e, 0x11d5, 
    [ 0x9b, 0x46, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

extern(Windows)
interface nsISchemaBuiltinType : nsISchemaSimpleType {
  static const char[] IID_STR = NS_ISCHEMABUILTINTYPE_IID_STR;
  static const nsIID IID = NS_ISCHEMABUILTINTYPE_IID;

  enum { BUILTIN_TYPE_ANYTYPE = 1U };

  enum { BUILTIN_TYPE_STRING = 2U };

  enum { BUILTIN_TYPE_NORMALIZED_STRING = 3U };

  enum { BUILTIN_TYPE_TOKEN = 4U };

  enum { BUILTIN_TYPE_BYTE = 5U };

  enum { BUILTIN_TYPE_UNSIGNEDBYTE = 6U };

  enum { BUILTIN_TYPE_BASE64BINARY = 7U };

  enum { BUILTIN_TYPE_HEXBINARY = 8U };

  enum { BUILTIN_TYPE_INTEGER = 9U };

  enum { BUILTIN_TYPE_POSITIVEINTEGER = 10U };

  enum { BUILTIN_TYPE_NEGATIVEINTEGER = 11U };

  enum { BUILTIN_TYPE_NONNEGATIVEINTEGER = 12U };

  enum { BUILTIN_TYPE_NONPOSITIVEINTEGER = 13U };

  enum { BUILTIN_TYPE_INT = 14U };

  enum { BUILTIN_TYPE_UNSIGNEDINT = 15U };

  enum { BUILTIN_TYPE_LONG = 16U };

  enum { BUILTIN_TYPE_UNSIGNEDLONG = 17U };

  enum { BUILTIN_TYPE_SHORT = 18U };

  enum { BUILTIN_TYPE_UNSIGNEDSHORT = 19U };

  enum { BUILTIN_TYPE_DECIMAL = 20U };

  enum { BUILTIN_TYPE_FLOAT = 21U };

  enum { BUILTIN_TYPE_DOUBLE = 22U };

  enum { BUILTIN_TYPE_BOOLEAN = 23U };

  enum { BUILTIN_TYPE_TIME = 24U };

  enum { BUILTIN_TYPE_DATETIME = 25U };

  enum { BUILTIN_TYPE_DURATION = 26U };

  enum { BUILTIN_TYPE_DATE = 27U };

  enum { BUILTIN_TYPE_GMONTH = 28U };

  enum { BUILTIN_TYPE_GYEAR = 29U };

  enum { BUILTIN_TYPE_GYEARMONTH = 30U };

  enum { BUILTIN_TYPE_GDAY = 31U };

  enum { BUILTIN_TYPE_GMONTHDAY = 32U };

  enum { BUILTIN_TYPE_NAME = 33U };

  enum { BUILTIN_TYPE_QNAME = 34U };

  enum { BUILTIN_TYPE_NCNAME = 35U };

  enum { BUILTIN_TYPE_ANYURI = 36U };

  enum { BUILTIN_TYPE_LANGUAGE = 37U };

  enum { BUILTIN_TYPE_ID = 38U };

  enum { BUILTIN_TYPE_IDREF = 39U };

  enum { BUILTIN_TYPE_IDREFS = 40U };

  enum { BUILTIN_TYPE_ENTITY = 41U };

  enum { BUILTIN_TYPE_ENTITIES = 42U };

  enum { BUILTIN_TYPE_NOTATION = 43U };

  enum { BUILTIN_TYPE_NMTOKEN = 44U };

  enum { BUILTIN_TYPE_NMTOKENS = 45U };

  /* readonly attribute unsigned short builtinType; */
  nsresult GetBuiltinType(PRUint16 *aBuiltinType);

}


/* starting interface:    nsISchemaListType */
const char[] NS_ISCHEMALISTTYPE_IID_STR = "3c14a025-6f4e-11d5-9b46-000064657374";

const nsIID NS_ISCHEMALISTTYPE_IID= 
  {0x3c14a025, 0x6f4e, 0x11d5, 
    [ 0x9b, 0x46, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

extern(Windows)
interface nsISchemaListType : nsISchemaSimpleType {
  static const char[] IID_STR = NS_ISCHEMALISTTYPE_IID_STR;
  static const nsIID IID = NS_ISCHEMALISTTYPE_IID;

  /* readonly attribute nsISchemaSimpleType listType; */
  nsresult GetListType(nsISchemaSimpleType  *aListType);

}


/* starting interface:    nsISchemaUnionType */
const char[] NS_ISCHEMAUNIONTYPE_IID_STR = "3c14a026-6f4e-11d5-9b46-000064657374";

const nsIID NS_ISCHEMAUNIONTYPE_IID= 
  {0x3c14a026, 0x6f4e, 0x11d5, 
    [ 0x9b, 0x46, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

extern(Windows)
interface nsISchemaUnionType : nsISchemaSimpleType {
  static const char[] IID_STR = NS_ISCHEMAUNIONTYPE_IID_STR;
  static const nsIID IID = NS_ISCHEMAUNIONTYPE_IID;

  /* readonly attribute PRUint32 unionTypeCount; */
  nsresult GetUnionTypeCount(PRUint32 *aUnionTypeCount);

  /* nsISchemaSimpleType getUnionType (in PRUint32 index); */
  nsresult GetUnionType(PRUint32 index, nsISchemaSimpleType *_retval);

}


/* starting interface:    nsISchemaRestrictionType */
const char[] NS_ISCHEMARESTRICTIONTYPE_IID_STR = "3c14a027-6f4e-11d5-9b46-000064657374";

const nsIID NS_ISCHEMARESTRICTIONTYPE_IID= 
  {0x3c14a027, 0x6f4e, 0x11d5, 
    [ 0x9b, 0x46, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

extern(Windows)
interface nsISchemaRestrictionType : nsISchemaSimpleType {
  static const char[] IID_STR = NS_ISCHEMARESTRICTIONTYPE_IID_STR;
  static const nsIID IID = NS_ISCHEMARESTRICTIONTYPE_IID;

  /* readonly attribute nsISchemaSimpleType baseType; */
  nsresult GetBaseType(nsISchemaSimpleType  *aBaseType);

  /* readonly attribute PRUint32 facetCount; */
  nsresult GetFacetCount(PRUint32 *aFacetCount);

  /* nsISchemaFacet getFacet (in PRUint32 index); */
  nsresult GetFacet(PRUint32 index, nsISchemaFacet *_retval);

}


/* starting interface:    nsISchemaComplexType */
const char[] NS_ISCHEMACOMPLEXTYPE_IID_STR = "3c14a028-6f4e-11d5-9b46-000064657374";

const nsIID NS_ISCHEMACOMPLEXTYPE_IID= 
  {0x3c14a028, 0x6f4e, 0x11d5, 
    [ 0x9b, 0x46, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

extern(Windows)
interface nsISchemaComplexType : nsISchemaType {
  static const char[] IID_STR = NS_ISCHEMACOMPLEXTYPE_IID_STR;
  static const nsIID IID = NS_ISCHEMACOMPLEXTYPE_IID;

  enum { CONTENT_MODEL_EMPTY = 1U };

  enum { CONTENT_MODEL_SIMPLE = 2U };

  enum { CONTENT_MODEL_ELEMENT_ONLY = 3U };

  enum { CONTENT_MODEL_MIXED = 4U };

  enum { DERIVATION_EXTENSION_SIMPLE = 1U };

  enum { DERIVATION_RESTRICTION_SIMPLE = 2U };

  enum { DERIVATION_EXTENSION_COMPLEX = 3U };

  enum { DERIVATION_RESTRICTION_COMPLEX = 4U };

  enum { DERIVATION_SELF_CONTAINED = 5U };

  /* readonly attribute unsigned short contentModel; */
  nsresult GetContentModel(PRUint16 *aContentModel);

  /* readonly attribute unsigned short derivation; */
  nsresult GetDerivation(PRUint16 *aDerivation);

  /* readonly attribute nsISchemaType baseType; */
  nsresult GetBaseType(nsISchemaType  *aBaseType);

  /* readonly attribute nsISchemaSimpleType simpleBaseType; */
  nsresult GetSimpleBaseType(nsISchemaSimpleType  *aSimpleBaseType);

  /* readonly attribute nsISchemaModelGroup modelGroup; */
  nsresult GetModelGroup(nsISchemaModelGroup  *aModelGroup);

  /* readonly attribute PRUint32 attributeCount; */
  nsresult GetAttributeCount(PRUint32 *aAttributeCount);

  /* nsISchemaAttributeComponent getAttributeByIndex (in PRUint32 index); */
  nsresult GetAttributeByIndex(PRUint32 index, nsISchemaAttributeComponent *_retval);

  /* nsISchemaAttributeComponent getAttributeByName (in AString name); */
  nsresult GetAttributeByName(nsAString * name, nsISchemaAttributeComponent *_retval);

  /* readonly attribute boolean abstract; */
  nsresult GetAbstract(PRBool *aAbstract);

  /* readonly attribute boolean isArray; */
  nsresult GetIsArray(PRBool *aIsArray);

  /* readonly attribute nsISchemaType arrayType; */
  nsresult GetArrayType(nsISchemaType  *aArrayType);

  /* readonly attribute PRUint32 arrayDimension; */
  nsresult GetArrayDimension(PRUint32 *aArrayDimension);

}


/* starting interface:    nsISchemaParticle */
const char[] NS_ISCHEMAPARTICLE_IID_STR = "3c14a029-6f4e-11d5-9b46-000064657374";

const nsIID NS_ISCHEMAPARTICLE_IID= 
  {0x3c14a029, 0x6f4e, 0x11d5, 
    [ 0x9b, 0x46, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

extern(Windows)
interface nsISchemaParticle : nsISchemaComponent {
  static const char[] IID_STR = NS_ISCHEMAPARTICLE_IID_STR;
  static const nsIID IID = NS_ISCHEMAPARTICLE_IID;

  enum { PARTICLE_TYPE_ELEMENT = 1U };

  enum { PARTICLE_TYPE_MODEL_GROUP = 2U };

  enum { PARTICLE_TYPE_ANY = 3U };

  enum { OCCURRENCE_UNBOUNDED = 4294967295U };

  /* readonly attribute AString name; */
  nsresult GetName(nsAString * aName);

  /* readonly attribute unsigned short particleType; */
  nsresult GetParticleType(PRUint16 *aParticleType);

  /* readonly attribute PRUint32 minOccurs; */
  nsresult GetMinOccurs(PRUint32 *aMinOccurs);

  /* readonly attribute PRUint32 maxOccurs; */
  nsresult GetMaxOccurs(PRUint32 *aMaxOccurs);

}


/* starting interface:    nsISchemaModelGroup */
const char[] NS_ISCHEMAMODELGROUP_IID_STR = "3c14a02a-6f4e-11d5-9b46-000064657374";

const nsIID NS_ISCHEMAMODELGROUP_IID= 
  {0x3c14a02a, 0x6f4e, 0x11d5, 
    [ 0x9b, 0x46, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

extern(Windows)
interface nsISchemaModelGroup : nsISchemaParticle {
  static const char[] IID_STR = NS_ISCHEMAMODELGROUP_IID_STR;
  static const nsIID IID = NS_ISCHEMAMODELGROUP_IID;

  enum { COMPOSITOR_ALL = 1U };

  enum { COMPOSITOR_SEQUENCE = 2U };

  enum { COMPOSITOR_CHOICE = 3U };

  /* readonly attribute unsigned short compositor; */
  nsresult GetCompositor(PRUint16 *aCompositor);

  /* readonly attribute PRUint32 particleCount; */
  nsresult GetParticleCount(PRUint32 *aParticleCount);

  /* nsISchemaParticle getParticle (in PRUint32 index); */
  nsresult GetParticle(PRUint32 index, nsISchemaParticle *_retval);

  /* nsISchemaElement getElementByName (in AString name); */
  nsresult GetElementByName(nsAString * name, nsISchemaElement *_retval);

}


/* starting interface:    nsISchemaAnyParticle */
const char[] NS_ISCHEMAANYPARTICLE_IID_STR = "3c14a02b-6f4e-11d5-9b46-000064657374";

const nsIID NS_ISCHEMAANYPARTICLE_IID= 
  {0x3c14a02b, 0x6f4e, 0x11d5, 
    [ 0x9b, 0x46, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

extern(Windows)
interface nsISchemaAnyParticle : nsISchemaParticle {
  static const char[] IID_STR = NS_ISCHEMAANYPARTICLE_IID_STR;
  static const nsIID IID = NS_ISCHEMAANYPARTICLE_IID;

  enum { PROCESS_STRICT = 1U };

  enum { PROCESS_SKIP = 2U };

  enum { PROCESS_LAX = 3U };

  /* readonly attribute unsigned short process; */
  nsresult GetProcess(PRUint16 *aProcess);

  /* readonly attribute AString namespace; */
  nsresult GetNamespace(nsAString * aNamespace);

}


/* starting interface:    nsISchemaElement */
const char[] NS_ISCHEMAELEMENT_IID_STR = "3c14a02c-6f4e-11d5-9b46-000064657374";

const nsIID NS_ISCHEMAELEMENT_IID= 
  {0x3c14a02c, 0x6f4e, 0x11d5, 
    [ 0x9b, 0x46, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

extern(Windows)
interface nsISchemaElement : nsISchemaParticle {
  static const char[] IID_STR = NS_ISCHEMAELEMENT_IID_STR;
  static const nsIID IID = NS_ISCHEMAELEMENT_IID;

  /* readonly attribute nsISchemaType type; */
  nsresult GetType(nsISchemaType  *aType);

  /* readonly attribute AString defaultValue; */
  nsresult GetDefaultValue(nsAString * aDefaultValue);

  /* readonly attribute AString fixedValue; */
  nsresult GetFixedValue(nsAString * aFixedValue);

  /* readonly attribute boolean nillable; */
  nsresult GetNillable(PRBool *aNillable);

  /* readonly attribute boolean abstract; */
  nsresult GetAbstract(PRBool *aAbstract);

}


/* starting interface:    nsISchemaAttributeComponent */
const char[] NS_ISCHEMAATTRIBUTECOMPONENT_IID_STR = "3c14a02d-6f4e-11d5-9b46-000064657374";

const nsIID NS_ISCHEMAATTRIBUTECOMPONENT_IID= 
  {0x3c14a02d, 0x6f4e, 0x11d5, 
    [ 0x9b, 0x46, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

extern(Windows)
interface nsISchemaAttributeComponent : nsISchemaComponent {
  static const char[] IID_STR = NS_ISCHEMAATTRIBUTECOMPONENT_IID_STR;
  static const nsIID IID = NS_ISCHEMAATTRIBUTECOMPONENT_IID;

  enum { COMPONENT_TYPE_ATTRIBUTE = 1U };

  enum { COMPONENT_TYPE_GROUP = 2U };

  enum { COMPONENT_TYPE_ANY = 3U };

  /* readonly attribute AString name; */
  nsresult GetName(nsAString * aName);

  /* readonly attribute unsigned short componentType; */
  nsresult GetComponentType(PRUint16 *aComponentType);

}


/* starting interface:    nsISchemaAttribute */
const char[] NS_ISCHEMAATTRIBUTE_IID_STR = "3c14a02e-6f4e-11d5-9b46-000064657374";

const nsIID NS_ISCHEMAATTRIBUTE_IID= 
  {0x3c14a02e, 0x6f4e, 0x11d5, 
    [ 0x9b, 0x46, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

extern(Windows)
interface nsISchemaAttribute : nsISchemaAttributeComponent {
  static const char[] IID_STR = NS_ISCHEMAATTRIBUTE_IID_STR;
  static const nsIID IID = NS_ISCHEMAATTRIBUTE_IID;

  enum { USE_OPTIONAL = 1U };

  enum { USE_PROHIBITED = 2U };

  enum { USE_REQUIRED = 3U };

  /* readonly attribute nsISchemaSimpleType type; */
  nsresult GetType(nsISchemaSimpleType  *aType);

  /* readonly attribute AString defaultValue; */
  nsresult GetDefaultValue(nsAString * aDefaultValue);

  /* readonly attribute AString fixedValue; */
  nsresult GetFixedValue(nsAString * aFixedValue);

  /* readonly attribute unsigned short use; */
  nsresult GetUse(PRUint16 *aUse);

}


/* starting interface:    nsISchemaAttributeGroup */
const char[] NS_ISCHEMAATTRIBUTEGROUP_IID_STR = "3c14a02f-6f4e-11d5-9b46-000064657374";

const nsIID NS_ISCHEMAATTRIBUTEGROUP_IID= 
  {0x3c14a02f, 0x6f4e, 0x11d5, 
    [ 0x9b, 0x46, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

extern(Windows)
interface nsISchemaAttributeGroup : nsISchemaAttributeComponent {
  static const char[] IID_STR = NS_ISCHEMAATTRIBUTEGROUP_IID_STR;
  static const nsIID IID = NS_ISCHEMAATTRIBUTEGROUP_IID;

  /* readonly attribute PRUint32 attributeCount; */
  nsresult GetAttributeCount(PRUint32 *aAttributeCount);

  /* nsISchemaAttributeComponent getAttributeByIndex (in PRUint32 index); */
  nsresult GetAttributeByIndex(PRUint32 index, nsISchemaAttributeComponent *_retval);

  /* nsISchemaAttributeComponent getAttributeByName (in AString name); */
  nsresult GetAttributeByName(nsAString * name, nsISchemaAttributeComponent *_retval);

}


/* starting interface:    nsISchemaAnyAttribute */
const char[] NS_ISCHEMAANYATTRIBUTE_IID_STR = "3c14a030-6f4e-11d5-9b46-000064657374";

const nsIID NS_ISCHEMAANYATTRIBUTE_IID= 
  {0x3c14a030, 0x6f4e, 0x11d5, 
    [ 0x9b, 0x46, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

extern(Windows)
interface nsISchemaAnyAttribute : nsISchemaAttributeComponent {
  static const char[] IID_STR = NS_ISCHEMAANYATTRIBUTE_IID_STR;
  static const nsIID IID = NS_ISCHEMAANYATTRIBUTE_IID;

  enum { PROCESS_STRICT = 1U };

  enum { PROCESS_SKIP = 2U };

  enum { PROCESS_LAX = 3U };

  /* readonly attribute unsigned short process; */
  nsresult GetProcess(PRUint16 *aProcess);

  /* readonly attribute AString namespace; */
  nsresult GetNamespace(nsAString * aNamespace);

}


/* starting interface:    nsISchemaFacet */
const char[] NS_ISCHEMAFACET_IID_STR = "3c14a031-6f4e-11d5-9b46-000064657374";

const nsIID NS_ISCHEMAFACET_IID= 
  {0x3c14a031, 0x6f4e, 0x11d5, 
    [ 0x9b, 0x46, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

extern(Windows)
interface nsISchemaFacet : nsISchemaComponent {
  static const char[] IID_STR = NS_ISCHEMAFACET_IID_STR;
  static const nsIID IID = NS_ISCHEMAFACET_IID;

  enum { FACET_TYPE_LENGTH = 1U };

  enum { FACET_TYPE_MINLENGTH = 2U };

  enum { FACET_TYPE_MAXLENGTH = 3U };

  enum { FACET_TYPE_PATTERN = 4U };

  enum { FACET_TYPE_ENUMERATION = 5U };

  enum { FACET_TYPE_WHITESPACE = 6U };

  enum { FACET_TYPE_MAXINCLUSIVE = 7U };

  enum { FACET_TYPE_MININCLUSIVE = 8U };

  enum { FACET_TYPE_MAXEXCLUSIVE = 9U };

  enum { FACET_TYPE_MINEXCLUSIVE = 10U };

  enum { FACET_TYPE_TOTALDIGITS = 11U };

  enum { FACET_TYPE_FRACTIONDIGITS = 12U };

  enum { WHITESPACE_PRESERVE = 1U };

  enum { WHITESPACE_REPLACE = 1U };

  enum { WHITESPACE_COLLAPSE = 1U };

  /* readonly attribute unsigned short facetType; */
  nsresult GetFacetType(PRUint16 *aFacetType);

  /* readonly attribute AString value; */
  nsresult GetValue(nsAString * aValue);

  /* readonly attribute PRUint32 lengthValue; */
  nsresult GetLengthValue(PRUint32 *aLengthValue);

  /* readonly attribute PRUint32 digitsValue; */
  nsresult GetDigitsValue(PRUint32 *aDigitsValue);

  /* readonly attribute unsigned short whitespaceValue; */
  nsresult GetWhitespaceValue(PRUint16 *aWhitespaceValue);

  /* readonly attribute boolean isfixed; */
  nsresult GetIsfixed(PRBool *aIsfixed);

}

