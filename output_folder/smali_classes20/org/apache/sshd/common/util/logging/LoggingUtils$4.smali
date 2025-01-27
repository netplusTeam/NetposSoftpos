.class final Lorg/apache/sshd/common/util/logging/LoggingUtils$4;
.super Ljava/lang/Object;
.source "LoggingUtils.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/common/util/logging/LoggingUtils;->infoClosure(Lorg/slf4j/Logger;Ljava/lang/Throwable;)Ljava/util/function/Consumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$logger:Lorg/slf4j/Logger;

.field final synthetic val$thrown:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lorg/slf4j/Logger;Ljava/lang/Throwable;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lorg/apache/sshd/common/util/logging/LoggingUtils$4;->val$logger:Lorg/slf4j/Logger;

    iput-object p2, p0, Lorg/apache/sshd/common/util/logging/LoggingUtils$4;->val$thrown:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 455
    .local p1, "input":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/sshd/common/util/logging/LoggingUtils$4;->val$logger:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/sshd/common/util/logging/LoggingUtils$4;->val$thrown:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 458
    iget-object v1, p0, Lorg/apache/sshd/common/util/logging/LoggingUtils$4;->val$logger:Lorg/slf4j/Logger;

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 460
    :cond_0
    iget-object v2, p0, Lorg/apache/sshd/common/util/logging/LoggingUtils$4;->val$logger:Lorg/slf4j/Logger;

    invoke-interface {v2, v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 463
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 467
    const-string v0, "INFO"

    return-object v0
.end method
