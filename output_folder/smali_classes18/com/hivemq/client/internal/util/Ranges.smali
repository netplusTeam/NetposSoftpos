.class public Lcom/hivemq/client/internal/util/Ranges;
.super Ljava/lang/Object;
.source "Ranges.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/util/Ranges$Range;
    }
.end annotation


# instance fields
.field private rootRange:Lcom/hivemq/client/internal/util/Ranges$Range;


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "minId"    # I
    .param p2, "maxId"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/hivemq/client/internal/util/Ranges$Range;

    add-int/lit8 v1, p2, 0x1

    invoke-direct {v0, p1, v1}, Lcom/hivemq/client/internal/util/Ranges$Range;-><init>(II)V

    iput-object v0, p0, Lcom/hivemq/client/internal/util/Ranges;->rootRange:Lcom/hivemq/client/internal/util/Ranges$Range;

    .line 33
    return-void
.end method

.method private returnId(Lcom/hivemq/client/internal/util/Ranges$Range;I)Lcom/hivemq/client/internal/util/Ranges$Range;
    .locals 4
    .param p1, "range"    # Lcom/hivemq/client/internal/util/Ranges$Range;
    .param p2, "id"    # I

    .line 66
    iget-object v0, p1, Lcom/hivemq/client/internal/util/Ranges$Range;->next:Lcom/hivemq/client/internal/util/Ranges$Range;

    .line 67
    .local v0, "next":Lcom/hivemq/client/internal/util/Ranges$Range;
    iget v1, p1, Lcom/hivemq/client/internal/util/Ranges$Range;->start:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    .line 68
    iput p2, p1, Lcom/hivemq/client/internal/util/Ranges$Range;->start:I

    .line 69
    return-object v2

    .line 71
    :cond_0
    iget v1, p1, Lcom/hivemq/client/internal/util/Ranges$Range;->end:I

    if-lt p2, v1, :cond_5

    .line 74
    iget v1, p1, Lcom/hivemq/client/internal/util/Ranges$Range;->end:I

    const-string v3, "The id is greater than maxId. This must not happen and is a bug."

    if-ne p2, v1, :cond_3

    .line 75
    if-eqz v0, :cond_2

    .line 78
    iget v1, p1, Lcom/hivemq/client/internal/util/Ranges$Range;->end:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/hivemq/client/internal/util/Ranges$Range;->end:I

    .line 79
    iget v1, p1, Lcom/hivemq/client/internal/util/Ranges$Range;->end:I

    iget v3, v0, Lcom/hivemq/client/internal/util/Ranges$Range;->start:I

    if-ne v1, v3, :cond_1

    .line 80
    iget v1, v0, Lcom/hivemq/client/internal/util/Ranges$Range;->end:I

    iput v1, p1, Lcom/hivemq/client/internal/util/Ranges$Range;->end:I

    .line 81
    iget-object v1, v0, Lcom/hivemq/client/internal/util/Ranges$Range;->next:Lcom/hivemq/client/internal/util/Ranges$Range;

    iput-object v1, p1, Lcom/hivemq/client/internal/util/Ranges$Range;->next:Lcom/hivemq/client/internal/util/Ranges$Range;

    .line 83
    :cond_1
    return-object v2

    .line 76
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_3
    if-eqz v0, :cond_4

    .line 88
    return-object v0

    .line 86
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The id was already returned. This must not happen and is a bug."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getId()I
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/hivemq/client/internal/util/Ranges;->rootRange:Lcom/hivemq/client/internal/util/Ranges$Range;

    iget v0, v0, Lcom/hivemq/client/internal/util/Ranges$Range;->start:I

    iget-object v1, p0, Lcom/hivemq/client/internal/util/Ranges;->rootRange:Lcom/hivemq/client/internal/util/Ranges$Range;

    iget v1, v1, Lcom/hivemq/client/internal/util/Ranges$Range;->end:I

    if-ne v0, v1, :cond_0

    .line 37
    const/4 v0, -0x1

    return v0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/util/Ranges;->rootRange:Lcom/hivemq/client/internal/util/Ranges$Range;

    iget v0, v0, Lcom/hivemq/client/internal/util/Ranges$Range;->start:I

    .line 40
    .local v0, "id":I
    iget-object v1, p0, Lcom/hivemq/client/internal/util/Ranges;->rootRange:Lcom/hivemq/client/internal/util/Ranges$Range;

    iget v2, v1, Lcom/hivemq/client/internal/util/Ranges$Range;->start:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/hivemq/client/internal/util/Ranges$Range;->start:I

    .line 41
    iget-object v1, p0, Lcom/hivemq/client/internal/util/Ranges;->rootRange:Lcom/hivemq/client/internal/util/Ranges$Range;

    iget v1, v1, Lcom/hivemq/client/internal/util/Ranges$Range;->start:I

    iget-object v2, p0, Lcom/hivemq/client/internal/util/Ranges;->rootRange:Lcom/hivemq/client/internal/util/Ranges$Range;

    iget v2, v2, Lcom/hivemq/client/internal/util/Ranges$Range;->end:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/hivemq/client/internal/util/Ranges;->rootRange:Lcom/hivemq/client/internal/util/Ranges$Range;

    iget-object v1, v1, Lcom/hivemq/client/internal/util/Ranges$Range;->next:Lcom/hivemq/client/internal/util/Ranges$Range;

    if-eqz v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/hivemq/client/internal/util/Ranges;->rootRange:Lcom/hivemq/client/internal/util/Ranges$Range;

    iget-object v1, v1, Lcom/hivemq/client/internal/util/Ranges$Range;->next:Lcom/hivemq/client/internal/util/Ranges$Range;

    iput-object v1, p0, Lcom/hivemq/client/internal/util/Ranges;->rootRange:Lcom/hivemq/client/internal/util/Ranges$Range;

    .line 44
    :cond_1
    return v0
