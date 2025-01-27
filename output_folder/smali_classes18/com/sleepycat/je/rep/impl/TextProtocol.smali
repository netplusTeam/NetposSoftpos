.class public abstract Lcom/sleepycat/je/rep/impl/TextProtocol;
.super Ljava/lang/Object;
.source "TextProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;,
        Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;,
        Lcom/sleepycat/je/rep/impl/TextProtocol$StringFormatable;,
        Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;,
        Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;,
        Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;,
        Lcom/sleepycat/je/rep/impl/TextProtocol$OK;,
        Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;,
        Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;,
        Lcom/sleepycat/je/rep/impl/TextProtocol$Message;,
        Lcom/sleepycat/je/rep/impl/TextProtocol$WireFormatable;,
        Lcom/sleepycat/je/rep/impl/TextProtocol$TOKENS;,
        Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    }
.end annotation


# static fields
.field public static final SEPARATOR:Ljava/lang/String; = "|"

.field public static final SEPARATOR_REGEXP:Ljava/lang/String; = "\\|"

.field private static serDeHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final FAIL_RESP:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

.field public final OK_RESP:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

.field public final PROTOCOL_ERROR:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

.field private final VERSION:Ljava/lang/String;

.field protected final channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

.field protected final formatter:Ljava/util/logging/Formatter;

.field private final groupName:Ljava/lang/String;

.field protected final logger:Ljava/util/logging/Logger;

.field private memberIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final messageNocheckSuffix:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field private nonDefaultMessageCount:I

.field private openTimeoutMs:I

.field private final ops:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;",
            ">;"
        }
    .end annotation
.end field

.field private readTimeoutMs:I

