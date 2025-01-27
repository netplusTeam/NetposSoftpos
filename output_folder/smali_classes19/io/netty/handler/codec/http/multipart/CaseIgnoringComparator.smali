.class final Lio/netty/handler/codec/http/multipart/CaseIgnoringComparator;
.super Ljava/lang/Object;
.source "CaseIgnoringComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/CharSequence;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lio/netty/handler/codec/http/multipart/CaseIgnoringComparator;

.field private static final serialVersionUID:J = 0x3f9701da7c75fa26L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lio/netty/handler/codec/http/multipart/CaseIgnoringComparator;

    invoke-direct {v0}, Lio/netty/handler/codec/http/multipart/CaseIgnoringComparator;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http/multipart/CaseIgnoringComparator;->INSTANCE:Lio/netty/handler/codec/http/multipart/CaseIgnoringComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 54
    sget-object v0, Lio/netty/handler/codec/http/multipart/CaseIgnoringComparator;->INSTANCE:Lio/netty/handler/codec/http/multipart/CaseIgnoringComparator;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 7
    .param p1, "o1"    # Ljava/lang/CharSequence;
    .param p2, "o2"    # Ljava/lang/CharSequence;

    .line 32
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 33
    .local v0, "o1Length":I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 34
    .local v1, "o2Length":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 35
    .local v2, "min":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 36
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 37
    .local v4, "c1":C
    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 38
    .local v5, "c2":C
    if-eq v4, v5, :cond_0

    .line 39
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 40
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 41
    if-eq v4, v5, :cond_0

    .line 42
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    .line 43
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    .line 44
    if-eq v4, v5, :cond_0

    .line 45
    sub-int v6, v4, v5

    return v6

    .line 35
    .end local v4    # "c1":C
    .end local v5    # "c2":C
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    .end local v3    # "i":I
    :cond_1
    sub-int v3, v0, v1

    return v3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/multipart/CaseIgnoringComparator;->compare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p1

    return p1
.end method