.end method

.method public resize(I)I
    .locals 5
    .param p1, "maxId"    # I

    .line 92
    iget-object v0, p0, Lcom/hivemq/client/internal/util/Ranges;->rootRange:Lcom/hivemq/client/internal/util/Ranges$Range;

    .line 93
    .local v0, "range":Lcom/hivemq/client/internal/util/Ranges$Range;
    :goto_0
    iget v1, v0, Lcom/hivemq/client/internal/util/Ranges$Range;->end:I

    if-gt v1, p1, :cond_1

    .line 94
    iget-object v1, v0, Lcom/hivemq/client/internal/util/Ranges$Range;->next:Lcom/hivemq/client/internal/util/Ranges$Range;

    .line 95
    .local v1, "next":Lcom/hivemq/client/internal/util/Ranges$Range;
    if-nez v1, :cond_0

    .line 96
    add-int/lit8 v2, p1, 0x1

    iput v2, v0, Lcom/hivemq/client/internal/util/Ranges$Range;->end:I

    .line 97
    const/4 v2, 0x0

    return v2

    .line 99
    :cond_0
    move-object v0, v1

    .line 100
    .end local v1    # "next":Lcom/hivemq/client/internal/util/Ranges$Range;
    goto :goto_0

    .line 101
    :cond_1
    iget v1, v0, Lcom/hivemq/client/internal/util/Ranges$Range;->start:I

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v1, v2

    .line 102
    .local v1, "count":I
    if-gez v1, :cond_2

    .line 103
    const/4 v1, 0x0

    .line 105
    :cond_2
    :goto_1
    iget-object v2, v0, Lcom/hivemq/client/internal/util/Ranges$Range;->next:Lcom/hivemq/client/internal/util/Ranges$Range;

    if-eqz v2, :cond_3

    .line 106
    iget-object v2, v0, Lcom/hivemq/client/internal/util/Ranges$Range;->next:Lcom/hivemq/client/internal/util/Ranges$Range;

    .line 107
    .local v2, "next":Lcom/hivemq/client/internal/util/Ranges$Range;
    iget v3, v2, Lcom/hivemq/client/internal/util/Ranges$Range;->start:I

    iget v4, v0, Lcom/hivemq/client/internal/util/Ranges$Range;->end:I

    sub-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 108
    move-object v0, v2

    .line 109
    .end local v2    # "next":Lcom/hivemq/client/internal/util/Ranges$Range;
    goto :goto_1

    .line 110
    :cond_3
    if-nez v1, :cond_4

    .line 111
    add-int/lit8 v2, p1, 0x1

    iput v2, v0, Lcom/hivemq/client/internal/util/Ranges$Range;->end:I

    .line 113
    :cond_4
    return v1
.end method

.method public returnId(I)V
    .locals 4
    .param p1, "id"    # I

    .line 48
    iget-object v0, p0, Lcom/hivemq/client/internal/util/Ranges;->rootRange:Lcom/hivemq/client/internal/util/Ranges$Range;

    .line 49
    .local v0, "current":Lcom/hivemq/client/internal/util/Ranges$Range;
    iget v1, v0, Lcom/hivemq/client/internal/util/Ranges$Range;->start:I

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    .line 50
    new-instance v1, Lcom/hivemq/client/internal/util/Ranges$Range;

    add-int/lit8 v2, p1, 0x1

    invoke-direct {v1, p1, v2, v0}, Lcom/hivemq/client/internal/util/Ranges$Range;-><init>(IILcom/hivemq/client/internal/util/Ranges$Range;)V

    iput-object v1, p0, Lcom/hivemq/client/internal/util/Ranges;->rootRange:Lcom/hivemq/client/internal/util/Ranges$Range;

    .line 51
    return-void

    .line 53
    :cond_0
    move-object v1, v0

    .line 54
    .local v1, "prev":Lcom/hivemq/client/internal/util/Ranges$Range;
    invoke-direct {p0, v0, p1}, Lcom/hivemq/client/internal/util/Ranges;->returnId(Lcom/hivemq/client/internal/util/Ranges$Range;I)Lcom/hivemq/client/internal/util/Ranges$Range;

    move-result-object v0

    .line 55
    :goto_0
    if-eqz v0, :cond_2

    .line 56
    iget v2, v0, Lcom/hivemq/client/internal/util/Ranges$Range;->start:I

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_1

    .line 57
    new-instance v2, Lcom/hivemq/client/internal/util/Ranges$Range;

    add-int/lit8 v3, p1, 0x1

    invoke-direct {v2, p1, v3, v0}, Lcom/hivemq/client/internal/util/Ranges$Range;-><init>(IILcom/hivemq/client/internal/util/Ranges$Range;)V

    iput-object v2, v1, Lcom/hivemq/client/internal/util/Ranges$Range;->next:Lcom/hivemq/client/internal/util/Ranges$Range;

    .line 58
    return-void

    .line 60
    :cond_1
    move-object v1, v0

    .line 61
    invoke-direct {p0, v0, p1}, Lcom/hivemq/client/internal/util/Ranges;->returnId(Lcom/hivemq/client/internal/util/Ranges$Range;I)Lcom/hivemq/client/internal/util/Ranges$Range;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_2
    return-void
.end method
