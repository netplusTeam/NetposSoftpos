.class final Lorg/apache/commons/codec/language/bm/Rule$Phoneme$1;
.super Ljava/lang/Object;
.source "Rule.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/codec/language/bm/Rule$Phoneme;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 84
    check-cast p1, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    check-cast p2, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme$1;->compare(Lorg/apache/commons/codec/language/bm/Rule$Phoneme;Lorg/apache/commons/codec/language/bm/Rule$Phoneme;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/commons/codec/language/bm/Rule$Phoneme;Lorg/apache/commons/codec/language/bm/Rule$Phoneme;)I
    .locals 3
    .param p1, "o1"    # Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    .param p2, "o2"    # Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {p1}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->access$000(Lorg/apache/commons/codec/language/bm/Rule$Phoneme;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 88
    invoke-static {p2}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->access$000(Lorg/apache/commons/codec/language/bm/Rule$Phoneme;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 89
    const/4 v1, 0x1

    return v1

    .line 91
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->access$000(Lorg/apache/commons/codec/language/bm/Rule$Phoneme;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-static {p2}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->access$000(Lorg/apache/commons/codec/language/bm/Rule$Phoneme;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    sub-int/2addr v1, v2

    .line 92
    .local v1, "c":I
    if-eqz v1, :cond_1

    .line 93
    return v1

    .line 87
    .end local v1    # "c":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "i":I
    :cond_2
    invoke-static {p1}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->access$000(Lorg/apache/commons/codec/language/bm/Rule$Phoneme;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-static {p2}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->access$000(Lorg/apache/commons/codec/language/bm/Rule$Phoneme;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 98
    const/4 v0, -0x1

    return v0

    .line 101
    :cond_3
    const/4 v0, 0x0

    return v0
.end method
