.class public final Lorg/jctools/queues/spec/ConcurrentQueueSpec;
.super Ljava/lang/Object;
.source "ConcurrentQueueSpec.java"


# instance fields
.field public final capacity:I

.field public final consumers:I

.field public final ordering:Lorg/jctools/queues/spec/Ordering;

.field public final preference:Lorg/jctools/queues/spec/Preference;

.field public final producers:I


# direct methods
.method public constructor <init>(IIILorg/jctools/queues/spec/Ordering;Lorg/jctools/queues/spec/Preference;)V
    .locals 0
    .param p1, "producers"    # I
    .param p2, "consumers"    # I
    .param p3, "capacity"    # I
    .param p4, "ordering"    # Lorg/jctools/queues/spec/Ordering;
    .param p5, "preference"    # Lorg/jctools/queues/spec/Preference;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->producers:I

    .line 51
    iput p2, p0, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->consumers:I

    .line 52
    iput p3, p0, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->capacity:I

    .line 53
    iput-object p4, p0, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->ordering:Lorg/jctools/queues/spec/Ordering;

    .line 54
    iput-object p5, p0, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->preference:Lorg/jctools/queues/spec/Preference;

    .line 55
    return-void
.end method

.method public static createBoundedMpmc(I)Lorg/jctools/queues/spec/ConcurrentQueueSpec;
    .locals 7
    .param p0, "capacity"    # I

    .line 44
    new-instance v6, Lorg/jctools/queues/spec/ConcurrentQueueSpec;

    sget-object v4, Lorg/jctools/queues/spec/Ordering;->FIFO:Lorg/jctools/queues/spec/Ordering;

    sget-object v5, Lorg/jctools/queues/spec/Preference;->NONE:Lorg/jctools/queues/spec/Preference;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v6

    move v3, p0

    invoke-direct/range {v0 .. v5}, Lorg/jctools/queues/spec/ConcurrentQueueSpec;-><init>(IIILorg/jctools/queues/spec/Ordering;Lorg/jctools/queues/spec/Preference;)V

    return-object v6
.end method

.method public static createBoundedMpsc(I)Lorg/jctools/queues/spec/ConcurrentQueueSpec;
    .locals 7
    .param p0, "capacity"    # I

    .line 34
    new-instance v6, Lorg/jctools/queues/spec/ConcurrentQueueSpec;

    sget-object v4, Lorg/jctools/queues/spec/Ordering;->FIFO:Lorg/jctools/queues/spec/Ordering;

    sget-object v5, Lorg/jctools/queues/spec/Preference;->NONE:Lorg/jctools/queues/spec/Preference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v0, v6

    move v3, p0

    invoke-direct/range {v0 .. v5}, Lorg/jctools/queues/spec/ConcurrentQueueSpec;-><init>(IIILorg/jctools/queues/spec/Ordering;Lorg/jctools/queues/spec/Preference;)V

    return-object v6
.end method

.method public static createBoundedSpmc(I)Lorg/jctools/queues/spec/ConcurrentQueueSpec;
    .locals 7
    .param p0, "capacity"    # I

    .line 39
    new-instance v6, Lorg/jctools/queues/spec/ConcurrentQueueSpec;

    sget-object v4, Lorg/jctools/queues/spec/Ordering;->FIFO:Lorg/jctools/queues/spec/Ordering;

    sget-object v5, Lorg/jctools/queues/spec/Preference;->NONE:Lorg/jctools/queues/spec/Preference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, v6

    move v3, p0

    invoke-direct/range {v0 .. v5}, Lorg/jctools/queues/spec/ConcurrentQueueSpec;-><init>(IIILorg/jctools/queues/spec/Ordering;Lorg/jctools/queues/spec/Preference;)V

    return-object v6
.end method

.method public static createBoundedSpsc(I)Lorg/jctools/queues/spec/ConcurrentQueueSpec;
    .locals 7
    .param p0, "capacity"    # I

    .line 29
    new-instance v6, Lorg/jctools/queues/spec/ConcurrentQueueSpec;

    sget-object v4, Lorg/jctools/queues/spec/Ordering;->FIFO:Lorg/jctools/queues/spec/Ordering;

    sget-object v5, Lorg/jctools/queues/spec/Preference;->NONE:Lorg/jctools/queues/spec/Preference;

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, v6

    move v3, p0

    invoke-direct/range {v0 .. v5}, Lorg/jctools/queues/spec/ConcurrentQueueSpec;-><init>(IIILorg/jctools/queues/spec/Ordering;Lorg/jctools/queues/spec/Preference;)V

    return-object v6
.end method


# virtual methods
.method public isBounded()Z
    .locals 1

    .line 79
    iget v0, p0, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->capacity:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMpmc()Z
    .locals 2

    .line 74
    iget v0, p0, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->consumers:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->producers:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isMpsc()Z
    .locals 2

    .line 64
    iget v0, p0, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->consumers:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->producers:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSpmc()Z
    .locals 2

    .line 69
    iget v0, p0, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->consumers:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->producers:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSpsc()Z
    .locals 2

    .line 59
    iget v0, p0, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->consumers:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/jctools/queues/spec/ConcurrentQueueSpec;->producers:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
