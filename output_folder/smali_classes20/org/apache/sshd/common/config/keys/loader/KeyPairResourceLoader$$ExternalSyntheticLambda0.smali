.class public final synthetic Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/util/List;)Ljava/util/Collection;
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceLoader;->lambda$static$0(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/util/List;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
