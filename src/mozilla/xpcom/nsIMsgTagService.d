/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgTagService.idl
 */

module mozilla.xpcom.nsIMsgTagService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIMsgTag */
const char[] NS_IMSGTAG_IID_STR = "84d593a3-5d8a-45e6-96e2-9189acd422e1";

const nsIID NS_IMSGTAG_IID= 
  {0x84d593a3, 0x5d8a, 0x45e6, 
    [ 0x96, 0xe2, 0x91, 0x89, 0xac, 0xd4, 0x22, 0xe1 ]};

extern(Windows)
interface nsIMsgTag : nsISupports {
  static const char[] IID_STR = NS_IMSGTAG_IID_STR;
  static const nsIID IID = NS_IMSGTAG_IID;

  /* readonly attribute ACString key; */
  nsresult GetKey(nsACString * aKey);

  /* readonly attribute AString tag; */
  nsresult GetTag(nsAString * aTag);

  /* readonly attribute ACString color; */
  nsresult GetColor(nsACString * aColor);

  /* readonly attribute ACString ordinal; */
  nsresult GetOrdinal(nsACString * aOrdinal);

}


/* starting interface:    nsIMsgTagService */
const char[] NS_IMSGTAGSERVICE_IID_STR = "b897da55-8256-4cf5-892b-32e77bc7c50b";

const nsIID NS_IMSGTAGSERVICE_IID= 
  {0xb897da55, 0x8256, 0x4cf5, 
    [ 0x89, 0x2b, 0x32, 0xe7, 0x7b, 0xc7, 0xc5, 0x0b ]};

extern(Windows)
interface nsIMsgTagService : nsISupports {
  static const char[] IID_STR = NS_IMSGTAGSERVICE_IID_STR;
  static const nsIID IID = NS_IMSGTAGSERVICE_IID;

  /* void addTag (in AString tag, in ACString color, in ACString ordinal); */
  nsresult AddTag(nsAString * tag, nsACString * color, nsACString * ordinal);

  /* void addTagForKey (in ACString key, in AString tag, in ACString color, in ACString ordinal); */
  nsresult AddTagForKey(nsACString * key, nsAString * tag, nsACString * color, nsACString * ordinal);

  /* ACString getKeyForTag (in AString tag); */
  nsresult GetKeyForTag(nsAString * tag, nsACString * _retval);

  /* ACString getTopKey (in string keyList); */
  nsresult GetTopKey(char *keyList, nsACString * _retval);

  /* AString getTagForKey (in ACString key); */
  nsresult GetTagForKey(nsACString * key, nsAString * _retval);

  /* void setTagForKey (in ACString key, in AString tag); */
  nsresult SetTagForKey(nsACString * key, nsAString * tag);

  /* ACString getColorForKey (in ACString key); */
  nsresult GetColorForKey(nsACString * key, nsACString * _retval);

  /* void setColorForKey (in ACString key, in ACString color); */
  nsresult SetColorForKey(nsACString * key, nsACString * color);

  /* ACString getOrdinalForKey (in ACString key); */
  nsresult GetOrdinalForKey(nsACString * key, nsACString * _retval);

  /* void setOrdinalForKey (in ACString key, in ACString ordinal); */
  nsresult SetOrdinalForKey(nsACString * key, nsACString * ordinal);

  /* void deleteKey (in ACString key); */
  nsresult DeleteKey(nsACString * key);

  /* void getAllTags (out unsigned long count, [array, size_is (count), retval] out nsIMsgTag tagArray); */
  nsresult GetAllTags(PRUint32 *count, nsIMsgTag **tagArray);

}

