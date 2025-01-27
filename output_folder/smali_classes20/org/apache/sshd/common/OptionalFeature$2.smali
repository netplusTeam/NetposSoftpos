.class final Lorg/apache/sshd/common/OptionalFeature$2;
.super Ljava/lang/Object;
.source "OptionalFeature.java"

# interfaces
.implements Lorg/apache/sshd/common/OptionalFeature;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/OptionalFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSupported()Z
    .locals 1

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "FALSE"

    return-object v0
.end method
