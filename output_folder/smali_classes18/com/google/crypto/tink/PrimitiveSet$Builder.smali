.class public Lcom/google/crypto/tink/PrimitiveSet$Builder;
.super Ljava/lang/Object;
.source "PrimitiveSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/PrimitiveSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private annotations:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

.field private primary:Lcom/google/crypto/tink/PrimitiveSet$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/PrimitiveSet$Entry<",
            "TP;>;"
        }
    .end annotation
.end field

.field private final primitiveClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TP;>;"
        }
    .end annotation
.end field

.field private primitives:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/google/crypto/tink/PrimitiveSet$Prefix;",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/PrimitiveSet$Entry<",
            "TP;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "primitiveClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TP;>;)V"
        }
    .end annotation

    .line 454
    .local p0, "this":Lcom/google/crypto/tink/PrimitiveSet$Builder;, "Lcom/google/crypto/tink/PrimitiveSet$Builder<TP;>;"
    .local p1, "primitiveClass":Ljava/lang/Class;, "Ljava/lang/Class<TP;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/PrimitiveSet$Builder;->primitives:Ljava/util/concurrent/ConcurrentMap;

    .line 455
    iput-object p1, p0, Lcom/google/crypto/tink/PrimitiveSet$Builder;->primitiveClass:Ljava/lang/Class;

    .line 456
    sget-object v0, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;->EMPTY:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    iput-object v0, p0, Lcom/google/crypto/tink/PrimitiveSet$Builder;->annotations:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    .line 457
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Lcom/google/crypto/tink/PrimitiveSet$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # Lcom/google/crypto/tink/PrimitiveSet$1;

    .line 363
    .local p0, "this":Lcom/google/crypto/tink/PrimitiveSet$Builder;, "Lcom/google/crypto/tink/PrimitiveSet$Builder<TP;>;"
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/PrimitiveSet$Builder;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private addPrimitive(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/crypto/tink/proto/Keyset$Key;Z)Lcom/google/crypto/tink/PrimitiveSet$Builder;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "key"    # Lcom/google/crypto/tink/proto/Keyset$Key;
    .param p4, "asPrimary"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x0
        }
        names = {
            "fullPrimitive",
            "primitive",
            "key",
            "asPrimary"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;TP;",
            "Lcom/google/crypto/tink/proto/Keyset$Key;",
            "Z)",
            "Lcom/google/crypto/tink/PrimitiveSet$Builder<",
            "TP;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 379
    .local p0, "this":Lcom/google/crypto/tink/PrimitiveSet$Builder;, "Lcom/google/crypto/tink/PrimitiveSet$Builder<TP;>;"
    .local p1, "fullPrimitive":Ljava/lang/Object;, "TP;"
    .local p2, "primitive":Ljava/lang/Object;, "TP;"
    iget-object v0, p0, Lcom/google/crypto/tink/PrimitiveSet$Builder;->primitives:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_5

    .line 382
    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "at least one of the `fullPrimitive` or `primitive` must be set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/google/crypto/tink/proto/Keyset$Key;->getStatus()Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/KeyStatusType;->ENABLED:Lcom/google/crypto/tink/proto/KeyStatusType;

    if-ne v0, v1, :cond_4

    .line 389
    iget-object v0, p0, Lcom/google/crypto/tink/PrimitiveSet$Builder;->primitives:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1, p2, p3, v0}, Lcom/google/crypto/tink/PrimitiveSet;->access$100(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/crypto/tink/proto/Keyset$Key;Ljava/util/concurrent/ConcurrentMap;)Lcom/google/crypto/tink/PrimitiveSet$Entry;

    move-result-object v0

    .line 390
    .local v0, "entry":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<TP;>;"
    if-eqz p4, :cond_3

    .line 391
    iget-object v1, p0, Lcom/google/crypto/tink/PrimitiveSet$Builder;->primary:Lcom/google/crypto/tink/PrimitiveSet$Entry;

    if-nez v1, :cond_2

    .line 394
    iput-object v0, p0, Lcom/google/crypto/tink/PrimitiveSet$Builder;->primary:Lcom/google/crypto/tink/PrimitiveSet$Entry;

    goto :goto_1

    .line 392
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "you cannot set two primary primitives"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    :cond_3
    :goto_1
    return-object p0

    .line 387
    .end local v0    # "entry":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<TP;>;"
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "only ENABLED key is allowed"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addPrimitive cannot be called after build"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addFullPrimitiveAndOptionalPrimitive(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/crypto/tink/proto/Keyset$Key;)Lcom/google/crypto/tink/PrimitiveSet$Builder;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "key"    # Lcom/google/crypto/tink/proto/Keyset$Key;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "fullPrimitive",
            "primitive",
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;TP;",
            "Lcom/google/crypto/tink/proto/Keyset$Key;",
            ")",
            "Lcom/google/crypto/tink/PrimitiveSet$Builder<",
            "TP;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 420
    .local p0, "this":Lcom/google/crypto/tink/PrimitiveSet$Builder;, "Lcom/google/crypto/tink/PrimitiveSet$Builder<TP;>;"
    .local p1, "fullPrimitive":Ljava/lang/Object;, "TP;"
    .local p2, "primitive":Ljava/lang/Object;, "TP;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/crypto/tink/PrimitiveSet$Builder;->addPrimitive(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/crypto/tink/proto/Keyset$Key;Z)Lcom/google/crypto/tink/PrimitiveSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addPrimaryFullPrimitiveAndOptionalPrimitive(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/crypto/tink/proto/Keyset$Key;)Lcom/google/crypto/tink/PrimitiveSet$Builder;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "key"    # Lcom/google/crypto/tink/proto/Keyset$Key;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "fullPrimitive",
            "primitive",
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;TP;",
            "Lcom/google/crypto/tink/proto/Keyset$Key;",
            ")",
            "Lcom/google/crypto/tink/PrimitiveSet$Builder<",
            "TP;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 431
    .local p0, "this":Lcom/google/crypto/tink/PrimitiveSet$Builder;, "Lcom/google/crypto/tink/PrimitiveSet$Builder<TP;>;"
    .local p1, "fullPrimitive":Ljava/lang/Object;, "TP;"
    .local p2, "primitive":Ljava/lang/Object;, "TP;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/crypto/tink/PrimitiveSet$Builder;->addPrimitive(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/crypto/tink/proto/Keyset$Key;Z)Lcom/google/crypto/tink/PrimitiveSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addPrimaryPrimitive(Ljava/lang/Object;Lcom/google/crypto/tink/proto/Keyset$Key;)Lcom/google/crypto/tink/PrimitiveSet$Builder;
    .locals 2
    .param p2, "key"    # Lcom/google/crypto/tink/proto/Keyset$Key;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "primitive",
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lcom/google/crypto/tink/proto/Keyset$Key;",
            ")",
            "Lcom/google/crypto/tink/PrimitiveSet$Builder<",
            "TP;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 413
    .local p0, "this":Lcom/google/crypto/tink/PrimitiveSet$Builder;, "Lcom/google/crypto/tink/PrimitiveSet$Builder<TP;>;"
    .local p1, "primitive":Ljava/lang/Object;, "TP;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/crypto/tink/PrimitiveSet$Builder;->addPrimitive(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/crypto/tink/proto/Keyset$Key;Z)Lcom/google/crypto/tink/PrimitiveSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addPrimitive(Ljava/lang/Object;Lcom/google/crypto/tink/proto/Keyset$Key;)Lcom/google/crypto/tink/PrimitiveSet$Builder;
    .locals 2
    .param p2, "key"    # Lcom/google/crypto/tink/proto/Keyset$Key;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "primitive",
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lcom/google/crypto/tink/proto/Keyset$Key;",
            ")",
            "Lcom/google/crypto/tink/PrimitiveSet$Builder<",
            "TP;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 403
    .local p0, "this":Lcom/google/crypto/tink/PrimitiveSet$Builder;, "Lcom/google/crypto/tink/PrimitiveSet$Builder<TP;>;"
    .local p1, "primitive":Ljava/lang/Object;, "TP;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/crypto/tink/PrimitiveSet$Builder;->addPrimitive(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/crypto/tink/proto/Keyset$Key;Z)Lcom/google/crypto/tink/PrimitiveSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/crypto/tink/PrimitiveSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/PrimitiveSet<",
            "TP;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 444
    .local p0, "this":Lcom/google/crypto/tink/PrimitiveSet$Builder;, "Lcom/google/crypto/tink/PrimitiveSet$Builder<TP;>;"
    iget-object v1, p0, Lcom/google/crypto/tink/PrimitiveSet$Builder;->primitives:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v1, :cond_0

    .line 448
    new-instance v6, Lcom/google/crypto/tink/PrimitiveSet;

    iget-object v2, p0, Lcom/google/crypto/tink/PrimitiveSet$Builder;->primary:Lcom/google/crypto/tink/PrimitiveSet$Entry;

    iget-object v3, p0, Lcom/google/crypto/tink/PrimitiveSet$Builder;->annotations:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    iget-object v4, p0, Lcom/google/crypto/tink/PrimitiveSet$Builder;->primitiveClass:Ljava/lang/Class;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/crypto/tink/PrimitiveSet;-><init>(Ljava/util/concurrent/ConcurrentMap;Lcom/google/crypto/tink/PrimitiveSet$Entry;Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;Ljava/lang/Class;Lcom/google/crypto/tink/PrimitiveSet$1;)V

    .line 450
    .local v0, "output":Lcom/google/crypto/tink/PrimitiveSet;, "Lcom/google/crypto/tink/PrimitiveSet<TP;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/crypto/tink/PrimitiveSet$Builder;->primitives:Ljava/util/concurrent/ConcurrentMap;

    .line 451
    return-object v0

    .line 445
    .end local v0    # "output":Lcom/google/crypto/tink/PrimitiveSet;, "Lcom/google/crypto/tink/PrimitiveSet<TP;>;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build cannot be called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAnnotations(Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;)Lcom/google/crypto/tink/PrimitiveSet$Builder;
    .locals 2
    .param p1, "annotations"    # Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;",
            ")",
            "Lcom/google/crypto/tink/PrimitiveSet$Builder<",
            "TP;>;"
        }
    .end annotation

    .line 436
    .local p0, "this":Lcom/google/crypto/tink/PrimitiveSet$Builder;, "Lcom/google/crypto/tink/PrimitiveSet$Builder<TP;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/PrimitiveSet$Builder;->primitives:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_0

    .line 439
    iput-object p1, p0, Lcom/google/crypto/tink/PrimitiveSet$Builder;->annotations:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    .line 440
    return-object p0

    .line 437
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setAnnotations cannot be called after build"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