.field protected final repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V
    .locals 3
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "groupName"    # Ljava/lang/String;
    .param p3, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p4, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p5, "channelFactory"    # Lcom/sleepycat/je/rep/net/DataChannelFactory;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/16 v0, 0x2710

    iput v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->openTimeoutMs:I

    .line 109
    iput v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->readTimeoutMs:I

    .line 116
    new-instance v0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;

    const-string v2, "PE"

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->PROTOCOL_ERROR:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 118
    new-instance v0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/impl/TextProtocol$OK;

    const-string v2, "OK"

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->OK_RESP:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 119
    new-instance v0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    const-class v1, Lcom/sleepycat/je/rep/impl/TextProtocol$Fail;

    const-string v2, "FAIL"

    invoke-direct {v0, v2, v1}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->FAIL_RESP:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->ops:Ljava/util/Map;

    .line 158
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->VERSION:Ljava/lang/String;

    .line 159
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->groupName:Ljava/lang/String;

    .line 160
    iput-object p3, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 161
    iput-object p4, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 162
    iput-object p5, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->name:Ljava/lang/String;

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->messageNocheckSuffix:Ljava/lang/String;

    .line 168
    if-eqz p4, :cond_0

    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->logger:Ljava/util/logging/Logger;

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLoggerFormatterNeeded(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->logger:Ljava/util/logging/Logger;

    .line 173
    :goto_0
    new-instance v0, Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    invoke-direct {v0, p3}, Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->formatter:Ljava/util/logging/Formatter;

    .line 174
    return-void
.end method

.method static synthetic access$100(Lcom/sleepycat/je/rep/impl/TextProtocol;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/TextProtocol;

    .line 73
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sleepycat/je/rep/impl/TextProtocol;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/TextProtocol;

    .line 73
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sleepycat/je/rep/impl/TextProtocol;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/TextProtocol;

    .line 73
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->memberIds:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sleepycat/je/rep/impl/TextProtocol;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/TextProtocol;

    .line 73
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sleepycat/je/rep/impl/TextProtocol;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/TextProtocol;

    .line 73
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sleepycat/je/rep/impl/TextProtocol;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/TextProtocol;

    .line 73
    iget v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->readTimeoutMs:I

    return v0
.end method

.method static synthetic access$700(Lcom/sleepycat/je/rep/impl/TextProtocol;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/TextProtocol;

    .line 73
    iget v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->openTimeoutMs:I

    return v0
.end method

.method static synthetic access$800()Lcom/sleepycat/je/utilint/TestHook;
    .locals 1

    .line 73
    sget-object v0, Lcom/sleepycat/je/rep/impl/TextProtocol;->serDeHook:Lcom/sleepycat/je/utilint/TestHook;

    return-object v0
.end method

.method public static setSerDeHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 183
    .local p0, "serDeHook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<Ljava/lang/String;>;"
    sput-object p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->serDeHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 184
    return-void
.end method


# virtual methods
.method public getMajorVersionNumber(Ljava/lang/String;)I
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .line 274
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    return v0
.end method

.method public getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    return-object v0
.end method

.method public getOpenTimeout()I
    .locals 1

    .line 244
    iget v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->openTimeoutMs:I

    return v0
.end method

.method public getOps(Ljava/lang/Class;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sleepycat/je/rep/impl/TextProtocol$Message;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 232
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sleepycat/je/rep/impl/TextProtocol$Message;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 233
    .local v0, "reqOps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->ops:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 234
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;>;"
    nop

    .line 235
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;->getMessageClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;>;"
    :cond_0
    goto :goto_0

    .line 240
    :cond_1
    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 248
    iget v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->readTimeoutMs:I

    return v0
.end method

.method public getRequestMessage(Lcom/sleepycat/je/rep/net/DataChannel;)Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    .locals 4
    .param p1, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 913
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    .line 914
    invoke-static {p1}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 916
    .local v0, "in":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 917
    .local v1, "requestLine":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 919
    return-object v2

    .line 922
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/rep/impl/TextProtocol;->parseRequest(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;

    move-result-object v2
    :try_end_0
    .catch Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 923
    :catch_0
    move-exception v3

    .line 924
    .local v3, "e":Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
    invoke-virtual {p0, p1, v3}, Lcom/sleepycat/je/rep/impl/TextProtocol;->processIME(Lcom/sleepycat/je/rep/net/DataChannel;Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;)V

    .line 925
    return-object v2
.end method

.method protected initializeMessageOps([Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;)V
    .locals 5
    .param p1, "protocolOps"    # [Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 212
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 213
    .local v2, "op":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->ops:Ljava/util/Map;

    invoke-static {v2}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;->access$000(Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .end local v2    # "op":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    :cond_0
    array-length v0, p1

    iput v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->nonDefaultMessageCount:I

    .line 216
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->ops:Ljava/util/Map;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->PROTOCOL_ERROR:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;->access$000(Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->PROTOCOL_ERROR:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->ops:Ljava/util/Map;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->OK_RESP:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;->access$000(Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->OK_RESP:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->ops:Ljava/util/Map;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->FAIL_RESP:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;->access$000(Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->FAIL_RESP:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return-void
.end method

.method public messageCount()I
    .locals 1

    .line 257
    iget v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->nonDefaultMessageCount:I

    return v0
.end method

.method public parse(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/TextProtocol$Message;
    .locals 10
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
        }
    .end annotation

    .line 341
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "tokens":[Ljava/lang/String;
    sget-object v1, Lcom/sleepycat/je/rep/impl/TextProtocol$TOKENS;->OP_TOKEN:Lcom/sleepycat/je/rep/impl/TextProtocol$TOKENS;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/TextProtocol$TOKENS;->ordinal()I

    move-result v1

    .line 344
    .local v1, "index":I
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 349
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->ops:Ljava/util/Map;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 350
    .local v2, "op":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    if-eqz v2, :cond_2

    .line 358
    :try_start_0
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;->getMessageClass()Ljava/lang/Class;

    move-result-object v3

    .line 359
    .local v3, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sleepycat/je/rep/impl/TextProtocol$Message;>;"
    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    .line 360
    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 361
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    .line 362
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v9, 0x2

    aput-object v6, v5, v9

    .line 360
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 363
    .local v5, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/sleepycat/je/rep/impl/TextProtocol$Message;>;"
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v7

    aput-object p1, v4, v8

    aput-object v0, v4, v9

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .local v4, "message":Lcom/sleepycat/je/rep/impl/TextProtocol$Message;
    return-object v4

    .line 373
    .end local v3    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sleepycat/je/rep/impl/TextProtocol$Message;>;"
    .end local v4    # "message":Lcom/sleepycat/je/rep/impl/TextProtocol$Message;
    .end local v5    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/sleepycat/je/rep/impl/TextProtocol$Message;>;"
    :catch_0
    move-exception v3

    .line 375
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    .line 376
    .local v4, "target":Ljava/lang/Throwable;
    instance-of v5, v4, Ljava/lang/RuntimeException;

    if-nez v5, :cond_1

    .line 383
    instance-of v5, v4, Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;

    if-eqz v5, :cond_0

    .line 384
    move-object v5, v4

    check-cast v5, Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;

    throw v5

    .line 386
    :cond_0
    invoke-static {v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v5

    throw v5

    .line 377
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 378
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " exception message:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 379
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 380
    .local v5, "message":Ljava/lang/String;
    new-instance v6, Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;

    sget-object v7, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;->BAD_FORMAT:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    invoke-direct {v6, v7, v5}, Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;Ljava/lang/String;)V

    throw v6

    .line 371
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v4    # "target":Ljava/lang/Throwable;
    .end local v5    # "message":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 372
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    throw v4

    .line 369
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v3

    .line 370
    .local v3, "e":Ljava/lang/SecurityException;
    invoke-static {v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    throw v4

    .line 367
    .end local v3    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v3

    .line 368
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    throw v4

    .line 365
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v3

    .line 366
    .local v3, "e":Ljava/lang/InstantiationException;
    invoke-static {v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    throw v4

    .line 351
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :cond_2
    new-instance v3, Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;

    sget-object v4, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;->BAD_FORMAT:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Text Protocol unknown op:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;Ljava/lang/String;)V

    throw v3

    .line 345
    .end local v2    # "op":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    :cond_3
    new-instance v2, Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;

    sget-object v3, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;->BAD_FORMAT:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing message op in message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;Ljava/lang/String;)V

    throw v2
.end method

.method public parseRequest(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    .locals 1
    .param p1, "requestLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
        }
    .end annotation

    .line 898
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol;->parse(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/TextProtocol$Message;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;

    return-object v0
.end method

.method parseResponse(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    .locals 1
    .param p1, "responseLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
        }
    .end annotation

    .line 885
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol;->parse(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/TextProtocol$Message;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    return-object v0
.end method

.method public process(Ljava/lang/Object;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    .locals 8
    .param p1, "requestProcessor"    # Ljava/lang/Object;
    .param p2, "requestMessage"    # Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;

    .line 950
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 952
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :try_start_0
    const-string v1, "process"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 953
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 954
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v5

    .line 955
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    return-object v2

    .line 963
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 964
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->formatter:Ljava/util/logging/Formatter;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Unexpected exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 967
    invoke-static {v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->exceptionTypeAndMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 964
    invoke-static {v2, v3, v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 968
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2

    .line 956
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 957
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->formatter:Ljava/util/logging/Formatter;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Method: process("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 960
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") was missing"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 957
    invoke-static {v2, v3, v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 962
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2
.end method

.method public processIME(Lcom/sleepycat/je/rep/net/DataChannel;Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;)V
    .locals 6
    .param p1, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;
    .param p2, "ime"    # Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;

    .line 938
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->formatter:Ljava/util/logging/Formatter;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " format error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 940
    invoke-static {p2}, Lcom/sleepycat/je/utilint/LoggerUtils;->exceptionTypeAndMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 938
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 941
    new-instance v0, Ljava/io/PrintWriter;

    .line 942
    invoke-static {p1}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 943
    .local v0, "out":Ljava/io/PrintWriter;
    new-instance v1, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;

    invoke-direct {v1, p0, p2}, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;)V

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;->wireFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 944
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 945
    return-void
.end method

.method protected replaceOp(Ljava/lang/String;Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;)Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 225
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->ops:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    return-object v0
.end method

.method protected setTimeouts(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/config/DurationConfigParam;Lcom/sleepycat/je/config/DurationConfigParam;)V
    .locals 2
    .param p1, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p2, "openTimeoutConfig"    # Lcom/sleepycat/je/config/DurationConfigParam;
    .param p3, "readTimeoutConfig"    # Lcom/sleepycat/je/config/DurationConfigParam;

    .line 192
    if-nez p1, :cond_0

    .line 193
    return-void

    .line 195
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    .line 196
    .local v0, "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    invoke-virtual {v0, p2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->openTimeoutMs:I

    .line 197
    invoke-virtual {v0, p3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->readTimeoutMs:I

    .line 198
    return-void
.end method

.method public updateNodeIds(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 267
    .local p1, "newMemberIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol;->memberIds:Ljava/util/Set;

    .line 268
    return-void
.end method
