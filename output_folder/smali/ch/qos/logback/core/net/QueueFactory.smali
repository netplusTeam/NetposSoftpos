.class public Lch/qos/logback/core/net/QueueFactory;
.super Ljava/lang/Object;
.source "QueueFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newLinkedBlockingDeque(I)Ljava/util/concurrent/LinkedBlockingDeque;
    .locals 2
    .param p1, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "TE;>;"
        }
    .end annotation

    .line 36
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 37
    .local v0, "actualCapacity":I
    :goto_0
    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    return-object v1
.end method
