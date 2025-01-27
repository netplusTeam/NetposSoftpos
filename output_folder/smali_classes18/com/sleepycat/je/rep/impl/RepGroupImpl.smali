.class public Lcom/sleepycat/je/rep/impl/RepGroupImpl;
.super Ljava/lang/Object;
.source "RepGroupImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/impl/RepGroupImpl$NodeConflictException;,
        Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ACK_PREDICATE:Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;

.field private static final ARBITER_PREDICATE:Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;

.field private static final CHANGE_VERSION_START:I = 0x0

.field private static final ELECTABLE_PREDICATE:Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;

.field private static final EXTERNAL_PREDICATE:Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;

.field public static final FORMAT_VERSION_2:I = 0x2

.field public static final FORMAT_VERSION_3:I = 0x3

.field public static final FORMAT_VERSION_3_JE_VERSION:Lcom/sleepycat/je/JEVersion;

.field public static final INITIAL_FORMAT_VERSION:I = 0x3

.field public static final MAX_FORMAT_VERSION:I = 0x3

.field public static final MAX_NODES_WITH_TRANSIENT_ID:I = 0x400

.field static final MIN_FORMAT_VERSION:I = 0x2

.field public static final MIN_FORMAT_VERSION_JE_VERSION:Lcom/sleepycat/je/JEVersion;

.field private static final MONITOR_PREDICATE:Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;

.field private static final NODE_SEQUENCE_MAX:I = 0x7ffffbff

.field private static final NODE_SEQUENCE_START:I

.field private static final SECONDARY_PREDICATE:Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;

.field private static final UNKNOWN_UUID:Ljava/util/UUID;


# instance fields
.field private changeVersion:I

.field private volatile formatVersion:I

.field private final groupName:Ljava/lang/String;

.field private volatile minJEVersion:Lcom/sleepycat/je/JEVersion;

.field private nodeIdSequence:I

.field private final nodesById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sleepycat/je/rep/impl/RepNodeImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final nodesByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/rep/impl/RepNodeImpl;",
            ">;"
        }
    .end annotation
.end field

