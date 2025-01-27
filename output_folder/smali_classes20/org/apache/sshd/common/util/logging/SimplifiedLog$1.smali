.class final Lorg/apache/sshd/common/util/logging/SimplifiedLog$1;
.super Ljava/lang/Object;
.source "SimplifiedLog.java"

# interfaces
.implements Lorg/apache/sshd/common/util/logging/SimplifiedLog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/util/logging/SimplifiedLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled(Ljava/util/logging/Level;)Z
    .locals 1
    .param p1, "level"    # Ljava/util/logging/Level;

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 44
    const-string v0, "EMPTY"

    return-object v0
.end method
