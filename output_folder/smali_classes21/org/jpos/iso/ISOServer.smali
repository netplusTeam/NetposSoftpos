.class public Lorg/jpos/iso/ISOServer;
.super Ljava/util/Observable;
.source "ISOServer.java"

# interfaces
.implements Lorg/jpos/util/LogSource;
.implements Ljava/lang/Runnable;
.implements Ljava/util/Observer;
.implements Lorg/jpos/iso/ISOServerMBean;
.implements Lorg/jpos/core/Configurable;
.implements Lorg/jpos/util/Loggeable;
.implements Lorg/jpos/iso/ISOServerSocketFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/iso/ISOServer$Session;,
        Lorg/jpos/iso/ISOServer$PermLogPolicy;
    }
.end annotation


# static fields
.field public static final CONNECT:I = 0x0

.field public static final DEFAULT_MAX_THREADS:I = 0x64

.field public static final LAST:Ljava/lang/String; = ":last"

.field public static final SIZEOF_CNT:I = 0x1


# instance fields
.field private backlog:I

.field private bindAddr:Ljava/net/InetAddress;

.field protected cfg:Lorg/jpos/core/Configuration;

.field private channels:Ljava/util/Map;

.field protected clientIncomingFilters:Ljava/util/Collection;

.field protected clientOutgoingFilters:Ljava/util/Collection;

.field clientPackager:Lorg/jpos/iso/ISOPackager;

.field protected clientSideChannel:Lorg/jpos/iso/ISOChannel;

.field private cnt:[I

.field protected ignoreISOExceptions:Z

.field private ipPermLogPolicy:Lorg/jpos/iso/ISOServer$PermLogPolicy;

.field protected lastTxn:J

.field protected listeners:Ljava/util/Collection;

.field protected logger:Lorg/jpos/util/Logger;

.field name:Ljava/lang/String;

.field pool:Lorg/jpos/util/ThreadPool;

.field port:I

.field protected realm:Ljava/lang/String;

.field protected realmChannel:Ljava/lang/String;

.field protected serverListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jpos/iso/ISOServerEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private serverSocket:Ljava/net/ServerSocket;

.field private shutdown:Z

.field protected socketFactory:Lorg/jpos/iso/ISOServerSocketFactory;

.field private specificIPPerms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private wildcardAllow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wildcardDeny:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILorg/jpos/iso/ServerChannel;Lorg/jpos/util/ThreadPool;)V
    .locals 3
    .param p1, "port"    # I
    .param p2, "clientSide"    # Lorg/jpos/iso/ServerChannel;
    .param p3, "pool"    # Lorg/jpos/util/ThreadPool;

    .line 108
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jpos/iso/ISOServer;->specificIPPerms:Ljava/util/Map;

    .line 76
    sget-object v0, Lorg/jpos/iso/ISOServer$PermLogPolicy;->ALLOW_NOLOG:Lorg/jpos/iso/ISOServer$PermLogPolicy;

    iput-object v0, p0, Lorg/jpos/iso/ISOServer;->ipPermLogPolicy:Lorg/jpos/iso/ISOServer$PermLogPolicy;

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jpos/iso/ISOServer;->lastTxn:J

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/ISOServer;->socketFactory:Lorg/jpos/iso/ISOServerSocketFactory;

    .line 96
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jpos/iso/ISOServer;->shutdown:Z

    .line 100
    iput-object v0, p0, Lorg/jpos/iso/ISOServer;->serverListeners:Ljava/util/List;

    .line 109
    iput p1, p0, Lorg/jpos/iso/ISOServer;->port:I

    .line 110
    iput-object p2, p0, Lorg/jpos/iso/ISOServer;->clientSideChannel:Lorg/jpos/iso/ISOChannel;

    .line 111
    invoke-interface {p2}, Lorg/jpos/iso/ServerChannel;->getPackager()Lorg/jpos/iso/ISOPackager;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/ISOServer;->clientPackager:Lorg/jpos/iso/ISOPackager;

    .line 112
    instance-of v0, p2, Lorg/jpos/iso/FilteredChannel;

    if-eqz v0, :cond_0

    .line 113
    move-object v0, p2

    check-cast v0, Lorg/jpos/iso/FilteredChannel;

    .line 114
    .local v0, "fc":Lorg/jpos/iso/FilteredChannel;
    invoke-interface {v0}, Lorg/jpos/iso/FilteredChannel;->getOutgoingFilters()Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/iso/ISOServer;->clientOutgoingFilters:Ljava/util/Collection;

    .line 115
    invoke-interface {v0}, Lorg/jpos/iso/FilteredChannel;->getIncomingFilters()Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/iso/ISOServer;->clientIncomingFilters:Ljava/util/Collection;

    .line 117
    .end local v0    # "fc":Lorg/jpos/iso/FilteredChannel;
    :cond_0
    const/4 v0, 0x1

    if-nez p3, :cond_1

    new-instance v1, Lorg/jpos/util/ThreadPool;

    const/16 v2, 0x64

    invoke-direct {v1, v0, v2}, Lorg/jpos/util/ThreadPool;-><init>(II)V

    goto :goto_0

    :cond_1
    move-object v1, p3

    :goto_0
    iput-object v1, p0, Lorg/jpos/iso/ISOServer;->pool:Lorg/jpos/util/ThreadPool;

    .line 119
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/jpos/iso/ISOServer;->listeners:Ljava/util/Collection;

    .line 120
    const-string v1, ""

    iput-object v1, p0, Lorg/jpos/iso/ISOServer;->name:Ljava/lang/String;

    .line 121
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/jpos/iso/ISOServer;->channels:Ljava/util/Map;

    .line 122
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jpos/iso/ISOServer;->cnt:[I

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jpos/iso/ISOServer;->serverListeners:Ljava/util/List;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lorg/jpos/iso/ISOServer;)V
    .locals 0
    .param p0, "x0"    # Lorg/jpos/iso/ISOServer;

    .line 61
    invoke-direct {p0}, Lorg/jpos/iso/ISOServer;->shutdownServer()V

    return-void
