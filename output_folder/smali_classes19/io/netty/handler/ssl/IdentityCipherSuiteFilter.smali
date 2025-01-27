.class public final Lio/netty/handler/ssl/IdentityCipherSuiteFilter;
.super Ljava/lang/Object;
.source "IdentityCipherSuiteFilter.java"

# interfaces
.implements Lio/netty/handler/ssl/CipherSuiteFilter;


# static fields
.field public static final INSTANCE:Lio/netty/handler/ssl/IdentityCipherSuiteFilter;

.field public static final INSTANCE_DEFAULTING_TO_SUPPORTED_CIPHERS:Lio/netty/handler/ssl/IdentityCipherSuiteFilter;


# instance fields
.field private final defaultToDefaultCiphers:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lio/netty/handler/ssl/IdentityCipherSuiteFilter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/netty/handler/ssl/IdentityCipherSuiteFilter;-><init>(Z)V

    sput-object v0, Lio/netty/handler/ssl/IdentityCipherSuiteFilter;->INSTANCE:Lio/netty/handler/ssl/IdentityCipherSuiteFilter;

    .line 35
    new-instance v0, Lio/netty/handler/ssl/IdentityCipherSuiteFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/handler/ssl/IdentityCipherSuiteFilter;-><init>(Z)V

    sput-object v0, Lio/netty/handler/ssl/IdentityCipherSuiteFilter;->INSTANCE_DEFAULTING_TO_SUPPORTED_CIPHERS:Lio/netty/handler/ssl/IdentityCipherSuiteFilter;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "defaultToDefaultCiphers"    # Z

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean p1, p0, Lio/netty/handler/ssl/IdentityCipherSuiteFilter;->defaultToDefaultCiphers:Z

    .line 42
    return-void
.end method


# virtual methods
.method public filterCipherSuites(Ljava/lang/Iterable;Ljava/util/List;Ljava/util/Set;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 47
    .local p1, "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .local p2, "defaultCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "supportedCiphers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 48
    iget-boolean v1, p0, Lio/netty/handler/ssl/IdentityCipherSuiteFilter;->defaultToDefaultCiphers:Z

    if-eqz v1, :cond_0

    new-array v0, v0, [Ljava/lang/String;

    .line 49
    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-array v0, v0, [Ljava/lang/String;

    .line 50
    invoke-interface {p3, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 48
    :goto_0
    return-object v0

    .line 52
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .local v1, "newCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 54
    .local v3, "c":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 55
    goto :goto_2

    .line 57
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v3    # "c":Ljava/lang/String;
    goto :goto_1

    .line 59
    :cond_3
    :goto_2
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
