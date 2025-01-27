.class public final Ljdbm/helper/IntegerComparator;
.super Ljava/lang/Object;
.source "IntegerComparator.java"

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
    .locals 3
    .param p1, "obj1"    # Ljava/lang/Object;
    .param p2, "obj2"    # Ljava/lang/Object;

    .line 78
    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 79
    return v0

    .line 82
    :cond_0
    if-eqz p1, :cond_4

    .line 86
    if-eqz p2, :cond_3

    .line 92
    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 93
    .local v1, "int1":I
    move-object v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 94
    .local v2, "int2":I
    if-ne v1, v2, :cond_1

    .line 95
    return v0

    .line 98
    :cond_1
    if-ge v1, v2, :cond_2

    .line 99
    const/4 v0, -0x1

    return v0

    .line 101
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 87
    .end local v1    # "int1":I
    .end local v2    # "int2":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument \'obj2\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument \'obj1\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
