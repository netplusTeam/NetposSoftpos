.class public final synthetic Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;

.field public final synthetic f$1:Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher$$ExternalSyntheticLambda1;->f$0:Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;

    iput-object p2, p0, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher$$ExternalSyntheticLambda1;->f$1:Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;

    iput-boolean p3, p0, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher$$ExternalSyntheticLambda1;->f$0:Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;

    iget-object v1, p0, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher$$ExternalSyntheticLambda1;->f$1:Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;

    iget-boolean v2, p0, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher$$ExternalSyntheticLambda1;->f$2:Z

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {v0, v1, v2, p1}, Lorg/apache/sshd/client/config/keys/ClientIdentitiesWatcher;->lambda$buildProviders$1(Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;Lorg/apache/sshd/common/config/keys/FilePasswordProviderHolder;ZLjava/nio/file/Path;)Lorg/apache/sshd/client/config/keys/ClientIdentityProvider;

    move-result-object p1

    return-object p1
.end method
