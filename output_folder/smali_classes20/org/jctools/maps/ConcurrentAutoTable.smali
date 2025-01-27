.class public Lorg/jctools/maps/ConcurrentAutoTable;
.super Ljava/lang/Object;
.source "ConcurrentAutoTable.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jctools/maps/ConcurrentAutoTable$CAT;
    }
.end annotation


# static fields
.field private static _catUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lorg/jctools/maps/ConcurrentAutoTable;",
            "Lorg/jctools/maps/ConcurrentAutoTable$CAT;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile _cat:Lorg/jctools/maps/ConcurrentAutoTable$CAT;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 99
    const-class v0, Lorg/jctools/maps/ConcurrentAutoTable;

    const-class v1, Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    .line 100
    const-string v2, "_cat"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/jctools/maps/ConcurrentAutoTable;->_catUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 99
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    const/4 v1, 0x0

    const/16 v2, 0x10

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;-><init>(Lorg/jctools/maps/ConcurrentAutoTable$CAT;IJ)V

    iput-object v0, p0, Lorg/jctools/maps/ConcurrentAutoTable;->_cat:Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    return-void
.end method

.method private CAS_cat(Lorg/jctools/maps/ConcurrentAutoTable$CAT;Lorg/jctools/maps/ConcurrentAutoTable$CAT;)Z
    .locals 1
    .param p1, "oldcat"    # Lorg/jctools/maps/ConcurrentAutoTable$CAT;
    .param p2, "newcat"    # Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    .line 101
    sget-object v0, Lorg/jctools/maps/ConcurrentAutoTable;->_catUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p0, p1, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/jctools/maps/ConcurrentAutoTable;)Lorg/jctools/maps/ConcurrentAutoTable$CAT;
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/ConcurrentAutoTable;

    .line 32
    iget-object v0, p0, Lorg/jctools/maps/ConcurrentAutoTable;->_cat:Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    return-object v0
.end method

.method static synthetic access$200(Lorg/jctools/maps/ConcurrentAutoTable;Lorg/jctools/maps/ConcurrentAutoTable$CAT;Lorg/jctools/maps/ConcurrentAutoTable$CAT;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/ConcurrentAutoTable;
    .param p1, "x1"    # Lorg/jctools/maps/ConcurrentAutoTable$CAT;
    .param p2, "x2"    # Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    .line 32
    invoke-direct {p0, p1, p2}, Lorg/jctools/maps/ConcurrentAutoTable;->CAS_cat(Lorg/jctools/maps/ConcurrentAutoTable$CAT;Lorg/jctools/maps/ConcurrentAutoTable$CAT;)Z

    move-result v0

    return v0
.end method

.method private add_if(J)J
    .locals 2
    .param p1, "x"    # J

    .line 95
    iget-object v0, p0, Lorg/jctools/maps/ConcurrentAutoTable;->_cat:Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    invoke-static {}, Lorg/jctools/maps/ConcurrentAutoTable;->hash()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1, p0}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->add_if(JILorg/jctools/maps/ConcurrentAutoTable;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static hash()I
    .locals 2

    .line 106
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 107
    .local v0, "h":I
    shl-int/lit8 v1, v0, 0x3

    return v1
.end method


# virtual methods
.method public add(J)V
    .locals 0
    .param p1, "x"    # J

    .line 43
    invoke-direct {p0, p1, p2}, Lorg/jctools/maps/ConcurrentAutoTable;->add_if(J)J

    return-void
.end method

.method public decrement()V
    .locals 2

    .line 45
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lorg/jctools/maps/ConcurrentAutoTable;->add_if(J)J

    return-void
.end method

.method public estimate_get()J
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/jctools/maps/ConcurrentAutoTable;->_cat:Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    invoke-virtual {v0}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->estimate_sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public get()J
    .locals 2

    .line 63
    iget-object v0, p0, Lorg/jctools/maps/ConcurrentAutoTable;->_cat:Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    invoke-virtual {v0}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public increment()V
    .locals 2

    .line 47
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lorg/jctools/maps/ConcurrentAutoTable;->add_if(J)J

    return-void
.end method

.method public intValue()I
    .locals 2

    .line 65
    iget-object v0, p0, Lorg/jctools/maps/ConcurrentAutoTable;->_cat:Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    invoke-virtual {v0}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->sum()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public internal_size()I
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/jctools/maps/ConcurrentAutoTable;->_cat:Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    invoke-static {v0}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->access$000(Lorg/jctools/maps/ConcurrentAutoTable$CAT;)[J

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 67
    iget-object v0, p0, Lorg/jctools/maps/ConcurrentAutoTable;->_cat:Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    invoke-virtual {v0}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public print()V
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/jctools/maps/ConcurrentAutoTable;->_cat:Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    invoke-virtual {v0}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->print()V

    return-void
.end method

.method public set(J)V
    .locals 3
    .param p1, "x"    # J

    .line 53
    new-instance v0, Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, p1, p2}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;-><init>(Lorg/jctools/maps/ConcurrentAutoTable$CAT;IJ)V

    .line 55
    .local v0, "newcat":Lorg/jctools/maps/ConcurrentAutoTable$CAT;
    :goto_0
    iget-object v1, p0, Lorg/jctools/maps/ConcurrentAutoTable;->_cat:Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    invoke-direct {p0, v1, v0}, Lorg/jctools/maps/ConcurrentAutoTable;->CAS_cat(Lorg/jctools/maps/ConcurrentAutoTable$CAT;Lorg/jctools/maps/ConcurrentAutoTable$CAT;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/jctools/maps/ConcurrentAutoTable;->_cat:Lorg/jctools/maps/ConcurrentAutoTable$CAT;

    invoke-virtual {v0}, Lorg/jctools/maps/ConcurrentAutoTable$CAT;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
