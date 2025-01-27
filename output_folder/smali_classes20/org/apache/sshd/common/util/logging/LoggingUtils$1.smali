.class final Lorg/apache/sshd/common/util/logging/LoggingUtils$1;
.super Ljava/lang/Object;
.source "LoggingUtils.java"

# interfaces
.implements Lorg/apache/sshd/common/util/logging/SimplifiedLog;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/common/util/logging/LoggingUtils;->wrap(Lorg/slf4j/Logger;)Lorg/apache/sshd/common/util/logging/SimplifiedLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$logger:Lorg/slf4j/Logger;


# direct methods
.method constructor <init>(Lorg/slf4j/Logger;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lorg/apache/sshd/common/util/logging/LoggingUtils$1;->val$logger:Lorg/slf4j/Logger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled(Ljava/util/logging/Level;)Z
    .locals 1
    .param p1, "level"    # Ljava/util/logging/Level;

    .line 254
    iget-object v0, p0, Lorg/apache/sshd/common/util/logging/LoggingUtils$1;->val$logger:Lorg/slf4j/Logger;

    invoke-static {v0, p1}, Lorg/apache/sshd/common/util/logging/LoggingUtils;->isLoggable(Lorg/slf4j/Logger;Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 246
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/logging/LoggingUtils$1;->isEnabled(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lorg/apache/sshd/common/util/logging/LoggingUtils$1;->val$logger:Lorg/slf4j/Logger;

    invoke-static {v0, p1, p2, p3}, Lorg/apache/sshd/common/util/logging/LoggingUtils;->logMessage(Lorg/slf4j/Logger;Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 250
    :cond_0
    return-void
.end method
