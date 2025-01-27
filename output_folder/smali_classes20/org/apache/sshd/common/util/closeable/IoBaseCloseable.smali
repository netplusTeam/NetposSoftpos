.class public abstract Lorg/apache/sshd/common/util/closeable/IoBaseCloseable;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "IoBaseCloseable.java"

# interfaces
.implements Lorg/apache/sshd/common/Closeable;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 29
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/util/closeable/IoBaseCloseable;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "discriminator"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method
