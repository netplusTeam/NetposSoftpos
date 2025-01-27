.class public Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;
.super Ljava/lang/Object;
.source "SubscriberFeederSyncup.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MIN_VER_PART_GEN_DB:I = 0x8


# instance fields
.field private final filter:Lcom/sleepycat/je/rep/stream/FeederFilter;

.field private final logger:Ljava/util/logging/Logger;

.field private final namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

.field private partGenDBId:Lcom/sleepycat/je/dbi/DatabaseId;

.field private final partGenDBName:Ljava/lang/String;

.field private final protocol:Lcom/sleepycat/je/rep/stream/Protocol;

.field private final repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

.field private final type:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/utilint/NamedChannel;Lcom/sleepycat/je/rep/stream/Protocol;Lcom/sleepycat/je/rep/stream/FeederFilter;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;Ljava/lang/String;Ljava/util/logging/Logger;)V
    .locals 1
    .param p1, "namedChannel"    # Lcom/sleepycat/je/rep/utilint/NamedChannel;
    .param p2, "protocol"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p3, "filter"    # Lcom/sleepycat/je/rep/stream/FeederFilter;
    .param p4, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p5, "type"    # Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;
    .param p6, "partGenDBName"    # Ljava/lang/String;
    .param p7, "logger"    # Ljava/util/logging/Logger;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 61
    iput-object p2, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 62
    iput-object p3, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->filter:Lcom/sleepycat/je/rep/stream/FeederFilter;

    .line 63
    iput-object p4, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 64
    iput-object p5, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->type:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    .line 65
    iput-object p6, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->partGenDBName:Ljava/lang/String;

    .line 66
    iput-object p7, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->logger:Ljava/util/logging/Logger;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->partGenDBId:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 69
    return-void
.end method

