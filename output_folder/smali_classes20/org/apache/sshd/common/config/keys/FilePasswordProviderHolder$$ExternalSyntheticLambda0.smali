.class public final synthetic Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/config/keys/FilePasswordProvider;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    return-void
.end method


# virtual methods
.method public final getFilePasswordProvider()Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;->lambda$providerHolderOf$0(Lorg/apache/sshd/common/config/keys/FilePasswordProvider;)Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    move-result-object v0

    return-object v0
.end method
