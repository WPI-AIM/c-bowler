/*
 * namespace.h
 *
 *  Created on: Aug 15, 2010
 *      Author: hephaestus
 */

#ifndef NAMESPACE_H_
#define NAMESPACE_H_

#define USE_LINKED_LIST_NAMESPACE

typedef boolean packetEventCallback(BowlerPacket *);
typedef boolean asyncEventCallback(BowlerPacket *,boolean (*pidAsyncCallbackPtr)(BowlerPacket *));

typedef struct  _RPC_LIST{
	//This is the bowler method for this RPC
	uint8_t bowlerMethod;
	//This is the 4 byte code for of the RPC
	char  rpc[4];
	//This is the callback function pointer for execution of the method
	packetEventCallback * callback;
        //This is the array of argument data types
	uint8_t  arguments [17] ;
        //This is the bowler method for this RPC
	uint8_t responseMethod;
        //This is the array of argument data types
	uint8_t responseArguments[17];
        
	//This is the linked list field
	struct _RPC_LIST * next;
} RPC_LIST;

typedef struct _NAMESPACE_LIST{
	//This is the string that identifies the names pace
	char  namespaceString[34];
	//This is the linked list of the RPC's
	RPC_LIST * rpcSet;
	//This is the callback function pointer for checking for async.
	asyncEventCallback * asyncEventCheck;
	//This is the linked list field
	struct _NAMESPACE_LIST * next;
} NAMESPACE_LIST;



RPC_LIST* getRpcByID(NAMESPACE_LIST* ,unsigned long  , uint8_t );
RPC_LIST* getRpcByIndex(NAMESPACE_LIST* ,uint8_t );
void addNamespaceToList(NAMESPACE_LIST* );
void addRpcToNamespace(NAMESPACE_LIST* ,RPC_LIST*  );
NAMESPACE_LIST* getNamespaceAtIndex(int index);
uint8_t getNumberOfNamespaces();
uint8_t getNumberOfRpcs(int namespaceIndex);

void RunNamespaceAsync(BowlerPacket *Packet,boolean (*pidAsyncCallbackPtr)(BowlerPacket *Packet));


//bcs.safe
#define SAFE					0x65666173 // 'safe'  Get/Set the safe-mode parameters


#endif /* NAMESPACE_H_ */