.end method

.method static synthetic access$100(Lorg/jpos/iso/ISOServer;)V
    .locals 0
    .param p0, "x0"    # Lorg/jpos/iso/ISOServer;

    .line 61
    invoke-direct {p0}, Lorg/jpos/iso/ISOServer;->shutdownChannels()V

    return-void
.end method

.method static synthetic access$200(Lorg/jpos/iso/ISOServer;)V
    .locals 0
    .param p0, "x0"    # Lorg/jpos/iso/ISOServer;

    .line 61
    invoke-virtual {p0}, Lorg/jpos/iso/ISOServer;->setChanged()V

    return-void
.end method

.method static synthetic access$300(Lorg/jpos/iso/ISOServer;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/iso/ISOServer;

    .line 61
    iget-object v0, p0, Lorg/jpos/iso/ISOServer;->specificIPPerms:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lorg/jpos/iso/ISOServer;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/iso/ISOServer;

    .line 61
    iget-object v0, p0, Lorg/jpos/iso/ISOServer;->wildcardAllow:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lorg/jpos/iso/ISOServer;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/iso/ISOServer;

    .line 61
    iget-object v0, p0, Lorg/jpos/iso/ISOServer;->wildcardDeny:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lorg/jpos/iso/ISOServer;)Lorg/jpos/iso/ISOServer$PermLogPolicy;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/iso/ISOServer;

    .line 61
    iget-object v0, p0, Lorg/jpos/iso/ISOServer;->ipPermLogPolicy:Lorg/jpos/iso/ISOServer$PermLogPolicy;

    return-object v0
.end method

.method private append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 786
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 787
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 788
    return-void
.end method

