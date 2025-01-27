.class abstract Ljava9/util/stream/ReduceOps$CountingSink;
.super Ljava9/util/stream/ReduceOps$Box;
.source "ReduceOps.java"

# interfaces
.implements Ljava9/util/stream/ReduceOps$AccumulatingSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/ReduceOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CountingSink"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/stream/ReduceOps$CountingSink$OfDouble;,
        Ljava9/util/stream/ReduceOps$CountingSink$OfLong;,
        Ljava9/util/stream/ReduceOps$CountingSink$OfInt;,
        Ljava9/util/stream/ReduceOps$CountingSink$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/stream/ReduceOps$Box<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava9/util/stream/ReduceOps$AccumulatingSink<",
        "TT;",
        "Ljava/lang/Long;",
        "Ljava9/util/stream/ReduceOps$CountingSink<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field count:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 800
    .local p0, "this":Ljava9/util/stream/ReduceOps$CountingSink;, "Ljava9/util/stream/ReduceOps$CountingSink<TT;>;"
    invoke-direct {p0}, Ljava9/util/stream/ReduceOps$Box;-><init>()V

    .line 841
    return-void
.end method


# virtual methods
.method public begin(J)V
    .locals 2
    .param p1, "size"    # J

    .line 807
    .local p0, "this":Ljava9/util/stream/ReduceOps$CountingSink;, "Ljava9/util/stream/ReduceOps$CountingSink<TT;>;"
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava9/util/stream/ReduceOps$CountingSink;->count:J

    .line 808
    return-void
.end method

.method public bridge synthetic combine(Ljava9/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0

    .line 800
    .local p0, "this":Ljava9/util/stream/ReduceOps$CountingSink;, "Ljava9/util/stream/ReduceOps$CountingSink<TT;>;"
    check-cast p1, Ljava9/util/stream/ReduceOps$CountingSink;

    invoke-virtual {p0, p1}, Ljava9/util/stream/ReduceOps$CountingSink;->combine(Ljava9/util/stream/ReduceOps$CountingSink;)V

    return-void
.end method

.method public combine(Ljava9/util/stream/ReduceOps$CountingSink;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/ReduceOps$CountingSink<",
            "TT;>;)V"
        }
    .end annotation

    .line 817
    .local p0, "this":Ljava9/util/stream/ReduceOps$CountingSink;, "Ljava9/util/stream/ReduceOps$CountingSink<TT;>;"
    .local p1, "other":Ljava9/util/stream/ReduceOps$CountingSink;, "Ljava9/util/stream/ReduceOps$CountingSink<TT;>;"
    iget-wide v0, p0, Ljava9/util/stream/ReduceOps$CountingSink;->count:J

    iget-wide v2, p1, Ljava9/util/stream/ReduceOps$CountingSink;->count:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava9/util/stream/ReduceOps$CountingSink;->count:J

    .line 818
    return-void
.end method

.method public get()Ljava/lang/Long;
    .locals 2

    .line 812
    .local p0, "this":Ljava9/util/stream/ReduceOps$CountingSink;, "Ljava9/util/stream/ReduceOps$CountingSink<TT;>;"
    iget-wide v0, p0, Ljava9/util/stream/ReduceOps$CountingSink;->count:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 800
    .local p0, "this":Ljava9/util/stream/ReduceOps$CountingSink;, "Ljava9/util/stream/ReduceOps$CountingSink<TT;>;"
    invoke-virtual {p0}, Ljava9/util/stream/ReduceOps$CountingSink;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
