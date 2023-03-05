/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM xpccomponents.idl
 */

module mozilla.xpcom.xpccomponents;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.xpcexception;
public import mozilla.xpcom.xpcjsid;
public import mozilla.xpcom.nsIComponentManager;
public import mozilla.xpcom.nsIScriptableInterfaces;


/* starting interface:    nsIXPCComponents_Classes */
const char[] NS_IXPCCOMPONENTS_CLASSES_IID_STR = "978ff520-d26c-11d2-9842-006008962422";

const nsIID NS_IXPCCOMPONENTS_CLASSES_IID= 
  {0x978ff520, 0xd26c, 0x11d2, 
    [ 0x98, 0x42, 0x00, 0x60, 0x08, 0x96, 0x24, 0x22 ]};

/**
* interface of Components.classes
* (interesting stuff only reflected into JavaScript)
*/
extern(Windows)
interface nsIXPCComponents_Classes : nsISupports {
  static const char[] IID_STR = NS_IXPCCOMPONENTS_CLASSES_IID_STR;
  static const nsIID IID = NS_IXPCCOMPONENTS_CLASSES_IID;

}


/* starting interface:    nsIXPCComponents_ClassesByID */
const char[] NS_IXPCCOMPONENTS_CLASSESBYID_IID_STR = "336a9590-4d19-11d3-9893-006008962422";

const nsIID NS_IXPCCOMPONENTS_CLASSESBYID_IID= 
  {0x336a9590, 0x4d19, 0x11d3, 
    [ 0x98, 0x93, 0x00, 0x60, 0x08, 0x96, 0x24, 0x22 ]};

/**
* interface of Components.classesByID
* (interesting stuff only reflected into JavaScript)
*/
extern(Windows)
interface nsIXPCComponents_ClassesByID : nsISupports {
  static const char[] IID_STR = NS_IXPCCOMPONENTS_CLASSESBYID_IID_STR;
  static const nsIID IID = NS_IXPCCOMPONENTS_CLASSESBYID_IID;

}


/* starting interface:    nsIXPCComponents_Results */
const char[] NS_IXPCCOMPONENTS_RESULTS_IID_STR = "2fc229a0-5860-11d3-9899-006008962422";

const nsIID NS_IXPCCOMPONENTS_RESULTS_IID= 
  {0x2fc229a0, 0x5860, 0x11d3, 
    [ 0x98, 0x99, 0x00, 0x60, 0x08, 0x96, 0x24, 0x22 ]};

/**
* interface of Components.results
* (interesting stuff only reflected into JavaScript)
*/
extern(Windows)
interface nsIXPCComponents_Results : nsISupports {
  static const char[] IID_STR = NS_IXPCCOMPONENTS_RESULTS_IID_STR;
  static const nsIID IID = NS_IXPCCOMPONENTS_RESULTS_IID;

}


/* starting interface:    nsIXPCComponents_ID */
const char[] NS_IXPCCOMPONENTS_ID_IID_STR = "7994a6e0-e028-11d3-8f5d-0010a4e73d9a";

const nsIID NS_IXPCCOMPONENTS_ID_IID= 
  {0x7994a6e0, 0xe028, 0x11d3, 
    [ 0x8f, 0x5d, 0x00, 0x10, 0xa4, 0xe7, 0x3d, 0x9a ]};

/**
* interface of Components.ID
* (interesting stuff only reflected into JavaScript)
*/
extern(Windows)
interface nsIXPCComponents_ID : nsISupports {
  static const char[] IID_STR = NS_IXPCCOMPONENTS_ID_IID_STR;
  static const nsIID IID = NS_IXPCCOMPONENTS_ID_IID;

}


/* starting interface:    nsIXPCComponents_Exception */
const char[] NS_IXPCCOMPONENTS_EXCEPTION_IID_STR = "5bf039c0-e028-11d3-8f5d-0010a4e73d9a";

const nsIID NS_IXPCCOMPONENTS_EXCEPTION_IID= 
  {0x5bf039c0, 0xe028, 0x11d3, 
    [ 0x8f, 0x5d, 0x00, 0x10, 0xa4, 0xe7, 0x3d, 0x9a ]};

/**
* interface of Components.Exception
* (interesting stuff only reflected into JavaScript)
*/
extern(Windows)
interface nsIXPCComponents_Exception : nsISupports {
  static const char[] IID_STR = NS_IXPCCOMPONENTS_EXCEPTION_IID_STR;
  static const nsIID IID = NS_IXPCCOMPONENTS_EXCEPTION_IID;

}


/* starting interface:    nsIXPCComponents_Constructor */
const char[] NS_IXPCCOMPONENTS_CONSTRUCTOR_IID_STR = "88655640-e028-11d3-8f5d-0010a4e73d9a";

const nsIID NS_IXPCCOMPONENTS_CONSTRUCTOR_IID= 
  {0x88655640, 0xe028, 0x11d3, 
    [ 0x8f, 0x5d, 0x00, 0x10, 0xa4, 0xe7, 0x3d, 0x9a ]};

/**
* interface of Components.Constructor
* (interesting stuff only reflected into JavaScript)
*/
extern(Windows)
interface nsIXPCComponents_Constructor : nsISupports {
  static const char[] IID_STR = NS_IXPCCOMPONENTS_CONSTRUCTOR_IID_STR;
  static const nsIID IID = NS_IXPCCOMPONENTS_CONSTRUCTOR_IID;

}


/* starting interface:    nsIXPCConstructor */
const char[] NS_IXPCCONSTRUCTOR_IID_STR = "c814ca20-e0dc-11d3-8f5f-0010a4e73d9a";

