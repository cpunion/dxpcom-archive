/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgFilterPlugin.idl
 */

module mozilla.xpcom.nsIMsgFilterPlugin;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.MailNewsTypes2;

public import mozilla.xpcom.nsIMsgFilterHitNotify; /* forward declaration */

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */

public import mozilla.xpcom.nsIMsgHdr;

public import mozilla.xpcom.nsIStreamListener; /* forward declaration */


/* starting interface:    nsIMsgFilterPlugin */
const char[] NS_IMSGFILTERPLUGIN_IID_STR = "e2e56690-a676-11d6-80c9-00008646b737";

const nsIID NS_IMSGFILTERPLUGIN_IID= 
  {0xe2e56690, 0xa676, 0x11d6, 
    [ 0x80, 0xc9, 0x00, 0x00, 0x86, 0x46, 0xb7, 0x37 ]};

/**
 * This interface is still very much under development, and is not yet stable.
 */
extern(Windows)
interface nsIMsgFilterPlugin : nsISupports {
  static const char[] IID_STR = NS_IMSGFILTERPLUGIN_IID_STR;
  static const nsIID IID = NS_IMSGFILTERPLUGIN_IID;

  /**
     * Do any necessary cleanup: flush and close any open files, etc.
     */
  /* void shutdown (); */
  nsresult Shutdown();

  /**
     * Some protocols (ie IMAP) can, as an optimization, avoid
     * downloading all message header lines.  If your plugin doesn't need
     * any more than the minimal set, it can return false for this attribute.
     */
  /* readonly attribute boolean shouldDownloadAllHeaders; */
  nsresult GetShouldDownloadAllHeaders(PRBool *aShouldDownloadAllHeaders);

}


/* starting interface:    nsIJunkMailClassificationListener */
const char[] NS_IJUNKMAILCLASSIFICATIONLISTENER_IID_STR = "0243f3d6-d583-11d6-898a-00039310a47a";

const nsIID NS_IJUNKMAILCLASSIFICATIONLISTENER_IID= 
  {0x0243f3d6, 0xd583, 0x11d6, 
    [ 0x89, 0x8a, 0x00, 0x03, 0x93, 0x10, 0xa4, 0x7a ]};

/**
 * Rather than passing low level details about scores and such, abstract
 * this away by informing a listener of a message's classification, which
 * can be one of 3 values:  UNCLASSIFIED, GOOD, or JUNK.
 */
extern(Windows)
interface nsIJunkMailClassificationListener : nsISupports {
  static const char[] IID_STR = NS_IJUNKMAILCLASSIFICATIONLISTENER_IID_STR;
  static const nsIID IID = NS_IJUNKMAILCLASSIFICATIONLISTENER_IID;

  /* void onMessageClassified (in string aMsgURI, in nsMsgJunkStatus aClassification); */
  nsresult OnMessageClassified(char *aMsgURI, nsMsgJunkStatus aClassification);

}


/* starting interface:    nsIJunkMailPlugin */
const char[] NS_IJUNKMAILPLUGIN_IID_STR = "caf3d467-d57c-11d6-96a9-00039310a47a";

const nsIID NS_IJUNKMAILPLUGIN_IID= 
  {0xcaf3d467, 0xd57c, 0x11d6, 
    [ 0x96, 0xa9, 0x00, 0x03, 0x93, 0x10, 0xa4, 0x7a ]};

extern(Windows)
interface nsIJunkMailPlugin : nsIMsgFilterPlugin {
  static const char[] IID_STR = NS_IJUNKMAILPLUGIN_IID_STR;
  static const nsIID IID = NS_IJUNKMAILPLUGIN_IID;

  /**
     * Message classifications.
     */
  enum { UNCLASSIFIED = 0U };

  enum { GOOD = 1U };

  enum { JUNK = 2U };

  /**
     * Given a message URI, determine what its current classification is
     * according to the current training set.
     */
  /* void classifyMessage (in string aMsgURI, in nsIMsgWindow aMsgWindow, in nsIJunkMailClassificationListener aListener); */
  nsresult ClassifyMessage(char *aMsgURI, nsIMsgWindow aMsgWindow, nsIJunkMailClassificationListener aListener);

  /* void classifyMessages (in unsigned long aCount, [array, size_is (aCount)] in string aMsgURIs, in nsIMsgWindow aMsgWindow, in nsIJunkMailClassificationListener aListener); */
  nsresult ClassifyMessages(PRUint32 aCount, char **aMsgURIs, nsIMsgWindow aMsgWindow, nsIJunkMailClassificationListener aListener);

  /**
     * Called when a user forces the classification of a message. Should
     * cause the training set to be updated appropriately.
     *
     * @arg aMsgURI                     URI of the message to be classified
     * @arg aOldUserClassification      Was it previous manually classified 
     *                                  by the user?  If so, how?
     * @arg aNewClassification          New manual classification.
     * @arg aListener                   Callback
     */
  /* void setMessageClassification (in string aMsgURI, in nsMsgJunkStatus aOldUserClassification, in nsMsgJunkStatus aNewClassification, in nsIMsgWindow aMsgWindow, in nsIJunkMailClassificationListener aListener); */
  nsresult SetMessageClassification(char *aMsgURI, nsMsgJunkStatus aOldUserClassification, nsMsgJunkStatus aNewClassification, nsIMsgWindow aMsgWindow, nsIJunkMailClassificationListener aListener);

  /* readonly attribute boolean userHasClassified; */
  nsresult GetUserHasClassified(PRBool *aUserHasClassified);

  /** Removes the training file and clears out any in memory training tokens. 
        User must retrain after doing this.
    **/
  /* void resetTrainingData (); */
  nsresult ResetTrainingData();

}

