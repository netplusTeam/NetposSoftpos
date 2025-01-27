.class public final synthetic Lorg/apache/sshd/common/keyprovider/MappedKeyPairProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/apache/sshd/common/keyprovider/MappedKeyPairProvider;

    check-cast p1, Ljava/util/Map;

    invoke-direct {v0, p1}, Lorg/apache/sshd/common/keyprovider/MappedKeyPairProvider;-><init>(Ljava/util/Map;)V

    check-cast v0, Lorg/apache/sshd/common/keyprovider/KeyPairProvider;

    return-object v0
.end method
