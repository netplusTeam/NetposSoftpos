.class public Lcom/itextpdf/kernel/counter/data/EventData;
.super Ljava/lang/Object;
.source "EventData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private count:J

.field private final signature:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventData;, "Lcom/itextpdf/kernel/counter/data/EventData<TT;>;"
    .local p1, "signature":Ljava/lang/Object;, "TT;"
    const-wide/16 v0, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/kernel/counter/data/EventData;-><init>(Ljava/lang/Object;J)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 0
    .param p2, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 63
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventData;, "Lcom/itextpdf/kernel/counter/data/EventData<TT;>;"
    .local p1, "signature":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/itextpdf/kernel/counter/data/EventData;->signature:Ljava/lang/Object;

    .line 65
    iput-wide p2, p0, Lcom/itextpdf/kernel/counter/data/EventData;->count:J

    .line 66
    return-void
.end method


# virtual methods
.method public final getCount()J
    .locals 2

    .line 83
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventData;, "Lcom/itextpdf/kernel/counter/data/EventData<TT;>;"
    iget-wide v0, p0, Lcom/itextpdf/kernel/counter/data/EventData;->count:J

    return-wide v0
.end method

.method public final getSignature()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventData;, "Lcom/itextpdf/kernel/counter/data/EventData<TT;>;"
    iget-object v0, p0, Lcom/itextpdf/kernel/counter/data/EventData;->signature:Ljava/lang/Object;

    return-object v0
.end method

.method protected mergeWith(Lcom/itextpdf/kernel/counter/data/EventData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/counter/data/EventData<",
            "TT;>;)V"
        }
    .end annotation

    .line 87
    .local p0, "this":Lcom/itextpdf/kernel/counter/data/EventData;, "Lcom/itextpdf/kernel/counter/data/EventData<TT;>;"
    .local p1, "data":Lcom/itextpdf/kernel/counter/data/EventData;, "Lcom/itextpdf/kernel/counter/data/EventData<TT;>;"
    iget-wide v0, p0, Lcom/itextpdf/kernel/counter/data/EventData;->count:J

    invoke-virtual {p1}, Lcom/itextpdf/kernel/counter/data/EventData;->getCount()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/kernel/counter/data/EventData;->count:J

    .line 88
    return-void
.end method
