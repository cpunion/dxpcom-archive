/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRemoteContainer.idl
 */

module mozilla.xpcom.nsIRemoteContainer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsINavHistoryService;

public import mozilla.xpcom.nsINavHistoryService;


/* starting interface:    nsIRemoteContainer */
const char[] NS_IREMOTECONTAINER_IID_STR = "45bf2020-9683-498c-9638-f08130c4151d";

const nsIID NS_IREMOTECONTAINER_IID= 
  {0x45bf2020, 0x9683, 0x498c, 
    [ 0x96, 0x38, 0xf0, 0x81, 0x30, 0xc4, 0x15, 0x1d ]};

/**
 * The Remote Container interface provides a base class for services that want
 * to provide containers for bookmarks.  Some examples of possible services are
 * the livemarks service and the filesystem.
 *
 * There are two primary modes of operation: container services might create
 * actual bookmarks, or they might fill containers on the fly as needed. The
 * livemarks service, for example, queries the feed from time to time and
 * creates actual bookmarks in the folder corresponding to the feed. This way
 * the items are persistent even if the user is offline, and can be searched.
 * In this mode, the service just looks for moves and deletes to update the
 * corresponding bookkeeping information. It can use the normal population
 * method provided by the bookmark service and need not do any work for the
 * onContainerOpen message.
 *
 * Such a bookmark-based container service might listen for onContainerOpening
 * notifications messages to see whether 
 
 *
 * Persistent bookmarks are not appropriate for more short-lived data, such as
 * the filesystem interface. In this case, the service can fill result nodes
 * directly into the container when it is being opened. It can use the property
 * bag on every result node to store data associated with each item, such as
 * full path on disk. It would create additional containers for each folder,
 * resgistered to its service. These dynamic containers are not bookmark
 * folders in contrast to the initial item.
 */
extern(Windows)
interface nsIRemoteContainer : nsISupports {
  static const char[] IID_STR = NS_IREMOTECONTAINER_IID_STR;
  static const nsIID IID = NS_IREMOTECONTAINER_IID;

  /**
   * Called when the given container is about to be populated so that the
   * service can populate the container if necessary.
   *
   * @param container   The container node for the container being opened.
   *                    If the node type is a bookmarks container, you can
   *                    QI it to nsINavHistoryFolderResultNode and access the
   *                    folder ID, etc. Note that all result nodes implement
   *                    a property bag if you need to store state.
   * @param options     The options used to generate this query. Containers
   *                    should follow these when possible, for example,
   *                    whether to expand queries, etc. Implementations should
   *                    use this when possible if adding query and folder nodes
   *                    to the container. DO NOT MODIFY THIS VALUE.
   *
   * UNTESTED container API functions are commented out until they can be
   * adequately tested.
   */
/**
   * Called when the given container has just been hidden so that the service
   * can do any necessary cleanup. This is NOT guaranteed to get called. In
   * particular, if the query just goes away (like the user switched views on
   * the places page) you will not get this call. This only happens when the
   * container itself goes from the open state to the closed state. A serviced
   * with large numbers of dynamically populated items might use this to do
   * some cleanup so those items don't hang around
   *
   * @param container   The container node of the container being closed. The
   *                    service need not worry about removing any created nodes,
   *                    they will be automatically removed when this call
   *                    completes.
   *
   * UNTESTED container API functions are commented out until they can be
   * adequately tested.
   */
/**
   * Called when the given container is about to be deleted, so
   * that the service can do any necessary cleanup.
   * Called BEFORE the container is deleted, so that the service
   * can still reference it.
   * @param container   The folderId of the bookmark folder
   *                    representing the container to be deleted.
   */
  /* void onContainerRemoving (in PRInt64 container); */
  nsresult OnContainerRemoving(PRInt64 container);

  /**
   * Called when the given container has just been moved, in case
   * the service needs to do any bookkeeping.
   * Called AFTER the container has been moved, so the service can
   * get the new URI.
   * @param container   The folderId of the bookmark folder
   *                    representing the container to be moved.
   * @param newFolder   The folderId of the new parent folder
   *                    for the container.
   * @param newIndex    The index the container will be inserted at,
   *                    or -1 for append.
   */
  /* void onContainerMoved (in PRInt64 container, in PRInt64 newFolder, in PRInt32 newIndex); */
  nsresult OnContainerMoved(PRInt64 container, PRInt64 newFolder, PRInt32 newIndex);

  /**
   * Returns true if containers of this type should not expose UI for
   * inserting, moving, or deleting children.
   */
  /* readonly attribute boolean childrenReadOnly; */
  nsresult GetChildrenReadOnly(PRBool *aChildrenReadOnly);

}