.method private configureConnectionPerms()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 152
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "hasAllows":Z
    const/4 v2, 0x0

    .line 154
    .local v2, "hasDenies":Z
    iget-object v3, v0, Lorg/jpos/iso/ISOServer;->cfg:Lorg/jpos/core/Configuration;

    const-string v4, "allow"

    invoke-interface {v3, v4}, Lorg/jpos/core/Configuration;->getAll(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "allows":[Ljava/lang/String;
    const-string v4, "[*]"

    const/4 v5, -0x1

    const/16 v6, 0x2a

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_2

    array-length v9, v3

    if-lez v9, :cond_2

    .line 156
    const/4 v1, 0x1

    .line 158
    array-length v9, v3

    move v10, v8

    :goto_0
    if-ge v10, v9, :cond_2

    aget-object v11, v3, v10

    .line 159
    .local v11, "allowIP":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 161
    invoke-virtual {v11, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-ne v12, v5, :cond_0

    .line 162
    iget-object v12, v0, Lorg/jpos/iso/ISOServer;->specificIPPerms:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v12, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 164
    :cond_0
    iget-object v12, v0, Lorg/jpos/iso/ISOServer;->wildcardAllow:Ljava/util/List;

    if-nez v12, :cond_1

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    iput-object v12, v0, Lorg/jpos/iso/ISOServer;->wildcardAllow:Ljava/util/List;

    .line 165
    invoke-virtual {v11, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 166
    .local v12, "parts":[Ljava/lang/String;
    iget-object v13, v0, Lorg/jpos/iso/ISOServer;->wildcardAllow:Ljava/util/List;

    aget-object v14, v12, v8

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    .end local v11    # "allowIP":Ljava/lang/String;
    .end local v12    # "parts":[Ljava/lang/String;
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 171
    :cond_2
    iget-object v9, v0, Lorg/jpos/iso/ISOServer;->cfg:Lorg/jpos/core/Configuration;

    const-string v10, "deny"

    invoke-interface {v9, v10}, Lorg/jpos/core/Configuration;->getAll(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 172
    .local v9, "denies":[Ljava/lang/String;
    if-eqz v9, :cond_8

    array-length v10, v9

    if-lez v10, :cond_8

    .line 173
    const/4 v2, 0x1

    .line 175
    array-length v10, v9

    move v11, v8

    :goto_2
    if-ge v11, v10, :cond_8

    aget-object v12, v9, v11

    .line 176
    .local v12, "denyIP":Ljava/lang/String;
    const/4 v13, 0x0

    .line 178
    .local v13, "conflict":Z
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 179
    invoke-virtual {v12, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-ne v14, v5, :cond_4

    .line 180
    iget-object v14, v0, Lorg/jpos/iso/ISOServer;->specificIPPerms:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-interface {v14, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    .line 181
    .local v14, "oldVal":Ljava/lang/Boolean;
    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v14, v15, :cond_3

    move v15, v7

    goto :goto_3

    :cond_3
    move v15, v8

    :goto_3
    move v13, v15

    .line 182
    .end local v14    # "oldVal":Ljava/lang/Boolean;
    goto :goto_4

    .line 183
    :cond_4
    iget-object v14, v0, Lorg/jpos/iso/ISOServer;->wildcardDeny:Ljava/util/List;

    if-nez v14, :cond_5

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    iput-object v14, v0, Lorg/jpos/iso/ISOServer;->wildcardDeny:Ljava/util/List;

    .line 184
    invoke-virtual {v12, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 185
    .local v14, "parts":[Ljava/lang/String;
    iget-object v15, v0, Lorg/jpos/iso/ISOServer;->wildcardAllow:Ljava/util/List;

    if-eqz v15, :cond_6

    aget-object v5, v14, v8

    invoke-interface {v15, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 186
    const/4 v13, 0x1

    goto :goto_4

    .line 188
    :cond_6
    iget-object v5, v0, Lorg/jpos/iso/ISOServer;->wildcardDeny:Ljava/util/List;

    aget-object v15, v14, v8

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    .end local v14    # "parts":[Ljava/lang/String;
    :goto_4
    if-nez v13, :cond_7

    .line 175
    .end local v12    # "denyIP":Ljava/lang/String;
    .end local v13    # "conflict":Z
    add-int/lit8 v11, v11, 0x1

    const/4 v5, -0x1

    goto :goto_2

    .line 192
    .restart local v12    # "denyIP":Ljava/lang/String;
    .restart local v13    # "conflict":Z
    :cond_7
    new-instance v4, Lorg/jpos/core/ConfigurationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Conflicting IP permission in \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 193
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/iso/ISOServer;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' configuration: \'deny\' "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " while having an identical previous \'allow\'."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 200
    .end local v12    # "denyIP":Ljava/lang/String;
    .end local v13    # "conflict":Z
    :cond_8
    if-nez v1, :cond_9

    if-nez v2, :cond_9

    sget-object v4, Lorg/jpos/iso/ISOServer$PermLogPolicy;->ALLOW_NOLOG:Lorg/jpos/iso/ISOServer$PermLogPolicy;

    goto :goto_5

    :cond_9
    if-eqz v1, :cond_a

    if-nez v2, :cond_a

    sget-object v4, Lorg/jpos/iso/ISOServer$PermLogPolicy;->DENY_LOG:Lorg/jpos/iso/ISOServer$PermLogPolicy;

    goto :goto_5

    :cond_a
    if-nez v1, :cond_b

    if-eqz v2, :cond_b

    sget-object v4, Lorg/jpos/iso/ISOServer$PermLogPolicy;->ALLOW_LOG:Lorg/jpos/iso/ISOServer$PermLogPolicy;

    goto :goto_5

    :cond_b
    sget-object v4, Lorg/jpos/iso/ISOServer$PermLogPolicy;->DENY_LOGWARNING:Lorg/jpos/iso/ISOServer$PermLogPolicy;

    :goto_5
    iput-object v4, v0, Lorg/jpos/iso/ISOServer;->ipPermLogPolicy:Lorg/jpos/iso/ISOServer$PermLogPolicy;

    .line 204
    return-void
.end method

.method public static getServer(Ljava/lang/String;)Lorg/jpos/iso/ISOServer;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/util/NameRegistrar$NotFoundException;
        }
    .end annotation

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "server."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/ISOServer;

    return-object v0
.end method

.method private purgeChannels()V
    .locals 5

    .line 269
    iget-object v0, p0, Lorg/jpos/iso/ISOServer;->channels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 270
    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 272
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 273
    .local v2, "ref":Ljava/lang/ref/WeakReference;
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/iso/ISOChannel;

    .line 274
    .local v3, "c":Lorg/jpos/iso/ISOChannel;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/jpos/iso/ISOChannel;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 275
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 277
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;
    .end local v3    # "c":Lorg/jpos/iso/ISOChannel;
    :cond_1
    goto :goto_0

    .line 278
    :cond_2
    return-void
.end method

.method private relax()V
    .locals 2

    .line 542
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 544
    :goto_1
    return-void
.end method

.method private shutdownChannels()V
    .locals 7

    .line 253
    iget-object v0, p0, Lorg/jpos/iso/ISOServer;->channels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 254
    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 256
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 257
    .local v2, "ref":Ljava/lang/ref/WeakReference;
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/iso/ISOChannel;

    .line 258
    .local v3, "c":Lorg/jpos/iso/ISOChannel;
    if-eqz v3, :cond_0

    .line 260
    :try_start_0
    invoke-interface {v3}, Lorg/jpos/iso/ISOChannel;->disconnect()V

    .line 261
    new-instance v4, Lorg/jpos/iso/ISOServerClientDisconnectEvent;

    invoke-direct {v4, p0, v3}, Lorg/jpos/iso/ISOServerClientDisconnectEvent;-><init>(Ljava/lang/Object;Lorg/jpos/iso/ISOChannel;)V

    invoke-virtual {p0, v4}, Lorg/jpos/iso/ISOServer;->fireEvent(Ljava/util/EventObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    goto :goto_1

    .line 262
    :catch_0
    move-exception v4

    .line 263
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lorg/jpos/util/LogEvent;

    const-string v6, "shutdown"

    invoke-direct {v5, p0, v6, v4}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v5}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 266
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;
    .end local v3    # "c":Lorg/jpos/iso/ISOChannel;
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    goto :goto_0

    .line 267
    :cond_1
    return-void
.end method

.method private shutdownServer()V
    .locals 3

    .line 240
    :try_start_0
    iget-object v0, p0, Lorg/jpos/iso/ISOServer;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 242
    new-instance v0, Lorg/jpos/iso/ISOServerShutdownEvent;

    invoke-direct {v0, p0}, Lorg/jpos/iso/ISOServerShutdownEvent;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/jpos/iso/ISOServer;->fireEvent(Ljava/util/EventObject;)V

    .line 244
    :cond_0
    iget-object v0, p0, Lorg/jpos/iso/ISOServer;->pool:Lorg/jpos/util/ThreadPool;

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {v0}, Lorg/jpos/util/ThreadPool;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_1
    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/jpos/iso/ISOServerShutdownEvent;

    invoke-direct {v1, p0}, Lorg/jpos/iso/ISOServerShutdownEvent;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lorg/jpos/iso/ISOServer;->fireEvent(Ljava/util/EventObject;)V

    .line 249
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "shutdown"

    invoke-direct {v1, p0, v2, v0}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 251
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method


# virtual methods
.method public addISORequestListener(Lorg/jpos/iso/ISORequestListener;)V
    .locals 1
    .param p1, "l"    # Lorg/jpos/iso/ISORequestListener;

    .line 212
    iget-object v0, p0, Lorg/jpos/iso/ISOServer;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 213
    return-void
.end method

.method public declared-synchronized addServerEventListener(Lorg/jpos/iso/ISOServerEventListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/jpos/iso/ISOServerEventListener;

    monitor-enter p0

    .line 791
    :try_start_0
    iget-object v0, p0, Lorg/jpos/iso/ISOServer;->serverListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    monitor-exit p0

    return-void

    .line 790
    .end local p0    # "this":Lorg/jpos/iso/ISOServer;
    .end local p1    # "listener":Lorg/jpos/iso/ISOServerEventListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public createServerSocket(I)Ljava/net/ServerSocket;
    .locals 3
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    .line 285
    .local v0, "ss":Ljava/net/ServerSocket;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 286
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lorg/jpos/iso/ISOServer;->bindAddr:Ljava/net/InetAddress;

    invoke-direct {v1, v2, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget v2, p0, Lorg/jpos/iso/ISOServer;->backlog:I

    invoke-virtual {v0, v1, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    nop

    .line 296
    return-object v0

    .line 291
    :catch_0
    move-exception v1

    .line 292
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 293
    new-instance v2, Lorg/jpos/iso/ISOServerShutdownEvent;

    invoke-direct {v2, p0}, Lorg/jpos/iso/ISOServerShutdownEvent;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lorg/jpos/iso/ISOServer;->fireEvent(Ljava/util/EventObject;)V

    .line 294
    throw v1

    .line 287
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 288
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 289
    new-instance v2, Lorg/jpos/iso/ISOServerShutdownEvent;

    invoke-direct {v2, p0}, Lorg/jpos/iso/ISOServerShutdownEvent;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lorg/jpos/iso/ISOServer;->fireEvent(Ljava/util/EventObject;)V

    .line 290
    throw v1
.end method

.method protected createSession(Lorg/jpos/iso/ServerChannel;)Lorg/jpos/iso/ISOServer$Session;
    .locals 1
    .param p1, "channel"    # Lorg/jpos/iso/ServerChannel;

    .line 304
    new-instance v0, Lorg/jpos/iso/ISOServer$Session;

    invoke-direct {v0, p0, p1}, Lorg/jpos/iso/ISOServer$Session;-><init>(Lorg/jpos/iso/ISOServer;Lorg/jpos/iso/ServerChannel;)V

    return-object v0
.end method

.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 10
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jpos/iso/ISOServer;->getCountersAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Lorg/jpos/iso/ISOServer;->channels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 765
    .local v0, "iter":Ljava/util/Iterator;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 766
    .local v1, "inner":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 767
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 768
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 769
    .local v4, "ref":Ljava/lang/ref/WeakReference;
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jpos/iso/ISOChannel;

    .line 770
    .local v5, "c":Lorg/jpos/iso/ISOChannel;
    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    const-string v7, ":last"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v5}, Lorg/jpos/iso/ISOChannel;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    instance-of v6, v5, Lorg/jpos/iso/BaseChannel;

    if-eqz v6, :cond_0

    .line 771
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 772
    .local v6, "sb":Ljava/lang/StringBuilder;
    move-object v7, v5

    check-cast v7, Lorg/jpos/iso/BaseChannel;

    invoke-virtual {v7}, Lorg/jpos/iso/BaseChannel;->getCounters()[I

    move-result-object v7

    .line 773
    .local v7, "cc":[I
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 775
    const-string v8, ": rx="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    const/4 v8, 0x2

    aget v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    const-string v8, ", tx="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    const/4 v8, 0x1

    aget v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    const-string v8, ", last="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    iget-wide v8, p0, Lorg/jpos/iso/ISOServer;->lastTxn:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 766
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "ref":Ljava/lang/ref/WeakReference;
    .end local v5    # "c":Lorg/jpos/iso/ISOChannel;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "cc":[I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 784
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public declared-synchronized fireEvent(Ljava/util/EventObject;)V
    .locals 3
    .param p1, "event"    # Ljava/util/EventObject;

    monitor-enter p0

    .line 798
    :try_start_0
    iget-object v0, p0, Lorg/jpos/iso/ISOServer;->serverListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/iso/ISOServerEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    .local v1, "l":Lorg/jpos/iso/ISOServerEventListener;
    :try_start_1
    invoke-interface {v1, p1}, Lorg/jpos/iso/ISOServerEventListener;->handleISOServerEvent(Ljava/util/EventObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 812
    goto :goto_1

    .line 802
    .end local p0    # "this":Lorg/jpos/iso/ISOServer;
    :catch_0
    move-exception v2

    .line 814
    .end local v1    # "l":Lorg/jpos/iso/ISOServerEventListener;
    :goto_1
    goto :goto_0

    .line 815
    :cond_0
    monitor-exit p0

    return-void

    .line 797
    .end local p1    # "event":Ljava/util/EventObject;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getActiveConnections()I
    .locals 1

    .line 646
    iget-object v0, p0, Lorg/jpos/iso/ISOServer;->pool:Lorg/jpos/util/ThreadPool;

    invoke-virtual {v0}, Lorg/jpos/util/ThreadPool;->getActiveCount()I

    move-result v0

    return v0
.end method

.method public getConnectionCount()I
    .locals 2

    .line 621
    iget-object v0, p0, Lorg/jpos/iso/ISOServer;->cnt:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getConnections()I
    .locals 2

    .line 736
    invoke-virtual {p0}, Lorg/jpos/iso/ISOServer;->getCounters()[I

    move-result-object v0

    .line 737
    .local v0, "cnt":[I
    const/4 v1, 0x2

    aget v1, v0, v1

    return v1
.end method

.method public getCounters()[I
    .locals 12

    .line 706
    iget-object v0, p0, Lorg/jpos/iso/ISOServer;->channels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 707
    .local v0, "iter":Ljava/util/Iterator;
    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 708
    .local v1, "cnt":[I
    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 709
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 710
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 711
    .local v5, "entry":Ljava/util/Map$Entry;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 712
    .local v6, "ref":Ljava/lang/ref/WeakReference;
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jpos/iso/ISOChannel;

    .line 713
    .local v7, "c":Lorg/jpos/iso/ISOChannel;
    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    const-string v9, ":last"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-interface {v7}, Lorg/jpos/iso/ISOChannel;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 714
    aget v8, v1, v2

    const/4 v9, 0x1

    add-int/2addr v8, v9

    aput v8, v1, v2

    .line 715
    instance-of v8, v7, Lorg/jpos/iso/BaseChannel;

    if-eqz v8, :cond_0

    .line 716
    move-object v8, v7

    check-cast v8, Lorg/jpos/iso/BaseChannel;

    invoke-virtual {v8}, Lorg/jpos/iso/BaseChannel;->getCounters()[I

    move-result-object v8

    .line 717
    .local v8, "cc":[I
    aget v10, v1, v3

    aget v11, v8, v2

    add-int/2addr v10, v11

    aput v10, v1, v3

    .line 718
    aget v10, v1, v9

    aget v11, v8, v9

    add-int/2addr v10, v11

    aput v10, v1, v9

    .line 709
    .end local v5    # "entry":Ljava/util/Map$Entry;
    .end local v6    # "ref":Ljava/lang/ref/WeakReference;
    .end local v7    # "c":Lorg/jpos/iso/ISOChannel;
    .end local v8    # "cc":[I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 722
    .end local v4    # "i":I
    :cond_1
    return-object v1
.end method

.method public getCountersAsString()Ljava/lang/String;
    .locals 6

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 687
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/jpos/iso/ISOServer;->getCounters()[I

    move-result-object v1

    .line 688
    .local v1, "cnt":[I
    const-string v2, "connected="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    const/4 v2, 0x2

    aget v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    const-string v2, ", rx="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    const-string v2, ", tx="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    const/4 v2, 0x1

    aget v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    const-string v2, ", last="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    iget-wide v2, p0, Lorg/jpos/iso/ISOServer;->lastTxn:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 696
    iget-wide v2, p0, Lorg/jpos/iso/ISOServer;->lastTxn:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 697
    const-string v2, ", idle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/jpos/iso/ISOServer;->lastTxn:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 699
    const-string v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getCountersAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "isoChannelName"    # Ljava/lang/String;

    .line 751
    invoke-virtual {p0, p1}, Lorg/jpos/iso/ISOServer;->getISOChannel(Ljava/lang/String;)Lorg/jpos/iso/ISOChannel;

    move-result-object v0

    .line 752
    .local v0, "channel":Lorg/jpos/iso/ISOChannel;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 753
    .local v1, "sb":Ljava/lang/StringBuffer;
    instance-of v2, v0, Lorg/jpos/iso/BaseChannel;

    if-eqz v2, :cond_0

    .line 754
    move-object v2, v0

    check-cast v2, Lorg/jpos/iso/BaseChannel;

    invoke-virtual {v2}, Lorg/jpos/iso/BaseChannel;->getCounters()[I

    move-result-object v2

    .line 755
    .local v2, "counters":[I
    const/4 v3, 0x2

    aget v3, v2, v3

    const-string v4, "rx="

    invoke-direct {p0, v1, v4, v3}, Lorg/jpos/iso/ISOServer;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 756
    const/4 v3, 0x1

    aget v3, v2, v3

    const-string v4, ", tx="

    invoke-direct {p0, v1, v4, v3}, Lorg/jpos/iso/ISOServer;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 757
    const/4 v3, 0x0

    aget v3, v2, v3

    const-string v4, ", connects="

    invoke-direct {p0, v1, v4, v3}, Lorg/jpos/iso/ISOServer;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 759
    .end local v2    # "counters":[I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getISOChannel(Ljava/lang/String;)Lorg/jpos/iso/ISOChannel;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 660
    iget-object v0, p0, Lorg/jpos/iso/ISOServer;->channels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 661
    .local v0, "ref":Ljava/lang/ref/WeakReference;
    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/iso/ISOChannel;

    return-object v1

    .line 664
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getISOChannelNames()Ljava/lang/String;
    .locals 8

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 671
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/jpos/iso/ISOServer;->channels:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 672
    .local v1, "iter":Ljava/util/Iterator;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 673
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 674
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 675
    .local v4, "ref":Ljava/lang/ref/WeakReference;
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jpos/iso/ISOChannel;

    .line 676
    .local v5, "c":Lorg/jpos/iso/ISOChannel;
    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    const-string v7, ":last"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v5}, Lorg/jpos/iso/ISOChannel;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 677
    if-lez v2, :cond_0

    .line 678
    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 680
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 672
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "ref":Ljava/lang/ref/WeakReference;
    .end local v5    # "c":Lorg/jpos/iso/ISOChannel;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 683
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getIdleCount()I
    .locals 1

    .line 639
    iget-object v0, p0, Lorg/jpos/iso/ISOServer;->pool:Lorg/jpos/util/ThreadPool;

    invoke-virtual {v0}, Lorg/jpos/util/ThreadPool;->getIdleCount()I

    move-result v0

    return v0
.end method

.method public getIdleTimeInMillis()J
    .locals 4

    .line 745
    iget-wide v0, p0, Lorg/jpos/iso/ISOServer;->lastTxn:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/jpos/iso/ISOServer;->lastTxn:J

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getJobCount()I
    .locals 1

    .line 627
    iget-object v0, p0, Lorg/jpos/iso/ISOServer;->pool:Lorg/jpos/util/ThreadPool;

    invoke-virtual {v0}, Lorg/jpos/util/ThreadPool;->getJobCount()I

    move-result v0

    return v0
.end method

.method public getLastConnectedISOChannel()Lorg/jpos/iso/ISOChannel;
    .locals 1

    .line 653
    const-string v0, ":last"

    invoke-virtual {p0, v0}, Lorg/jpos/iso/ISOServer;->getISOChannel(Ljava/lang/String;)Lorg/jpos/iso/ISOChannel;

    move-result-object v0

    return-object v0
.end method

.method public getLastTxnTimestampInMillis()J
    .locals 2

    .line 741
    iget-wide v0, p0, Lorg/jpos/iso/ISOServer;->lastTxn:J

    return-wide v0
.end method

.method public getLogger()Lorg/jpos/util/Logger;
    .locals 1

    .line 583
    iget-object v0, p0, Lorg/jpos/iso/ISOServer;->logger:Lorg/jpos/util/Logger;

    return-object v0
.end method

.method public getMaxPoolSize()I
    .locals 1

    .line 635
    iget-object v0, p0, Lorg/jpos/iso/ISOServer;->pool:Lorg/jpos/util/ThreadPool;

    invoke-virtual {v0}, Lorg/jpos/util/ThreadPool;->getMaxPoolSize()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 569
    iget-object v0, p0, Lorg/jpos/iso/ISOServer;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPendingCount()I
    .locals 1

    .line 643
    iget-object v0, p0, Lorg/jpos/iso/ISOServer;->pool:Lorg/jpos/util/ThreadPool;

    invoke-virtual {v0}, Lorg/jpos/util/ThreadPool;->getPendingCount()I

    move-result v0

    return v0
.end method

.method public getPoolSize()I
    .locals 1

    .line 631
    iget-object v0, p0, Lorg/jpos/iso/ISOServer;->pool:Lorg/jpos/util/ThreadPool;

    invoke-virtual {v0}, Lorg/jpos/util/ThreadPool;->getPoolSize()I

    move-result v0

    return v0
.end method

.method public getPort()I
    .locals 1

    .line 609
    iget v0, p0, Lorg/jpos/iso/ISOServer;->port:I

    return v0
.end method

.method public getRXCounter()I
    .locals 2

    .line 732
    invoke-virtual {p0}, Lorg/jpos/iso/ISOServer;->getCounters()[I

    move-result-object v0

    .line 733
    .local v0, "cnt":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 579
    iget-object v0, p0, Lorg/jpos/iso/ISOServer;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public getSocketFactory()Lorg/jpos/iso/ISOServerSocketFactory;
    .locals 1

    .line 596
    iget-object v0, p0, Lorg/jpos/iso/ISOServer;->socketFactory:Lorg/jpos/iso/ISOServerSocketFactory;

    return-object v0
.end method

.method public getTXCounter()I
    .locals 2

    .line 727
    invoke-virtual {p0}, Lorg/jpos/iso/ISOServer;->getCounters()[I

    move-result-object v0

    .line 728
    .local v0, "cnt":[I
    const/4 v1, 0x1

    aget v1, v0, v1

    return v1
.end method

.method public removeISORequestListener(Lorg/jpos/iso/ISORequestListener;)V
    .locals 1
    .param p1, "l"    # Lorg/jpos/iso/ISORequestListener;

    .line 220
    iget-object v0, p0, Lorg/jpos/iso/ISOServer;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method public declared-synchronized removeServerEventListener(Lorg/jpos/iso/ISOServerEventListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/jpos/iso/ISOServerEventListener;

    monitor-enter p0

    .line 794
    :try_start_0
    iget-object v0, p0, Lorg/jpos/iso/ISOServer;->serverListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    monitor-exit p0

    return-void

    .line 793
    .end local p0    # "this":Lorg/jpos/iso/ISOServer;
    .end local p1    # "listener":Lorg/jpos/iso/ISOServerEventListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public resetCounters()V
    .locals 2

    .line 613
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jpos/iso/ISOServer;->cnt:[I

    .line 614
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jpos/iso/ISOServer;->lastTxn:J

    .line 615
    return-void
.end method

.method public run()V
    .locals 6

    .line 467
    const-string v0, "iso-server"

    iget-object v1, p0, Lorg/jpos/iso/ISOServer;->socketFactory:Lorg/jpos/iso/ISOServerSocketFactory;

    if-nez v1, :cond_0

    .line 468
    iput-object p0, p0, Lorg/jpos/iso/ISOServer;->socketFactory:Lorg/jpos/iso/ISOServerSocketFactory;

    .line 470
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lorg/jpos/iso/ISOServer;->shutdown:Z

    if-nez v1, :cond_b

    .line 472
    :try_start_0
    iget-object v1, p0, Lorg/jpos/iso/ISOServer;->socketFactory:Lorg/jpos/iso/ISOServerSocketFactory;

    iget v2, p0, Lorg/jpos/iso/ISOServer;->port:I

    invoke-interface {v1, v2}, Lorg/jpos/iso/ISOServerSocketFactory;->createServerSocket(I)Ljava/net/ServerSocket;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/iso/ISOServer;->serverSocket:Ljava/net/ServerSocket;

    .line 474
    new-instance v1, Lorg/jpos/util/LogEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listening on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jpos/iso/ISOServer;->bindAddr:Ljava/net/InetAddress;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/jpos/iso/ISOServer;->bindAddr:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, "port "

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/jpos/iso/ISOServer;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/jpos/iso/ISOServer;->backlog:I

    if-lez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " backlog="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/jpos/iso/ISOServer;->backlog:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    const-string v3, ""

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 478
    :goto_3
    iget-boolean v1, p0, Lorg/jpos/iso/ISOServer;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_a

    .line 480
    :try_start_1
    iget-object v1, p0, Lorg/jpos/iso/ISOServer;->pool:Lorg/jpos/util/ThreadPool;

    invoke-virtual {v1}, Lorg/jpos/util/ThreadPool;->getAvailableCount()I

    move-result v1
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v1, :cond_6

    .line 482
    :try_start_2
    iget-object v1, p0, Lorg/jpos/iso/ISOServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 483
    new-instance v1, Lorg/jpos/iso/ISOServerShutdownEvent;

    invoke-direct {v1, p0}, Lorg/jpos/iso/ISOServerShutdownEvent;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lorg/jpos/iso/ISOServer;->fireEvent(Ljava/util/EventObject;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 487
    goto :goto_4

    .line 484
    :catch_0
    move-exception v1

    .line 485
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v2, Lorg/jpos/util/LogEvent;

    invoke-direct {v2, p0, v0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 486
    invoke-direct {p0}, Lorg/jpos/iso/ISOServer;->relax()V

    .line 489
    .end local v1    # "e":Ljava/io/IOException;
    :goto_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Lorg/jpos/iso/ISOServer;->pool:Lorg/jpos/util/ThreadPool;

    invoke-virtual {v2}, Lorg/jpos/util/ThreadPool;->getIdleCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 490
    iget-boolean v2, p0, Lorg/jpos/iso/ISOServer;->shutdown:Z

    if-eqz v2, :cond_3

    .line 491
    goto/16 :goto_6

    .line 493
    :cond_3
    rem-int/lit16 v2, v1, 0xf0

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/jpos/iso/ISOServer;->cfg:Lorg/jpos/core/Configuration;

    const-string v3, "pool-exhaustion-warning"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 494
    new-instance v2, Lorg/jpos/util/LogEvent;

    const-string v3, "warn"

    invoke-direct {v2, p0, v3}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 495
    .local v2, "evt":Lorg/jpos/util/LogEvent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pool exhausted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jpos/iso/ISOServer;->serverSocket:Ljava/net/ServerSocket;

    .line 496
    invoke-virtual {v4}, Ljava/net/ServerSocket;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 495
    invoke-virtual {v2, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 498
    iget-object v3, p0, Lorg/jpos/iso/ISOServer;->pool:Lorg/jpos/util/ThreadPool;

    invoke-virtual {v2, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 499
    invoke-static {v2}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 501
    .end local v2    # "evt":Lorg/jpos/util/LogEvent;
    :cond_4
    const-wide/16 v2, 0xfa

    invoke-static {v2, v3}, Lorg/jpos/iso/ISOUtil;->sleep(J)V

    .line 489
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 503
    .end local v1    # "i":I
    :cond_5
    iget-object v1, p0, Lorg/jpos/iso/ISOServer;->socketFactory:Lorg/jpos/iso/ISOServerSocketFactory;

    iget v2, p0, Lorg/jpos/iso/ISOServer;->port:I

    invoke-interface {v1, v2}, Lorg/jpos/iso/ISOServerSocketFactory;->createServerSocket(I)Ljava/net/ServerSocket;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/iso/ISOServer;->serverSocket:Ljava/net/ServerSocket;

    .line 505
    :cond_6
    iget-object v1, p0, Lorg/jpos/iso/ISOServer;->clientSideChannel:Lorg/jpos/iso/ISOChannel;

    invoke-interface {v1}, Lorg/jpos/iso/ISOChannel;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/iso/ServerChannel;

    .line 506
    .local v1, "channel":Lorg/jpos/iso/ServerChannel;
    iget-object v2, p0, Lorg/jpos/iso/ISOServer;->serverSocket:Ljava/net/ServerSocket;

    invoke-interface {v1, v2}, Lorg/jpos/iso/ServerChannel;->accept(Ljava/net/ServerSocket;)V

    .line 508
    iget-object v2, p0, Lorg/jpos/iso/ISOServer;->cnt:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    add-int/lit8 v5, v4, 0x1

    aput v5, v2, v3

    rem-int/lit8 v4, v4, 0x64

    if-nez v4, :cond_7

    .line 509
    invoke-direct {p0}, Lorg/jpos/iso/ISOServer;->purgeChannels()V

    .line 511
    :cond_7
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 512
    .local v2, "wr":Ljava/lang/ref/WeakReference;
    iget-object v3, p0, Lorg/jpos/iso/ISOServer;->channels:Ljava/util/Map;

    invoke-interface {v1}, Lorg/jpos/iso/ServerChannel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    iget-object v3, p0, Lorg/jpos/iso/ISOServer;->channels:Ljava/util/Map;

    const-string v4, ":last"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget-object v3, p0, Lorg/jpos/iso/ISOServer;->pool:Lorg/jpos/util/ThreadPool;

    invoke-virtual {p0, v1}, Lorg/jpos/iso/ISOServer;->createSession(Lorg/jpos/iso/ServerChannel;)Lorg/jpos/iso/ISOServer$Session;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jpos/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 515
    invoke-virtual {p0}, Lorg/jpos/iso/ISOServer;->setChanged()V

    .line 516
    invoke-virtual {p0, p0}, Lorg/jpos/iso/ISOServer;->notifyObservers(Ljava/lang/Object;)V

    .line 517
    new-instance v3, Lorg/jpos/iso/ISOServerAcceptEvent;

    invoke-direct {v3, p0, v1}, Lorg/jpos/iso/ISOServerAcceptEvent;-><init>(Lorg/jpos/iso/ISOServer;Lorg/jpos/iso/ISOChannel;)V

    invoke-virtual {p0, v3}, Lorg/jpos/iso/ISOServer;->fireEvent(Ljava/util/EventObject;)V

    .line 518
    instance-of v3, v1, Ljava/util/Observable;

    if-eqz v3, :cond_8

    .line 519
    move-object v3, v1

    check-cast v3, Ljava/util/Observable;

    invoke-virtual {v3, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 530
    .end local v2    # "wr":Ljava/lang/ref/WeakReference;
    :cond_8
    goto/16 :goto_3

    .line 527
    .end local v1    # "channel":Lorg/jpos/iso/ServerChannel;
    :catch_1
    move-exception v1

    .line 528
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v2, Lorg/jpos/util/LogEvent;

    invoke-direct {v2, p0, v0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 529
    invoke-direct {p0}, Lorg/jpos/iso/ISOServer;->relax()V

    .line 530
    .end local v1    # "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 521
    :catch_2
    move-exception v1

    .line 522
    .local v1, "e":Ljava/net/SocketException;
    iget-boolean v2, p0, Lorg/jpos/iso/ISOServer;->shutdown:Z

    if-nez v2, :cond_9

    .line 523
    new-instance v2, Lorg/jpos/util/LogEvent;

    invoke-direct {v2, p0, v0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 524
    invoke-direct {p0}, Lorg/jpos/iso/ISOServer;->relax()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 525
    goto/16 :goto_0

    .line 530
    .end local v1    # "e":Ljava/net/SocketException;
    :cond_9
    goto/16 :goto_3

    .line 532
    :catchall_0
    move-exception v1

    .line 533
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Lorg/jpos/util/LogEvent;

    invoke-direct {v2, p0, v0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 534
    invoke-direct {p0}, Lorg/jpos/iso/ISOServer;->relax()V

    .line 535
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_a
    goto/16 :goto_0

    .line 537
    :cond_b
    :goto_6
    return-void
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 5
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lorg/jpos/iso/ISOServer;->cfg:Lorg/jpos/core/Configuration;

    .line 130
    invoke-direct {p0}, Lorg/jpos/iso/ISOServer;->configureConnectionPerms()V

    .line 131
    const-string v0, "backlog"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/jpos/iso/ISOServer;->backlog:I

    .line 132
    const-string v0, "ignore-iso-exceptions"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jpos/iso/ISOServer;->ignoreISOExceptions:Z

    .line 133
    const-string v0, "bind-address"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "ip":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 136
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/iso/ISOServer;->bindAddr:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    goto :goto_0

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v2, Lorg/jpos/core/ConfigurationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid bind-address "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 141
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/jpos/iso/ISOServer;->socketFactory:Lorg/jpos/iso/ISOServerSocketFactory;

    if-nez v1, :cond_1

    .line 142
    iput-object p0, p0, Lorg/jpos/iso/ISOServer;->socketFactory:Lorg/jpos/iso/ISOServerSocketFactory;

    .line 144
    :cond_1
    iget-object v1, p0, Lorg/jpos/iso/ISOServer;->socketFactory:Lorg/jpos/iso/ISOServerSocketFactory;

    if-eq v1, p0, :cond_2

    instance-of v2, v1, Lorg/jpos/core/Configurable;

    if-eqz v2, :cond_2

    .line 145
    check-cast v1, Lorg/jpos/core/Configurable;

    invoke-interface {v1, p1}, Lorg/jpos/core/Configurable;->setConfiguration(Lorg/jpos/core/Configuration;)V

    .line 147
    :cond_2
    return-void
.end method

.method public setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V
    .locals 2
    .param p1, "logger"    # Lorg/jpos/util/Logger;
    .param p2, "realm"    # Ljava/lang/String;

    .line 573
    iput-object p1, p0, Lorg/jpos/iso/ISOServer;->logger:Lorg/jpos/util/Logger;

    .line 574
    iput-object p2, p0, Lorg/jpos/iso/ISOServer;->realm:Ljava/lang/String;

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".channel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/ISOServer;->realmChannel:Ljava/lang/String;

    .line 576
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 552
    iput-object p1, p0, Lorg/jpos/iso/ISOServer;->name:Ljava/lang/String;

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "server."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/jpos/util/NameRegistrar;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 554
    return-void
.end method

.method public setSocketFactory(Lorg/jpos/iso/ISOServerSocketFactory;)V
    .locals 0
    .param p1, "socketFactory"    # Lorg/jpos/iso/ISOServerSocketFactory;

    .line 605
    iput-object p1, p0, Lorg/jpos/iso/ISOServer;->socketFactory:Lorg/jpos/iso/ISOServerSocketFactory;

    .line 606
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/ISOServer;->shutdown:Z

    .line 228
    new-instance v0, Lorg/jpos/iso/ISOServer$1;

    const-string v1, "ISOServer-shutdown"

    invoke-direct {v0, p0, v1}, Lorg/jpos/iso/ISOServer$1;-><init>(Lorg/jpos/iso/ISOServer;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0}, Lorg/jpos/iso/ISOServer$1;->start()V

    .line 237
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/util/Observable;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 587
    invoke-virtual {p0}, Lorg/jpos/iso/ISOServer;->setChanged()V

    .line 588
    invoke-virtual {p0, p2}, Lorg/jpos/iso/ISOServer;->notifyObservers(Ljava/lang/Object;)V

    .line 589
    return-void
.end method
