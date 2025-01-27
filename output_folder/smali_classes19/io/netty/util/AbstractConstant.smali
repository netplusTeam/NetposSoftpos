.class public abstract Lio/netty/util/AbstractConstant;
.super Ljava/lang/Object;
.source "AbstractConstant.java"

# interfaces
.implements Lio/netty/util/Constant;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/netty/util/AbstractConstant<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lio/netty/util/Constant<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final uniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final id:I

.field private final name:Ljava/lang/String;

.field private final uniquifier:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lio/netty/util/AbstractConstant;->uniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 33
    .local p0, "this":Lio/netty/util/AbstractConstant;, "Lio/netty/util/AbstractConstant<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lio/netty/util/AbstractConstant;->id:I

    .line 35
    iput-object p2, p0, Lio/netty/util/AbstractConstant;->name:Ljava/lang/String;

    .line 36
    sget-object v0, Lio/netty/util/AbstractConstant;->uniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/util/AbstractConstant;->uniquifier:J

    .line 37
    return-void
.end method


# virtual methods
.method public final compareTo(Lio/netty/util/AbstractConstant;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 66
    .local p0, "this":Lio/netty/util/AbstractConstant;, "Lio/netty/util/AbstractConstant<TT;>;"
    .local p1, "o":Lio/netty/util/AbstractConstant;, "TT;"
    if-ne p0, p1, :cond_0

    .line 67
    const/4 v0, 0x0

    return v0

    .line 71
    :cond_0
    move-object v0, p1

    .line 74
    .local v0, "other":Lio/netty/util/AbstractConstant;, "Lio/netty/util/AbstractConstant<TT;>;"
    invoke-virtual {p0}, Lio/netty/util/AbstractConstant;->hashCode()I

    move-result v1

    invoke-virtual {v0}, Lio/netty/util/AbstractConstant;->hashCode()I

    move-result v2

    sub-int/2addr v1, v2

    .line 75
    .local v1, "returnCode":I
    if-eqz v1, :cond_1

    .line 76
    return v1

    .line 79
    :cond_1
    iget-wide v2, p0, Lio/netty/util/AbstractConstant;->uniquifier:J

    iget-wide v4, v0, Lio/netty/util/AbstractConstant;->uniquifier:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    .line 80
    const/4 v2, -0x1

    return v2

    .line 82
    :cond_2
    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 83
    const/4 v2, 0x1

    return v2

    .line 86
    :cond_3
    new-instance v2, Ljava/lang/Error;

    const-string v3, "failed to compare two different constants"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 23
    .local p0, "this":Lio/netty/util/AbstractConstant;, "Lio/netty/util/AbstractConstant<TT;>;"
    check-cast p1, Lio/netty/util/AbstractConstant;

    invoke-virtual {p0, p1}, Lio/netty/util/AbstractConstant;->compareTo(Lio/netty/util/AbstractConstant;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 61
    .local p0, "this":Lio/netty/util/AbstractConstant;, "Lio/netty/util/AbstractConstant<TT;>;"
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 56
    .local p0, "this":Lio/netty/util/AbstractConstant;, "Lio/netty/util/AbstractConstant<TT;>;"
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final id()I
    .locals 1

    .line 46
    .local p0, "this":Lio/netty/util/AbstractConstant;, "Lio/netty/util/AbstractConstant<TT;>;"
    iget v0, p0, Lio/netty/util/AbstractConstant;->id:I

    return v0
.end method

.method public final name()Ljava/lang/String;
    .locals 1

    .line 41
    .local p0, "this":Lio/netty/util/AbstractConstant;, "Lio/netty/util/AbstractConstant<TT;>;"
    iget-object v0, p0, Lio/netty/util/AbstractConstant;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 51
    .local p0, "this":Lio/netty/util/AbstractConstant;, "Lio/netty/util/AbstractConstant<TT;>;"
    invoke-virtual {p0}, Lio/netty/util/AbstractConstant;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
