.class public abstract Lnet/sf/scuba/smartcards/CardService;
.super Ljava/lang/Object;
.source "CardService.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

.field protected static final SESSION_STARTED_STATE:I = 0x1

.field protected static final SESSION_STOPPED_STATE:I

.field private static final objectToServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private apduListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lnet/sf/scuba/smartcards/APDUListener;",
            ">;"
        }
    .end annotation
.end field

.field protected state:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    const-string v0, "net.sf.scuba"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lnet/sf/scuba/smartcards/CardService;->LOGGER:Ljava/util/logging/Logger;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/sf/scuba/smartcards/CardService;->objectToServiceMap:Ljava/util/Map;

    .line 55
    const-string v1, "javax.smartcardio.CardTerminal"

    const-string v2, "net.sf.scuba.smartcards.TerminalCardService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "sun.security.smartcardio.TerminalImpl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "android.nfc.tech.IsoDep"

    const-string v2, "net.sf.scuba.smartcards.IsoDepCardService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnet/sf/scuba/smartcards/CardService;->apduListeners:Ljava/util/Collection;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/scuba/smartcards/CardService;->state:I

    .line 71
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lnet/sf/scuba/smartcards/CardService;
    .locals 11
    .param p0, "object"    # Ljava/lang/Object;

    .line 81
    if-eqz p0, :cond_2

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 85
    .local v0, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "objectClassName":Ljava/lang/String;
    sget-object v2, Lnet/sf/scuba/smartcards/CardService;->objectToServiceMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 87
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 89
    .local v4, "targetObjectClassName":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 90
    .local v5, "targetObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 91
    .local v6, "serviceClassName":Ljava/lang/String;
    invoke-virtual {v5, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v7, :cond_0

    .line 93
    :try_start_1
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 94
    .local v7, "cardServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-virtual {v7, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v10

    invoke-virtual {v9, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sf/scuba/smartcards/CardService;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v8

    .line 95
    .end local v7    # "cardServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v7

    .line 96
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "objectClassName":Ljava/lang/String;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "targetObjectClassName":Ljava/lang/String;
    .end local p0    # "object":Ljava/lang/Object;
    throw v8
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 102
    .end local v5    # "targetObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "serviceClassName":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v0    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "objectClassName":Ljava/lang/String;
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "targetObjectClassName":Ljava/lang/String;
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_0
    nop

    .line 103
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "targetObjectClassName":Ljava/lang/String;
    goto :goto_0

    .line 99
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "targetObjectClassName":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 100
    .local v5, "cnfe":Ljava/lang/ClassNotFoundException;
    sget-object v6, Lnet/sf/scuba/smartcards/CardService;->LOGGER:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v8, "Could not find class, trying next one"

    invoke-virtual {v6, v7, v8, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    goto :goto_0

    .line 104
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "targetObjectClassName":Ljava/lang/String;
    .end local v5    # "cnfe":Ljava/lang/ClassNotFoundException;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find a CardService for object of class \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    .end local v0    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "objectClassName":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public addAPDUListener(Lnet/sf/scuba/smartcards/APDUListener;)V
    .locals 1
    .param p1, "l"    # Lnet/sf/scuba/smartcards/APDUListener;

    .line 113
    iget-object v0, p0, Lnet/sf/scuba/smartcards/CardService;->apduListeners:Ljava/util/Collection;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 114
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    return-void
.end method

.method public abstract close()V
.end method

.method public getAPDUListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lnet/sf/scuba/smartcards/APDUListener;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lnet/sf/scuba/smartcards/CardService;->apduListeners:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public abstract getATR()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation
.end method

.method public abstract isConnectionLost(Ljava/lang/Exception;)Z
.end method

.method public isExtendedAPDULengthSupported()Z
    .locals 1

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isOpen()Z
.end method

.method protected notifyExchangedAPDU(Lnet/sf/scuba/smartcards/APDUEvent;)V
    .locals 2
    .param p1, "event"    # Lnet/sf/scuba/smartcards/APDUEvent;

    .line 147
    iget-object v0, p0, Lnet/sf/scuba/smartcards/CardService;->apduListeners:Ljava/util/Collection;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 151
    :cond_0
    iget-object v0, p0, Lnet/sf/scuba/smartcards/CardService;->apduListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/scuba/smartcards/APDUListener;

    .line 152
    .local v1, "listener":Lnet/sf/scuba/smartcards/APDUListener;
    invoke-interface {v1, p1}, Lnet/sf/scuba/smartcards/APDUListener;->exchangedAPDU(Lnet/sf/scuba/smartcards/APDUEvent;)V

    .line 153
    .end local v1    # "listener":Lnet/sf/scuba/smartcards/APDUListener;
    goto :goto_0

    .line 154
    :cond_1
    return-void

    .line 148
    :cond_2
    :goto_1
    return-void
.end method

.method public abstract open()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation
.end method

.method public removeAPDUListener(Lnet/sf/scuba/smartcards/APDUListener;)V
    .locals 1
    .param p1, "l"    # Lnet/sf/scuba/smartcards/APDUListener;

    .line 125
    iget-object v0, p0, Lnet/sf/scuba/smartcards/CardService;->apduListeners:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 128
    :cond_0
    return-void
.end method

.method public abstract transmit(Lnet/sf/scuba/smartcards/CommandAPDU;)Lnet/sf/scuba/smartcards/ResponseAPDU;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation
.end method
