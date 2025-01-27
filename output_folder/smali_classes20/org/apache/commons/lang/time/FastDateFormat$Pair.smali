.class Lorg/apache/commons/lang/time/FastDateFormat$Pair;
.super Ljava/lang/Object;
.source "FastDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/time/FastDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Pair"
.end annotation


# instance fields
.field private final mObj1:Ljava/lang/Object;

.field private final mObj2:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj1"    # Ljava/lang/Object;
    .param p2, "obj2"    # Ljava/lang/Object;

    .line 1704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1705
    iput-object p1, p0, Lorg/apache/commons/lang/time/FastDateFormat$Pair;->mObj1:Ljava/lang/Object;

    .line 1706
    iput-object p2, p0, Lorg/apache/commons/lang/time/FastDateFormat$Pair;->mObj2:Ljava/lang/Object;

    .line 1707
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1713
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1714
    return v0

    .line 1717
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/lang/time/FastDateFormat$Pair;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1718
    return v2

    .line 1721
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/lang/time/FastDateFormat$Pair;

    .line 1723
    .local v1, "key":Lorg/apache/commons/lang/time/FastDateFormat$Pair;
    iget-object v3, p0, Lorg/apache/commons/lang/time/FastDateFormat$Pair;->mObj1:Ljava/lang/Object;

    if-nez v3, :cond_2

    iget-object v3, v1, Lorg/apache/commons/lang/time/FastDateFormat$Pair;->mObj1:Ljava/lang/Object;

    if-nez v3, :cond_4

    goto :goto_0

    :cond_2
    iget-object v4, v1, Lorg/apache/commons/lang/time/FastDateFormat$Pair;->mObj1:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_0
    iget-object v3, p0, Lorg/apache/commons/lang/time/FastDateFormat$Pair;->mObj2:Ljava/lang/Object;

    if-nez v3, :cond_3

    iget-object v3, v1, Lorg/apache/commons/lang/time/FastDateFormat$Pair;->mObj2:Ljava/lang/Object;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_3
    iget-object v4, v1, Lorg/apache/commons/lang/time/FastDateFormat$Pair;->mObj2:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1734
    iget-object v0, p0, Lorg/apache/commons/lang/time/FastDateFormat$Pair;->mObj1:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/lang/time/FastDateFormat$Pair;->mObj2:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1743
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang/time/FastDateFormat$Pair;->mObj1:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang/time/FastDateFormat$Pair;->mObj2:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
