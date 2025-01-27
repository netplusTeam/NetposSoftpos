.class public Lorg/jpos/util/Recyclable;
.super Ljava/lang/Object;
.source "Recyclable.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private cycles:Ljava/util/concurrent/atomic/AtomicLong;

.field private maxCycles:J

.field private volatile obj:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private supplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;J)V
    .locals 1
    .param p2, "maxCycles"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "TT;>;J)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/jpos/util/Recyclable;, "Lorg/jpos/util/Recyclable<TT;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/jpos/util/Recyclable;->cycles:Ljava/util/concurrent/atomic/AtomicLong;

    .line 41
    iput-object p1, p0, Lorg/jpos/util/Recyclable;->supplier:Ljava/util/function/Supplier;

    .line 42
    iput-wide p2, p0, Lorg/jpos/util/Recyclable;->maxCycles:J

    .line 43
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 47
    .local p0, "this":Lorg/jpos/util/Recyclable;, "Lorg/jpos/util/Recyclable<TT;>;"
    iget-object v0, p0, Lorg/jpos/util/Recyclable;->cycles:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/jpos/util/Recyclable;->maxCycles:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jpos/util/Recyclable;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/jpos/util/Recyclable;->supplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/util/Recyclable;->obj:Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lorg/jpos/util/Recyclable;->cycles:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 51
    :cond_1
    iget-object v0, p0, Lorg/jpos/util/Recyclable;->obj:Ljava/lang/Object;

    return-object v0
.end method
