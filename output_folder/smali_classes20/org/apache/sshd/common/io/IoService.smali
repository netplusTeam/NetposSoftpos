.class public interface abstract Lorg/apache/sshd/common/io/IoService;
.super Ljava/lang/Object;
.source "IoService.java"

# interfaces
.implements Lorg/apache/sshd/common/Closeable;
.implements Lorg/apache/sshd/common/io/IoServiceEventListenerManager;


# static fields
.field public static final DEFAULT_REUSE_ADDRESS:Z = true


# virtual methods
.method public abstract getManagedSessions()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/sshd/common/io/IoSession;",
            ">;"
        }
    .end annotation
.end method
