.class public final synthetic Lorg/apache/sshd/common/config/keys/FilePasswordProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/config/keys/FilePasswordProvider;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPassword(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;I)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/apache/sshd/common/config/keys/FilePasswordProvider;->lambda$static$0(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
