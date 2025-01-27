.class public interface abstract Lorg/apache/sshd/common/OptionalFeature;
.super Ljava/lang/Object;
.source "OptionalFeature.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final FALSE:Lorg/apache/sshd/common/OptionalFeature;

.field public static final TRUE:Lorg/apache/sshd/common/OptionalFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lorg/apache/sshd/common/OptionalFeature$1;

    invoke-direct {v0}, Lorg/apache/sshd/common/OptionalFeature$1;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/OptionalFeature;->TRUE:Lorg/apache/sshd/common/OptionalFeature;

    .line 43
    new-instance v0, Lorg/apache/sshd/common/OptionalFeature$2;

    invoke-direct {v0}, Lorg/apache/sshd/common/OptionalFeature$2;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/OptionalFeature;->FALSE:Lorg/apache/sshd/common/OptionalFeature;

    return-void
.end method

.method public static all(Ljava/util/Collection;)Lorg/apache/sshd/common/OptionalFeature;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/OptionalFeature;",
            ">;)",
            "Lorg/apache/sshd/common/OptionalFeature;"
        }
    .end annotation

    .line 62
    .local p0, "features":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/OptionalFeature;>;"
    new-instance v0, Lorg/apache/sshd/common/OptionalFeature$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/OptionalFeature$$ExternalSyntheticLambda0;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static any(Ljava/util/Collection;)Lorg/apache/sshd/common/OptionalFeature;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/OptionalFeature;",
            ">;)",
            "Lorg/apache/sshd/common/OptionalFeature;"
        }
    .end annotation

    .line 78
    .local p0, "features":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/OptionalFeature;>;"
    new-instance v0, Lorg/apache/sshd/common/OptionalFeature$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/OptionalFeature$$ExternalSyntheticLambda1;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static synthetic lambda$all$0(Ljava/util/Collection;)Z
    .locals 4
    .param p0, "features"    # Ljava/util/Collection;

    .line 63
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 64
    return v1

    .line 67
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/OptionalFeature;

    .line 68
    .local v2, "f":Lorg/apache/sshd/common/OptionalFeature;
    invoke-interface {v2}, Lorg/apache/sshd/common/OptionalFeature;->isSupported()Z

    move-result v3

    if-nez v3, :cond_1

    .line 69
    return v1

    .line 71
    .end local v2    # "f":Lorg/apache/sshd/common/OptionalFeature;
    :cond_1
    goto :goto_0

    .line 73
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$any$1(Ljava/util/Collection;)Z
    .locals 4
    .param p0, "features"    # Ljava/util/Collection;

    .line 79
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 80
    return v1

    .line 83
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/OptionalFeature;

    .line 84
    .local v2, "f":Lorg/apache/sshd/common/OptionalFeature;
    invoke-interface {v2}, Lorg/apache/sshd/common/OptionalFeature;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    const/4 v0, 0x1

    return v0

    .line 87
    .end local v2    # "f":Lorg/apache/sshd/common/OptionalFeature;
    :cond_1
    goto :goto_0

    .line 89
    :cond_2
    return v1
.end method

.method public static of(Z)Lorg/apache/sshd/common/OptionalFeature;
    .locals 1
    .param p0, "supported"    # Z

    .line 58
    if-eqz p0, :cond_0

    sget-object v0, Lorg/apache/sshd/common/OptionalFeature;->TRUE:Lorg/apache/sshd/common/OptionalFeature;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/sshd/common/OptionalFeature;->FALSE:Lorg/apache/sshd/common/OptionalFeature;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public abstract isSupported()Z
.end method
