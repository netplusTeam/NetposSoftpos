.class public Lorg/jpos/util/BlockingQueue$Closed;
.super Ljava/lang/RuntimeException;
.source "BlockingQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/util/BlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Closed"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2f4095819773f3caL


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    const-string v0, "queue-closed"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method
