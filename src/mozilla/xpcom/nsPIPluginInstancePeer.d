/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsPIPluginInstancePeer.idl
 */

module mozilla.xpcom.nsPIPluginInstancePeer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIPluginInstanceOwner;


/* starting interface:    nsPIPluginInstancePeer */
const char[] NS_PIPLUGININSTANCEPEER_IID_STR = "4a708562-8a37-400b-8c08-20037d1adad3";

const nsIID NS_PIPLUGININSTANCEPEER_IID= 
  {0x4a708562, 0x8a37, 0x400b, 
    [ 0x8c, 0x08, 0x20, 0x03, 0x7d, 0x1a, 0xda, 0xd3 ]};

extern(Windows)
interface nsPIPluginInstancePeer : nsISupports {
  static const char[] IID_STR = NS_PIPLUGININSTANCEPEER_IID_STR;
  static const nsIID IID = NS_PIPLUGININSTANCEPEER_IID;

  /* readonly attribute nsIPluginInstanceOwner owner; */
  nsresult GetOwner(nsIPluginInstanceOwner  *aOwner);

}

