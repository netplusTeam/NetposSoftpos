.class Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityProvider$1;
.super Ljava/lang/Object;
.source "MultiKeyIdentityProvider.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityProvider;->loadKeys(Lorg/apache/sshd/common/session/SessionContext;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/security/KeyPair;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityProvider;

.field final synthetic val$session:Lorg/apache/sshd/common/session/SessionContext;


# direct methods
.method constructor <init>(Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityProvider;Lorg/apache/sshd/common/session/SessionContext;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityProvider;

    .line 43
    iput-object p1, p0, Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityProvider$1;->this$0:Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityProvider;

    iput-object p2, p0, Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityProvider$1;->val$session:Lorg/apache/sshd/common/session/SessionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityProvider$1;->this$0:Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityProvider;

    iget-object v0, v0, Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityProvider;->providers:Ljava/lang/Iterable;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityIterator;

    iget-object v1, p0, Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityProvider$1;->val$session:Lorg/apache/sshd/common/session/SessionContext;

    iget-object v2, p0, Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityProvider$1;->this$0:Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityProvider;

    iget-object v2, v2, Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityProvider;->providers:Ljava/lang/Iterable;

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityIterator;-><init>(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/Iterable;)V

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