const nsIID NS_IXPCCONSTRUCTOR_IID= 
  {0xc814ca20, 0xe0dc, 0x11d3, 
    [ 0x8f, 0x5f, 0x00, 0x10, 0xa4, 0xe7, 0x3d, 0x9a ]};

/**
* interface of object returned by Components.Constructor
* (additional interesting stuff only reflected into JavaScript)
*/
extern(Windows)
interface nsIXPCConstructor : nsISupports {
  static const char[] IID_STR = NS_IXPCCONSTRUCTOR_IID_STR;
  static const nsIID IID = NS_IXPCCONSTRUCTOR_IID;

  /* readonly attribute nsIJSCID classID; */
  nsresult GetClassID(nsIJSCID  *aClassID);

  /* readonly attribute nsIJSIID interfaceID; */
  nsresult GetInterfaceID(nsIJSIID  *aInterfaceID);

  /* readonly attribute string initializer; */
  nsresult GetInitializer(char * *aInitializer);

}


/* starting interface:    nsIXPCComponents_utils_Sandbox */
const char[] NS_IXPCCOMPONENTS_UTILS_SANDBOX_IID_STR = "4f8ae0dc-d266-4a32-875b-6a9de71a8ce9";

const nsIID NS_IXPCCOMPONENTS_UTILS_SANDBOX_IID= 
  {0x4f8ae0dc, 0xd266, 0x4a32, 
    [ 0x87, 0x5b, 0x6a, 0x9d, 0xe7, 0x1a, 0x8c, 0xe9 ]};

/**
* interface of object returned by Components.utils.Sandbox.
*/
extern(Windows)
interface nsIXPCComponents_utils_Sandbox : nsISupports {
  static const char[] IID_STR = NS_IXPCCOMPONENTS_UTILS_SANDBOX_IID_STR;
  static const nsIID IID = NS_IXPCCOMPONENTS_UTILS_SANDBOX_IID;

}


/* starting interface:    nsIXPCComponents_Utils */
const char[] NS_IXPCCOMPONENTS_UTILS_IID_STR = "bcd54a63-34d9-468c-9a55-0fb5d2d8c677";

const nsIID NS_IXPCCOMPONENTS_UTILS_IID= 
  {0xbcd54a63, 0x34d9, 0x468c, 
    [ 0x9a, 0x55, 0x0f, 0xb5, 0xd2, 0xd8, 0xc6, 0x77 ]};

/**
* interface of Components.utils
*/
extern(Windows)
interface nsIXPCComponents_Utils : nsISupports {
  static const char[] IID_STR = NS_IXPCCOMPONENTS_UTILS_IID_STR;
  static const nsIID IID = NS_IXPCCOMPONENTS_UTILS_IID;

  /* void reportError (); */
  nsresult ReportError();

  /* void lookupMethod (); */
  nsresult LookupMethod();

  /* readonly attribute nsIXPCComponents_utils_Sandbox Sandbox; */
  nsresult GetSandbox(nsIXPCComponents_utils_Sandbox  *aSandbox);

  /* void evalInSandbox (in AString source); */
  nsresult EvalInSandbox(nsAString * source);

}


/* starting interface:    nsIXPCComponents */
const char[] NS_IXPCCOMPONENTS_IID_STR = "155809f1-71f1-47c5-be97-d812ba560405";

const nsIID NS_IXPCCOMPONENTS_IID= 
  {0x155809f1, 0x71f1, 0x47c5, 
    [ 0xbe, 0x97, 0xd8, 0x12, 0xba, 0x56, 0x04, 0x05 ]};

/**
* interface of JavaScript's 'Components' object
*/
extern(Windows)
interface nsIXPCComponents : nsISupports {
  static const char[] IID_STR = NS_IXPCCOMPONENTS_IID_STR;
  static const nsIID IID = NS_IXPCCOMPONENTS_IID;

  /* readonly attribute nsIScriptableInterfaces interfaces; */
  nsresult GetInterfaces(nsIScriptableInterfaces  *aInterfaces);

  /* readonly attribute nsIScriptableInterfacesByID interfacesByID; */
  nsresult GetInterfacesByID(nsIScriptableInterfacesByID  *aInterfacesByID);

  /* readonly attribute nsIXPCComponents_Classes classes; */
  nsresult GetClasses(nsIXPCComponents_Classes  *aClasses);

  /* readonly attribute nsIXPCComponents_ClassesByID classesByID; */
  nsresult GetClassesByID(nsIXPCComponents_ClassesByID  *aClassesByID);

  /* readonly attribute nsIStackFrame stack; */
  nsresult GetStack(nsIStackFrame  *aStack);

  /* readonly attribute nsIXPCComponents_Results results; */
  nsresult GetResults(nsIXPCComponents_Results  *aResults);

  /* readonly attribute nsIComponentManager manager; */
  nsresult GetManager(nsIComponentManager  *aManager);

  /* readonly attribute nsIXPCComponents_Utils utils; */
  nsresult GetUtils(nsIXPCComponents_Utils  *aUtils);

  /* readonly attribute nsIXPCComponents_ID ID; */
  nsresult GetID(nsIXPCComponents_ID  *aID);

  /* readonly attribute nsIXPCComponents_Exception Exception; */
  nsresult GetException(nsIXPCComponents_Exception  *aException);

  /* readonly attribute nsIXPCComponents_Constructor Constructor; */
  nsresult GetConstructor(nsIXPCComponents_Constructor  *aConstructor);

  /* boolean isSuccessCode (in nsresult result); */
  nsresult IsSuccessCode(nsresult result, PRBool *_retval);

  /* void lookupMethod (); */
  nsresult LookupMethod();

  /* void reportError (); */
  nsresult ReportError();

}

