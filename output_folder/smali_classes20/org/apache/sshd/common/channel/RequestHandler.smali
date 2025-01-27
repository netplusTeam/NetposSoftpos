.class public interface abstract Lorg/apache/sshd/common/channel/RequestHandler;
.super Ljava/lang/Object;
.source "RequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/channel/RequestHandler$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract process(Ljava/lang/Object;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/apache/sshd/common/util/buffer/Buffer;",
            ")",
            "Lorg/apache/sshd/common/channel/RequestHandler$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
