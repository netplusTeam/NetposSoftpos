.class public final Ljdbm/helper/LongComparator;
.super Ljava/lang/Object;
.source "LongComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .param p1, "obj1"    # Ljava/lang/Object;
    .param p2, "obj2"    # Ljava/lang/Object;

    .line 78
    if-eqz p1, :cond_3

    .line 82
    if-eqz p2, :cond_2

    .line 86
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 87
    .local v0, "l1":J
    move-object v2, p2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 89
    .local v2, "l2":J
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 90
    const/4 v4, 0x1

    return v4

    .line 91
    :cond_0
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 92
    const/4 v4, 0x0

    return v4

    .line 94
    :cond_1
    const/4 v4, -0x1

    return v4

    .line 83
    .end local v0    # "l1":J
    .end local v2    # "l2":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument \'obj2\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument \'obj1\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
