.class public final synthetic Lorg/apache/sshd/common/config/keys/FilePasswordProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/config/keys/FilePasswordProvider;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/config/keys/FilePasswordProvider$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPassword(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/FilePasswordProvider$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    invoke-static {v0, p1, p2, p3}, Lorg/apache/sshd/common/config/keys/FilePasswordProvider;->lambda$of$1(Ljava/lang/String;Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