.method private getPartGenDBIdFromFeeder()Lcom/sleepycat/je/dbi/DatabaseId;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/Protocol;->getVersion()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client provides part gen db name while the server protocol (ver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 287
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/stream/Protocol;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is not upgraded to support it, min ver to support partition generation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", ignore."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-static {v0, v2, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 291
    const/4 v0, 0x0

    return-object v0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subscriber sends request for partition generation db id for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->partGenDBName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to feeder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 297
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 294
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    new-instance v1, Lcom/sleepycat/je/rep/stream/Protocol$DBIdRequest;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->partGenDBName:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/rep/stream/Protocol$DBIdRequest;-><init>(Lcom/sleepycat/je/rep/stream/Protocol;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/rep/stream/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 306
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/stream/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v0

    .line 308
    .local v0, "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    instance-of v1, v0, Lcom/sleepycat/je/rep/stream/Protocol$DBIdResponse;

    if-eqz v1, :cond_1

    .line 309
    move-object v1, v0

    check-cast v1, Lcom/sleepycat/je/rep/stream/Protocol$DBIdResponse;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/Protocol$DBIdResponse;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v1

    .line 310
    .local v1, "id":Lcom/sleepycat/je/dbi/DatabaseId;
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Subscriber successfully requested partition generation db id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from feeder "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 313
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 310
    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 323
    return-object v1

    .line 316
    .end local v1    # "id":Lcom/sleepycat/je/dbi/DatabaseId;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive unexpected response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "from feeder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 317
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", request type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->type:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v2, v3, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 320
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getStartVLSNFromFeeder(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/utilint/VLSN;
    .locals 9
    .param p1, "requestVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subscriber send requested VLSN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to feeder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 152
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    new-instance v1, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->type:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    invoke-direct {v1, v0, p1, v2}, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;)V

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/rep/stream/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 173
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/stream/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v0

    .line 175
    .local v0, "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    instance-of v1, v0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;

    const-string v2, ", request type: "

    if-eqz v1, :cond_5

    .line 176
    move-object v1, v0

    check-cast v1, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;->getWireRecord()Lcom/sleepycat/je/rep/stream/InputWireRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/InputWireRecord;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    .line 179
    .local v1, "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->type:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    sget-object v4, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;->DEFAULT:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    invoke-virtual {v1, p1}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 184
    :cond_1
    :goto_0
    invoke-virtual {v1, p1}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 185
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Subscriber successfully requested VLSN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from feeder "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 188
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->type:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 185
    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 192
    :cond_2
    invoke-virtual {v1, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v3

    const-string v4, " is not available from feeder "

    const-string v5, "Requested VLSN "

    if-gez v3, :cond_3

    .line 193
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 196
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " instead, start stream from a lowest available VLSN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->type:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 193
    invoke-static {v3, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 202
    :cond_3
    invoke-virtual {v1, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v3

    if-lez v3, :cond_9

    .line 203
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->type:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    sget-object v6, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;->NOW:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    invoke-virtual {v3, v6}, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 204
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stream from highest available vlsn from feeder "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 207
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->type:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-static {v3, v4, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 210
    :cond_4
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 213
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " instead, start stream from a highest available VLSN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->type:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-static {v3, v6, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 220
    .end local v1    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    :cond_5
    instance-of v1, v0, Lcom/sleepycat/je/rep/stream/BaseProtocol$AlternateMatchpoint;

    const-string v3, "Feeder "

    const-string v4, "from feeder "

    const-string v5, "Receive unexpected response "

    if-eqz v1, :cond_8

    .line 222
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->type:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    sget-object v6, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;->NOW:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    invoke-virtual {v1, v6}, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->type:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    sget-object v6, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;->AVAILABLE:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    .line 223
    invoke-virtual {v1, v6}, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 231
    move-object v1, v0

    check-cast v1, Lcom/sleepycat/je/rep/stream/BaseProtocol$AlternateMatchpoint;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/BaseProtocol$AlternateMatchpoint;->getAlternateWireRecord()Lcom/sleepycat/je/rep/stream/InputWireRecord;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/InputWireRecord;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    .line 234
    .restart local v1    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    invoke-virtual {v1, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v4

    if-gez v4, :cond_6

    .line 235
    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 236
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " returns a valid start VLSN"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " but earlier than requested one "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->type:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 235
    invoke-static {v4, v5, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 234
    :cond_6
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 224
    .end local v1    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 225
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->type:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v2, v3, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 228
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 241
    .end local v1    # "msg":Ljava/lang/String;
    :cond_8
    instance-of v1, v0, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryNotFound;

    if-eqz v1, :cond_b

    .line 243
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->type:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    sget-object v6, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;->NOW:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    invoke-virtual {v1, v6}, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->type:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    sget-object v6, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;->AVAILABLE:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    .line 244
    invoke-virtual {v1, v6}, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 256
    sget-object v1, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 257
    .local v1, "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 258
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " is unable to service the request vlsn "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->type:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-static {v4, v5, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 270
    :cond_9
    :goto_1
    return-object v1

    .line 249
    .end local v1    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 250
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->type:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v2, v3, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 253
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 263
    .end local v1    # "msg":Ljava/lang/String;
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 264
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->type:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    .restart local v1    # "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v2, v3, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 267
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public execute(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/utilint/VLSN;
    .locals 11
    .param p1, "reqVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/utilint/InternalException;
        }
    .end annotation

    .line 83
    const-string v0, " sync-up done, elapsed time: %,dms"

    const-string v1, "Subscriber to feeder "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 85
    .local v2, "startTime":J
    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Subscriber-Feeder "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 86
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " syncup started."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 85
    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 91
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->getStartVLSNFromFeeder(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v6

    .line 93
    .local v6, "startVLSN":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v7, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->partGenDBName:Ljava/lang/String;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->getPartGenDBIdFromFeeder()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v7

    iput-object v7, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->partGenDBId:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 96
    :cond_0
    sget-object v7, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v6, v7}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 97
    iget-object v7, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v8, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Response from feeder  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 99
    invoke-virtual {v10}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": the start VLSN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", the requested VLSN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", send startStream request with filter."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 97
    invoke-static {v7, v8, v9}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 105
    iget-object v7, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    new-instance v8, Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->filter:Lcom/sleepycat/je/rep/stream/FeederFilter;

    invoke-direct {v8, v7, v6, v9}, Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/rep/stream/FeederFilter;)V

    iget-object v9, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v7, v8, v9}, Lcom/sleepycat/je/rep/stream/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object v7, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v8, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to stream from Feeder "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 110
    invoke-virtual {v10}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from requested VLSN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 108
    invoke-static {v7, v8, v9}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :goto_0
    nop

    .line 117
    iget-object v7, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v8, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v9, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 119
    invoke-virtual {v9}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v4

    .line 118
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v7, v8, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 113
    return-object v6

    .line 117
    .end local v6    # "startVLSN":Lcom/sleepycat/je/utilint/VLSN;
    :catchall_0
    move-exception v6

    goto :goto_2

    .line 114
    :catch_0
    move-exception v6

    goto :goto_1

    :catch_1
    move-exception v6

    .line 115
    .local v6, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    new-instance v7, Lcom/sleepycat/je/utilint/InternalException;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sleepycat/je/utilint/InternalException;-><init>(Ljava/lang/String;)V

    .end local v2    # "startTime":J
    .end local p1    # "reqVLSN":Lcom/sleepycat/je/utilint/VLSN;
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v2    # "startTime":J
    .restart local p1    # "reqVLSN":Lcom/sleepycat/je/utilint/VLSN;
    :goto_2
    iget-object v7, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v8, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v9, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 119
    invoke-virtual {v9}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v4

    .line 118
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v7, v8, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    throw v6
.end method

.method public getPartGenDBId()Lcom/sleepycat/je/dbi/DatabaseId;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/SubscriberFeederSyncup;->partGenDBId:Lcom/sleepycat/je/dbi/DatabaseId;

    return-object v0
.end method
