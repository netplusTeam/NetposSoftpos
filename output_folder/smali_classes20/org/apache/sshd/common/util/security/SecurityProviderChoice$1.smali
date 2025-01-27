.class final Lorg/apache/sshd/common/util/security/SecurityProviderChoice$1;
.super Ljava/lang/Object;
.source "SecurityProviderChoice.java"

# interfaces
.implements Lorg/apache/sshd/common/util/security/SecurityProviderChoice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/util/security/SecurityProviderChoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecurityProvider()Ljava/security/Provider;
    .locals 1

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNamedProviderUsed()Z
    .locals 1

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "EMPTY"

    return-object v0
.end method
