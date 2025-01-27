.class public final synthetic Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    return-void
.end method


# virtual methods
.method public final getClientIdentityLoader()Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    invoke-static {v0}, Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderHolder;->lambda$loaderHolderOf$0(Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;)Lorg/apache/sshd/client/config/keys/ClientIdentityLoader;

    move-result-object v0

    return-object v0
.end method
