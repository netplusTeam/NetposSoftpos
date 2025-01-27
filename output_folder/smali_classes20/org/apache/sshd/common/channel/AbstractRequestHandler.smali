.class public abstract Lorg/apache/sshd/common/channel/AbstractRequestHandler;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "AbstractRequestHandler.java"

# interfaces
.implements Lorg/apache/sshd/common/channel/RequestHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;",
        "Lorg/apache/sshd/common/channel/RequestHandler<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 30
    .local p0, "this":Lorg/apache/sshd/common/channel/AbstractRequestHandler;, "Lorg/apache/sshd/common/channel/AbstractRequestHandler<TT;>;"
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 31
    return-void
.end method