.field private uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    nop

    .line 65
    new-instance v0, Lcom/sleepycat/je/JEVersion;

    const-string v1, "6.0.1"

    invoke-direct {v0, v1}, Lcom/sleepycat/je/JEVersion;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->FORMAT_VERSION_3_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    .line 71
    new-instance v0, Lcom/sleepycat/je/JEVersion;

    const-string v1, "5.0.0"

    invoke-direct {v0, v1}, Lcom/sleepycat/je/JEVersion;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->MIN_FORMAT_VERSION_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    .line 82
    new-instance v0, Ljava/util/UUID;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->UNKNOWN_UUID:Ljava/util/UUID;

    .line 99
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl$1;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl$1;-><init>()V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->ELECTABLE_PREDICATE:Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;

    .line 107
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl$2;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl$2;-><init>()V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->MONITOR_PREDICATE:Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;

    .line 115
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl$3;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl$3;-><init>()V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->SECONDARY_PREDICATE:Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;

    .line 123
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl$4;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl$4;-><init>()V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->EXTERNAL_PREDICATE:Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;

    .line 131
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl$5;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl$5;-><init>()V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->ACK_PREDICATE:Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;

    .line 139
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl$6;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl$6;-><init>()V

    sput-object v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->ARBITER_PREDICATE:Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/JEVersion;)V
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "currentJEVersion"    # Lcom/sleepycat/je/JEVersion;

    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;-><init>(Ljava/lang/String;ZLcom/sleepycat/je/JEVersion;)V

    .line 206
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/UUID;I)V
    .locals 8
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "formatVersion"    # I

    .line 234
    const/4 v0, 0x3

    if-ge p3, v0, :cond_0

    sget-object v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->MIN_FORMAT_VERSION_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->FORMAT_VERSION_3_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    :goto_0
    move-object v7, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;-><init>(Ljava/lang/String;Ljava/util/UUID;IIILcom/sleepycat/je/JEVersion;)V

    .line 242
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/UUID;IIILcom/sleepycat/je/JEVersion;)V
    .locals 3
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "formatVersion"    # I
    .param p4, "changeVersion"    # I
    .param p5, "nodeIdSequence"    # I
    .param p6, "minJEVersion"    # Lcom/sleepycat/je/JEVersion;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->changeVersion:I

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesByName:Ljava/util/Map;

    .line 194
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->MIN_FORMAT_VERSION_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->minJEVersion:Lcom/sleepycat/je/JEVersion;

    .line 260
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->groupName:Ljava/lang/String;

    .line 261
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->uuid:Ljava/util/UUID;

    .line 262
    iput p3, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->formatVersion:I

    .line 263
    iput p4, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->changeVersion:I

    .line 264
    invoke-virtual {p0, p5}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->setNodeIdSequence(I)V

    .line 265
    iput-object p6, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->minJEVersion:Lcom/sleepycat/je/JEVersion;

    .line 267
    const/4 v0, 0x2

    if-lt p3, v0, :cond_1

    const/4 v0, 0x3

    if-gt p3, v0, :cond_1

    .line 274
    if-eqz p6, :cond_0

    .line 278
    return-void

    .line 275
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The minJEVersion must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected membership database format version between: 2 and 3, encountered unsupported version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/sleepycat/je/JEVersion;)V
    .locals 2
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "unknownUUID"    # Z
    .param p3, "currentJEVersion"    # Lcom/sleepycat/je/JEVersion;

    .line 215
    if-eqz p2, :cond_0

    sget-object v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->UNKNOWN_UUID:Ljava/util/UUID;

    goto :goto_0

    .line 216
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 217
    :goto_0
    invoke-static {p3}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getCurrentFormatVersion(Lcom/sleepycat/je/JEVersion;)I

    move-result v1

    .line 215
    invoke-direct {p0, p1, v0, v1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;-><init>(Ljava/lang/String;Ljava/util/UUID;I)V

    .line 218
    return-void
.end method

.method public static deserializeHex([Ljava/lang/String;I)Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .locals 6
    .param p0, "tokens"    # [Ljava/lang/String;
    .param p1, "start"    # I

    .line 903
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;-><init>()V

    .line 905
    .local v0, "groupBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "start":I
    .local v1, "start":I
    aget-object p1, p0, p1

    invoke-static {v0, p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->hexToObject(Lcom/sleepycat/bind/tuple/TupleBinding;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 906
    .local p1, "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 908
    .local v2, "nodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 909
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "start":I
    .local v3, "start":I
    aget-object v1, p0, v1

    .line 910
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getFormatVersion()I

    move-result v4

    invoke-static {v1, v4}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->hexDeserializeNode(Ljava/lang/String;I)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v1

    .line 911
    .local v1, "n":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 912
    .local v4, "old":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    if-nez v4, :cond_0

    .line 913
    .end local v1    # "n":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .end local v4    # "old":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    move v1, v3

    goto :goto_0

    .line 912
    .restart local v1    # "n":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .restart local v4    # "old":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :cond_0
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 914
    .end local v3    # "start":I
    .end local v4    # "old":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .local v1, "start":I
    :cond_1
    invoke-virtual {p1, v2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->setNodes(Ljava/util/Map;)V

    .line 915
    return-object p1
.end method

.method public static deserializeNode([BI)Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "formatVersion"    # I

    .line 869
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;-><init>(I)V

    .line 870
    .local v0, "binding":Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;
    new-instance v1, Lcom/sleepycat/bind/tuple/TupleInput;

    invoke-direct {v1, p0}, Lcom/sleepycat/bind/tuple/TupleInput;-><init>([B)V

    .line 871
    .local v1, "tuple":Lcom/sleepycat/bind/tuple/TupleInput;
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;->entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v2

    return-object v2
.end method

.method private getAllMemberSockets(Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;)Ljava/util/Set;
    .locals 5
    .param p1, "p"    # Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;",
            ")",
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .line 1221
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1222
    .local v0, "sockets":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    monitor-enter v1

    .line 1223
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 1224
    .local v3, "mi":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/NodeType;->isElectable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1225
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/NodeType;->isMonitor()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1226
    :cond_0
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1227
    :cond_1
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/NodeType;->hasTransientId()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    if-eqz p1, :cond_3

    .line 1228
    invoke-virtual {p1, v3}, Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;->include(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1229
    :cond_3
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1231
    .end local v3    # "mi":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :cond_4
    goto :goto_0

    .line 1232
    :cond_5
    monitor-exit v1

    .line 1233
    return-object v0

    .line 1232
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getCurrentFormatVersion(Lcom/sleepycat/je/JEVersion;)I
    .locals 1
    .param p0, "currentJEVersion"    # Lcom/sleepycat/je/JEVersion;

    .line 224
    if-nez p0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 226
    :cond_0
    invoke-static {p0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getMaxFormatVersion(Lcom/sleepycat/je/JEVersion;)I

    move-result v0

    .line 224
    :goto_0
    return v0
.end method

.method public static getFirstNodeId()I
    .locals 1

    .line 668
    const/4 v0, 0x1

    return v0
.end method

.method public static getMaxFormatVersion(Lcom/sleepycat/je/JEVersion;)I
    .locals 1
    .param p0, "jeVersion"    # Lcom/sleepycat/je/JEVersion;

    .line 602
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->FORMAT_VERSION_3_JE_VERSION:Lcom/sleepycat/je/JEVersion;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/JEVersion;->compareTo(Lcom/sleepycat/je/JEVersion;)I

    move-result v0

    if-gez v0, :cond_0

    .line 603
    const/4 v0, 0x2

    return v0

    .line 605
    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public static hexDeserializeNode(Ljava/lang/String;I)Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .locals 2
    .param p0, "hex"    # Ljava/lang/String;
    .param p1, "formatVersion"    # I

    .line 855
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;-><init>(I)V

    .line 856
    .local v0, "nodeBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;
    invoke-static {v0, p0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->hexToObject(Lcom/sleepycat/bind/tuple/TupleBinding;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    return-object v1
.end method

.method private static hexToObject(Lcom/sleepycat/bind/tuple/TupleBinding;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "hex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sleepycat/bind/tuple/TupleBinding<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 881
    .local p0, "binding":Lcom/sleepycat/bind/tuple/TupleBinding;, "Lcom/sleepycat/bind/tuple/TupleBinding<TT;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 882
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 883
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 884
    .local v2, "value":I
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    .line 885
    shr-int/lit8 v3, v1, 0x1

    int-to-byte v4, v2

    aput-byte v4, v0, v3

    .line 882
    .end local v2    # "value":I
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 887
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lcom/sleepycat/bind/tuple/TupleInput;

    invoke-direct {v1, v0}, Lcom/sleepycat/bind/tuple/TupleInput;-><init>([B)V

    .line 888
    .local v1, "tuple":Lcom/sleepycat/bind/tuple/TupleInput;
    invoke-virtual {p0, v1}, Lcom/sleepycat/bind/tuple/TupleBinding;->entryToObject(Lcom/sleepycat/bind/tuple/TupleInput;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static isUnknownUUID(Ljava/util/UUID;)Z
    .locals 1
    .param p0, "uuid"    # Ljava/util/UUID;

    .line 294
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->UNKNOWN_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static objectToHex(Lcom/sleepycat/bind/tuple/TupleBinding;Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sleepycat/bind/tuple/TupleBinding<",
            "TT;>;TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 764
    .local p0, "binding":Lcom/sleepycat/bind/tuple/TupleBinding;, "Lcom/sleepycat/bind/tuple/TupleBinding<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 765
    .local v0, "buffer":Ljava/lang/StringBuilder;
    new-instance v1, Lcom/sleepycat/bind/tuple/TupleOutput;

    const/16 v2, 0x64

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Lcom/sleepycat/bind/tuple/TupleOutput;-><init>([B)V

    .line 766
    .local v1, "tuple":Lcom/sleepycat/bind/tuple/TupleOutput;
    invoke-virtual {p0, p1, v1}, Lcom/sleepycat/bind/tuple/TupleBinding;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/bind/tuple/TupleOutput;)V

    .line 767
    invoke-virtual {v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->getBufferBytes()[B

    move-result-object v2

    .line 768
    .local v2, "bytes":[B
    invoke-virtual {v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->getBufferLength()I

    move-result v3

    .line 770
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 771
    aget-byte v5, v2, v4

    and-int/lit8 v5, v5, 0xf

    .line 772
    .local v5, "lowNibble":I
    aget-byte v6, v2, v4

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    .line 773
    .local v6, "highNibble":I
    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 774
    invoke-static {v6, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 770
    .end local v5    # "lowNibble":I
    .end local v6    # "highNibble":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 776
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static serializeBytes(Lcom/sleepycat/je/rep/impl/RepNodeImpl;I)[B
    .locals 3
    .param p0, "node"    # Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .param p1, "formatVersion"    # I

    .line 838
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;-><init>(I)V

    .line 839
    .local v0, "binding":Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;
    new-instance v1, Lcom/sleepycat/bind/tuple/TupleOutput;

    const/16 v2, 0x7a

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Lcom/sleepycat/bind/tuple/TupleOutput;-><init>([B)V

    .line 841
    .local v1, "tuple":Lcom/sleepycat/bind/tuple/TupleOutput;
    invoke-virtual {v0, p0, v1}, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;->objectToEntry(Lcom/sleepycat/je/rep/impl/RepNodeImpl;Lcom/sleepycat/bind/tuple/TupleOutput;)V

    .line 842
    invoke-virtual {v1}, Lcom/sleepycat/bind/tuple/TupleOutput;->getBufferBytes()[B

    move-result-object v2

    return-object v2
.end method

.method public static serializeHex(Lcom/sleepycat/je/rep/impl/RepNodeImpl;I)Ljava/lang/String;
    .locals 2
    .param p0, "node"    # Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .param p1, "formatVersion"    # I

    .line 824
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;-><init>(I)V

    .line 825
    .local v0, "nodeBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;
    invoke-static {v0, p0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->objectToHex(Lcom/sleepycat/bind/tuple/TupleBinding;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addTransientIdNode(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)V
    .locals 8
    .param p1, "node"    # Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 507
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/NodeType;->hasTransientId()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 512
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->hasNullId()Z

    move-result v0

    if-nez v0, :cond_9

    .line 518
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    monitor-enter v0

    .line 519
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNodeId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 520
    .local v1, "prevById":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/NodeType;->hasTransientId()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Same node ID for nodes with transient and persistent ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p1    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    throw v2

    .line 523
    .restart local p1    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesByName:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 524
    .local v2, "prevByName":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    if-eqz v2, :cond_3

    .line 525
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/NodeType;->hasTransientId()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 526
    :cond_2
    new-instance v3, Lcom/sleepycat/je/rep/impl/RepGroupImpl$NodeConflictException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New node with transient ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 527
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " conflicts with an existing node with persistent ID with the same name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sleepycat/je/rep/impl/RepGroupImpl$NodeConflictException;-><init>(Ljava/lang/String;)V

    .end local p1    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    throw v3

    .line 531
    .restart local p1    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    .line 532
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNodeId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 533
    .local v3, "prevById2":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    if-ne v1, v3, :cond_8

    .line 534
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesByName:Ljava/util/Map;

    .line 535
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 536
    .local v4, "prevByName2":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    if-ne v2, v4, :cond_7

    .line 537
    if-eqz v1, :cond_4

    .line 538
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 539
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesByName:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    :cond_4
    if-eqz v2, :cond_5

    .line 542
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNodeId()I

    move-result v5

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNodeId()I

    move-result v6

    if-eq v5, v6, :cond_5

    .line 543
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNodeId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    :cond_5
    new-instance v5, Ljava/util/HashSet;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v6, Ljava/util/HashSet;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesByName:Ljava/util/Map;

    .line 547
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 546
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 550
    .end local v1    # "prevById":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .end local v2    # "prevByName":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .end local v3    # "prevById2":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .end local v4    # "prevByName2":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    monitor-exit v0

    .line 551
    return-void

    .line 546
    .restart local v1    # "prevById":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .restart local v2    # "prevByName":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .restart local v3    # "prevById2":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .restart local v4    # "prevByName2":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :cond_6
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Node maps indexed by ID and name differ: IDs: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Names: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesByName:Ljava/util/Map;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p1    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    throw v5

    .line 536
    .restart local p1    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :cond_7
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    throw v5

    .line 533
    .end local v4    # "prevByName2":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .restart local p1    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :cond_8
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    throw v4

    .line 550
    .end local v1    # "prevById":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .end local v2    # "prevByName":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .end local v3    # "prevById2":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .restart local p1    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 513
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to call addTransientIdNode on node without ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to call addTransientIdNode on a node without transient id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkForConflicts(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)V
    .locals 4
    .param p1, "node"    # Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Lcom/sleepycat/je/rep/impl/RepGroupImpl$NodeConflictException;
        }
    .end annotation

    .line 359
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getAllMembers(Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 360
    .local v1, "n":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    goto :goto_0

    .line 363
    :cond_0
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 371
    .end local v1    # "n":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    goto :goto_0

    .line 364
    .restart local v1    # "n":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :cond_1
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl$NodeConflictException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New or moved node:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 365
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", is configured with the socket address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 367
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".  It conflicts with the socket already used by the member: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 369
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl$NodeConflictException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    .end local v1    # "n":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :cond_2
    return-void
.end method

.method public countAllMembers(Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;)I
    .locals 5
    .param p1, "p"    # Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;

    .line 977
    const/4 v0, 0x0

    .line 978
    .local v0, "count":I
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    monitor-enter v1

    .line 979
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 980
    .local v3, "mi":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;->include(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 981
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 983
    .end local v3    # "mi":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :cond_1
    goto :goto_0

    .line 984
    :cond_2
    monitor-exit v1

    .line 985
    return v0

    .line 984
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 393
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 394
    return v0

    .line 396
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 397
    return v1

    .line 399
    :cond_1
    instance-of v2, p1, Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    if-nez v2, :cond_2

    .line 400
    return v1

    .line 402
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 403
    .local v2, "other":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    iget v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->changeVersion:I

    iget v4, v2, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->changeVersion:I

    if-eq v3, v4, :cond_3

    .line 404
    return v1

    .line 406
    :cond_3
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->groupName:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 407
    iget-object v3, v2, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->groupName:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 408
    return v1

    .line 410
    :cond_4
    iget-object v4, v2, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->groupName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 411
    return v1

    .line 414
    :cond_5
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->uuid:Ljava/util/UUID;

    if-nez v3, :cond_6

    .line 415
    iget-object v3, v2, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->uuid:Ljava/util/UUID;

    if-eqz v3, :cond_7

    .line 416
    return v1

    .line 418
    :cond_6
    iget-object v4, v2, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 419
    return v1

    .line 421
    :cond_7
    iget v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->formatVersion:I

    iget v4, v2, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->formatVersion:I

    if-eq v3, v4, :cond_8

    .line 422
    return v1

    .line 424
    :cond_8
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->minJEVersion:Lcom/sleepycat/je/JEVersion;

    iget-object v4, v2, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->minJEVersion:Lcom/sleepycat/je/JEVersion;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/JEVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 425
    return v1

    .line 433
    :cond_9
    iget-object v3, v2, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    monitor-enter v3

    .line 434
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    iget-object v5, v2, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 436
    .local v4, "otherNodesById":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 437
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    monitor-enter v5

    .line 438
    :try_start_1
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 439
    monitor-exit v5

    return v1

    .line 441
    :cond_a
    monitor-exit v5

    .line 443
    return v0

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 436
    .end local v4    # "otherNodesById":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public getAckGroupSize()I
    .locals 1

    .line 1395
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->ACK_PREDICATE:Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->countAllMembers(Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;)I

    move-result v0

    return v0
.end method

.method public getAllAcceptorSockets()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .line 1297
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->ELECTABLE_PREDICATE:Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getAllMemberSockets(Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getAllElectableMembers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/rep/impl/RepNodeImpl;",
            ">;"
        }
    .end annotation

    .line 1055
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->ELECTABLE_PREDICATE:Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getAllMembers(Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getAllElectionMemberIds()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 930
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 931
    .local v0, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    monitor-enter v1

    .line 932
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 933
    .local v3, "mi":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/NodeType;->hasTransientId()Z

    move-result v4

    if-nez v4, :cond_0

    .line 934
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNodeId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 936
    .end local v3    # "mi":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :cond_0
    goto :goto_0

    .line 937
    :cond_1
    monitor-exit v1

    .line 938
    return-object v0

    .line 937
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAllHelperSockets()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .line 1272
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getAllMemberSockets(Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getAllLearnerMembers()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/rep/impl/RepNodeImpl;",
            ">;"
        }
    .end annotation

    .line 1142
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1143
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    new-instance v1, Lcom/sleepycat/je/rep/impl/RepGroupImpl$9;

    invoke-direct {v1, p0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl$9;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupImpl;)V

    invoke-virtual {p0, v1, v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->includeAllMembers(Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;Ljava/util/Set;)V

    .line 1152
    return-object v0
.end method

.method public getAllLearnerSockets()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .line 1255
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl$10;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl$10;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupImpl;)V

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getAllMemberSockets(Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getAllMembers(Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;)Ljava/util/Set;
    .locals 1
    .param p1, "p"    # Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;",
            ")",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/rep/impl/RepNodeImpl;",
            ">;"
        }
    .end annotation

    .line 948
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 949
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->includeMembers(Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;Ljava/util/Set;)V

    .line 950
    return-object v0
.end method

.method public getAllMonitorSockets()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .line 1284
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->MONITOR_PREDICATE:Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getAllMemberSockets(Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getArbiterMembers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/rep/impl/RepNodeImpl;",
            ">;"
        }
    .end annotation

    .line 1199
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1200
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->includeArbiterMembers(Ljava/util/Set;)V

    .line 1201
    return-object v0
.end method

.method public getChangeVersion()I
    .locals 1

    .line 615
    iget v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->changeVersion:I

    return v0
.end method

.method public getDataMembers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/rep/impl/RepNodeImpl;",
            ">;"
        }
    .end annotation

    .line 1091
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1092
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->includeDataMembers(Ljava/util/Set;)V

    .line 1093
    return-object v0
.end method

.method public getElectableGroupSize()I
    .locals 1

    .line 1382
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->ELECTABLE_PREDICATE:Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->countAllMembers(Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;)I

    move-result v0

    return v0
.end method

.method public getElectableMembers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/rep/impl/RepNodeImpl;",
            ">;"
        }
    .end annotation

    .line 1064
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1065
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->includeElectableMembers(Ljava/util/Set;)V

    .line 1066
    return-object v0
.end method

.method public getExternalMembers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/rep/impl/RepNodeImpl;",
            ">;"
        }
    .end annotation

    .line 1172
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1173
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->includeExternalMembers(Ljava/util/Set;)V

    .line 1174
    return-object v0
.end method

.method public getFormatVersion()I
    .locals 1

    .line 591
    iget v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->formatVersion:I

    return v0
.end method

.method public getMember(I)Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .locals 3
    .param p1, "nodeId"    # I

    .line 1311
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getNode(I)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v0

    .line 1312
    .local v0, "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    if-nez v0, :cond_0

    .line 1313
    const/4 v1, 0x0

    return-object v1

    .line 1315
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1319
    return-object v0

    .line 1316
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No longer a member:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1317
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method public getMember(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/MemberNotFoundException;
        }
    .end annotation

    .line 1335
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getNode(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v0

    .line 1336
    .local v0, "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    if-nez v0, :cond_0

    .line 1337
    const/4 v1, 0x0

    return-object v1

    .line 1339
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1343
    return-object v0

    .line 1340
    :cond_1
    new-instance v1, Lcom/sleepycat/je/rep/MemberNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Node no longer a member:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sleepycat/je/rep/MemberNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMember(Ljava/net/InetSocketAddress;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .locals 4
    .param p1, "socket"    # Ljava/net/InetSocketAddress;

    .line 1017
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    monitor-enter v0

    .line 1018
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 1019
    .local v2, "n":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1020
    monitor-exit v0

    return-object v2

    .line 1022
    .end local v2    # "n":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :cond_0
    goto :goto_0

    .line 1023
    :cond_1
    monitor-exit v0

    .line 1024
    const/4 v0, 0x0

    return-object v0

    .line 1023
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMinJEVersion()Lcom/sleepycat/je/JEVersion;
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->minJEVersion:Lcom/sleepycat/je/JEVersion;

    return-object v0
.end method

.method public getMonitorMembers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/rep/impl/RepNodeImpl;",
            ">;"
        }
    .end annotation

    .line 1121
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1122
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->includeMonitorMembers(Ljava/util/Set;)V

    .line 1123
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1406
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getNextNodeId()I
    .locals 2

    .line 657
    iget v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodeIdSequence:I

    const v1, 0x7ffffbff

    if-ge v0, v1, :cond_0

    .line 660
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodeIdSequence:I

    return v0

    .line 658
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Reached maximum node ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNode(I)Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .locals 3
    .param p1, "nodeId"    # I

    .line 1354
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    monitor-enter v0

    .line 1355
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    monitor-exit v0

    return-object v1

    .line 1356
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNode(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1367
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    monitor-enter v0

    .line 1368
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesByName:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    monitor-exit v0

    return-object v1

    .line 1369
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNodeIdSequence()I
    .locals 1

    .line 634
    iget v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodeIdSequence:I

    return v0
.end method

.method public getRemovedNodes()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/rep/impl/RepNodeImpl;",
            ">;"
        }
    .end annotation

    .line 1033
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1034
    .local v0, "ret":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    monitor-enter v1

    .line 1035
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 1036
    .local v3, "mi":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isQuorumAck()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1037
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1039
    .end local v3    # "mi":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :cond_0
    goto :goto_0

    .line 1040
    :cond_1
    monitor-exit v1

    .line 1041
    return-object v0

    .line 1040
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getSecondaryMembers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/rep/impl/RepNodeImpl;",
            ">;"
        }
    .end annotation

    .line 1161
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1162
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->includeSecondaryMembers(Ljava/util/Set;)V

    .line 1163
    return-object v0
.end method

.method public getUUID()Ljava/util/UUID;
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method public hasUnknownUUID()Z
    .locals 2

    .line 286
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->UNKNOWN_UUID:Ljava/util/UUID;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 376
    const/16 v0, 0x1f

    .line 377
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 378
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->changeVersion:I

    add-int/2addr v2, v3

    .line 379
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->groupName:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    .line 380
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v1, v3

    .line 381
    .end local v2    # "result":I
    .restart local v1    # "result":I
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    monitor-enter v2

    .line 382
    mul-int/lit8 v3, v1, 0x1f

    :try_start_0
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->hashCode()I

    move-result v5

    add-int v1, v3, v5

    .line 383
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->uuid:Ljava/util/UUID;

    if-nez v3, :cond_1

    goto :goto_1

    .line 386
    :cond_1
    invoke-virtual {v3}, Ljava/util/UUID;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v2, v4

    .line 387
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->formatVersion:I

    add-int/2addr v1, v3

    .line 388
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1

    .line 383
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public includeAllMembers(Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;Ljava/util/Set;)V
    .locals 4
    .param p1, "p"    # Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;",
            "Ljava/util/Set<",
            "-",
            "Lcom/sleepycat/je/rep/impl/RepNodeImpl;",
            ">;)V"
        }
    .end annotation

    .line 961
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<-Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    monitor-enter v0

    .line 962
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 963
    .local v2, "mi":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;->include(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 964
    :cond_0
    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 966
    .end local v2    # "mi":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :cond_1
    goto :goto_0

    .line 967
    :cond_2
    monitor-exit v0

    .line 968
    return-void

    .line 967
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public includeArbiterMembers(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "-",
            "Lcom/sleepycat/je/rep/impl/RepNodeImpl;",
            ">;)V"
        }
    .end annotation

    .line 1209
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<-Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->ARBITER_PREDICATE:Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;

    invoke-virtual {p0, v0, p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->includeMembers(Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;Ljava/util/Set;)V

    .line 1210
    return-void
.end method

.method public includeDataMembers(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "-",
            "Lcom/sleepycat/je/rep/impl/RepNodeImpl;",
            ">;)V"
        }
    .end annotation

    .line 1103
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<-Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl$8;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl$8;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupImpl;)V

    invoke-virtual {p0, v0, p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->includeAllMembers(Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;Ljava/util/Set;)V

    .line 1111
    return-void
.end method

.method public includeElectableMembers(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "-",
            "Lcom/sleepycat/je/rep/impl/RepNodeImpl;",
            ">;)V"
        }
    .end annotation

    .line 1075
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<-Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl$7;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl$7;-><init>(Lcom/sleepycat/je/rep/impl/RepGroupImpl;)V

    invoke-virtual {p0, v0, p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->includeAllMembers(Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;Ljava/util/Set;)V

    .line 1083
    return-void
.end method

.method public includeExternalMembers(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "-",
            "Lcom/sleepycat/je/rep/impl/RepNodeImpl;",
            ">;)V"
        }
    .end annotation

    .line 1191
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<-Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->EXTERNAL_PREDICATE:Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;

    invoke-virtual {p0, v0, p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->includeAllMembers(Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;Ljava/util/Set;)V

    .line 1192
    return-void
.end method

.method public includeMembers(Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;Ljava/util/Set;)V
    .locals 4
    .param p1, "p"    # Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;",
            "Ljava/util/Set<",
            "-",
            "Lcom/sleepycat/je/rep/impl/RepNodeImpl;",
            ">;)V"
        }
    .end annotation

    .line 996
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<-Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    monitor-enter v0

    .line 997
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 998
    .local v2, "n":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_1

    .line 999
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isQuorumAck()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_0

    .line 1000
    invoke-virtual {p1, v2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;->include(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1001
    :cond_0
    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1003
    .end local v2    # "n":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :cond_1
    goto :goto_0

    .line 1004
    :cond_2
    monitor-exit v0

    .line 1005
    return-void

    .line 1004
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public includeMonitorMembers(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "-",
            "Lcom/sleepycat/je/rep/impl/RepNodeImpl;",
            ">;)V"
        }
    .end annotation

    .line 1132
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<-Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->MONITOR_PREDICATE:Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;

    invoke-virtual {p0, v0, p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->includeMembers(Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;Ljava/util/Set;)V

    .line 1133
    return-void
.end method

.method public includeSecondaryMembers(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "-",
            "Lcom/sleepycat/je/rep/impl/RepNodeImpl;",
            ">;)V"
        }
    .end annotation

    .line 1183
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<-Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->SECONDARY_PREDICATE:Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;

    invoke-virtual {p0, v0, p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->includeAllMembers(Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;Ljava/util/Set;)V

    .line 1184
    return-void
.end method

.method public incrementChangeVersion()I
    .locals 1

    .line 625
    iget v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->changeVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->changeVersion:I

    return v0
.end method

.method public makeConsistent()V
    .locals 6

    .line 729
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    monitor-enter v0

    .line 730
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 731
    monitor-exit v0

    return-void

    .line 733
    :cond_0
    const/4 v1, -0x1

    .line 734
    .local v1, "computedNodeId":I
    const/4 v2, -0x1

    .line 735
    .local v2, "computedChangeVersion":I
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 737
    .local v4, "mi":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNodeId()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 738
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNodeId()I

    move-result v5

    move v1, v5

    .line 741
    :cond_1
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getChangeVersion()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 742
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getChangeVersion()I

    move-result v5

    move v2, v5

    .line 744
    .end local v4    # "mi":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :cond_2
    goto :goto_0

    .line 745
    :cond_3
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->setNodeIdSequence(I)V

    .line 746
    iput v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->changeVersion:I

    .line 747
    .end local v1    # "computedNodeId":I
    .end local v2    # "computedChangeVersion":I
    monitor-exit v0

    .line 748
    return-void

    .line 747
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeMember(Ljava/lang/String;Z)Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .locals 4
    .param p1, "nodeName"    # Ljava/lang/String;
    .param p2, "delete"    # Z

    .line 324
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getMember(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v0

    .line 325
    .local v0, "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    if-eqz v0, :cond_2

    .line 329
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/NodeType;->hasTransientId()Z

    move-result v1

    if-nez v1, :cond_1

    .line 333
    if-eqz p2, :cond_0

    .line 334
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    monitor-enter v1

    .line 335
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNodeId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesByName:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 339
    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->setRemoved(Z)V

    .line 340
    return-object v0

    .line 330
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove node with transient id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 326
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Node:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a member of the group."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method public removeTransientNode(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)V
    .locals 3
    .param p1, "node"    # Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 559
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/NodeType;->hasTransientId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->hasNullId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    monitor-enter v0

    .line 570
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNodeId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesByName:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    monitor-exit v0

    .line 573
    return-void

    .line 572
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 565
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to call removeTransientNode on a node with no ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to call removeTransientNode on a node without transient ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public serializeHex(I)Ljava/lang/String;
    .locals 6
    .param p1, "groupFormatVersion"    # I

    .line 793
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;-><init>(I)V

    .line 795
    .local v0, "groupBinding":Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 796
    .local v1, "buffer":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->objectToHex(Lcom/sleepycat/bind/tuple/TupleBinding;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    monitor-enter v2

    .line 798
    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 804
    .local v4, "mi":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    invoke-static {v4, p1}, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;->supportsObjectToEntry(Lcom/sleepycat/je/rep/impl/RepNodeImpl;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 806
    const-string/jumbo v5, "|"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    invoke-static {v4, p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->serializeHex(Lcom/sleepycat/je/rep/impl/RepNodeImpl;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    .end local v4    # "mi":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :cond_0
    goto :goto_0

    .line 810
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 810
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setMinJEVersion(Lcom/sleepycat/je/JEVersion;)V
    .locals 5
    .param p1, "newMinJEVersion"    # Lcom/sleepycat/je/JEVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/MinJEVersionUnsupportedException;
        }
    .end annotation

    .line 696
    if-eqz p1, :cond_5

    .line 700
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->minJEVersion:Lcom/sleepycat/je/JEVersion;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/JEVersion;->compareTo(Lcom/sleepycat/je/JEVersion;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 701
    return-void

    .line 703
    :cond_0
    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getMaxFormatVersion(Lcom/sleepycat/je/JEVersion;)I

    move-result v0

    .line 706
    .local v0, "newFormatVersion":I
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 707
    return-void

    .line 710
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getElectableMembers()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 711
    .local v2, "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v3

    .line 712
    .local v3, "nodeJEVersion":Lcom/sleepycat/je/JEVersion;
    if-eqz v3, :cond_3

    .line 713
    invoke-virtual {v3, p1}, Lcom/sleepycat/je/JEVersion;->compareTo(Lcom/sleepycat/je/JEVersion;)I

    move-result v4

    if-ltz v4, :cond_2

    goto :goto_1

    .line 714
    :cond_2
    new-instance v1, Lcom/sleepycat/je/rep/impl/MinJEVersionUnsupportedException;

    .line 715
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p1, v4, v3}, Lcom/sleepycat/je/rep/impl/MinJEVersionUnsupportedException;-><init>(Lcom/sleepycat/je/JEVersion;Ljava/lang/String;Lcom/sleepycat/je/JEVersion;)V

    throw v1

    .line 717
    .end local v2    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .end local v3    # "nodeJEVersion":Lcom/sleepycat/je/JEVersion;
    :cond_3
    :goto_1
    goto :goto_0

    .line 718
    :cond_4
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->minJEVersion:Lcom/sleepycat/je/JEVersion;

    .line 719
    iput v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->formatVersion:I

    .line 720
    return-void

    .line 697
    .end local v0    # "newFormatVersion":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The newMinJEVersion argument must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNodeIdSequence(I)V
    .locals 3
    .param p1, "nodeIdSequence"    # I

    .line 644
    if-ltz p1, :cond_0

    const v0, 0x7ffffbff

    if-gt p1, v0, :cond_0

    .line 648
    iput p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodeIdSequence:I

    .line 649
    return-void

    .line 645
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad nodeIdSequence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNodes(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sleepycat/je/rep/impl/RepNodeImpl;",
            ">;)V"
        }
    .end annotation

    .line 452
    .local p1, "nodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    monitor-enter v0

    .line 455
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    .line 456
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 457
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 458
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 459
    .local v2, "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/NodeType;->hasTransientId()Z

    move-result v3

    if-nez v3, :cond_0

    .line 460
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 461
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesByName:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    .end local v2    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :cond_0
    goto :goto_0

    .line 466
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    :cond_1
    if-eqz p1, :cond_4

    .line 467
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 468
    .restart local v2    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    .line 469
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNodeId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 470
    .local v3, "prevById":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesByName:Ljava/util/Map;

    .line 471
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 477
    .local v4, "prevByName":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    if-eqz v3, :cond_2

    .line 478
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 479
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesByName:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    :cond_2
    if-eqz v4, :cond_3

    .line 482
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNodeId()I

    move-result v5

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNodeId()I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 483
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getNodeId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    .end local v2    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .end local v3    # "prevById":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    .end local v4    # "prevByName":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    :cond_3
    goto :goto_1

    .line 488
    :cond_4
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesByName:Ljava/util/Map;

    .line 489
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 488
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 492
    monitor-exit v0

    .line 493
    return-void

    .line 488
    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Node maps indexed by ID and name differ: IDs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Names: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesByName:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p1    # "nodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    throw v1

    .line 492
    .restart local p1    # "nodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sleepycat/je/rep/impl/RepNodeImpl;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUUID(Ljava/util/UUID;)V
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;

    .line 301
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->hasUnknownUUID()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->uuid:Ljava/util/UUID;

    .line 306
    return-void

    .line 302
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected placeholder UUID, not "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1426
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Group info ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->groupName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1427
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n Format version: "

    .line 1428
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getFormatVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n Change version: "

    .line 1429
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getChangeVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n Max persist rep node ID: "

    .line 1430
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getNodeIdSequence()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n Min JE version: "

    .line 1431
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->minJEVersion:Lcom/sleepycat/je/JEVersion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    .line 1432
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1434
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    monitor-enter v1

    .line 1435
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->nodesById:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 1436
    .local v3, "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1437
    nop

    .end local v3    # "node":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    goto :goto_0

    .line 1438
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1439
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1438
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
