.class final Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider$1;
.super Ljava/lang/Object;
.source "KeyIdentityProvider.java"

# interfaces
.implements Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadKeys(Lorg/apache/sshd/common/session/SessionContext;)Ljava/lang/Iterable;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "EMPTY"

    return-object v0
.end method
