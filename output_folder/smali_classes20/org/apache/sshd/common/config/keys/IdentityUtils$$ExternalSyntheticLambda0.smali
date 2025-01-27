.class public final synthetic Lorg/apache/sshd/common/config/keys/IdentityUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(ZLjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/sshd/common/config/keys/IdentityUtils$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Lorg/apache/sshd/common/config/keys/IdentityUtils$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/sshd/common/config/keys/IdentityUtils$$ExternalSyntheticLambda0;->f$0:Z

    iget-object v1, p0, Lorg/apache/sshd/common/config/keys/IdentityUtils$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/security/KeyPair;

    invoke-static {v0, v1, p1, p2}, Lorg/apache/sshd/common/config/keys/IdentityUtils;->lambda$createKeyPairProvider$0(ZLjava/util/Map;Ljava/lang/String;Ljava/security/KeyPair;)V

    return-void
.end method
