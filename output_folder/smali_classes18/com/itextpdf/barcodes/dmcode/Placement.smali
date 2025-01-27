.class public Lcom/itextpdf/barcodes/dmcode/Placement;
.super Ljava/lang/Object;
.source "Placement.java"


# static fields
.field private static final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[S>;"
        }
    .end annotation
.end field


# instance fields
.field private final array:[S

.field private final ncol:I

.field private final nrow:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/barcodes/dmcode/Placement;->cache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 1
    .param p1, "nrow"    # I
    .param p2, "ncol"    # I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    .line 58
    iput p2, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    .line 59
    mul-int v0, p1, p2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->array:[S

    .line 60
    return-void
.end method

.method private corner1(I)V
    .locals 6
    .param p1, "chr"    # I

    .line 108
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1, v2}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 109
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0, v1, p1, v1}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 110
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    sub-int/2addr v0, v1

    const/4 v3, 0x2

    invoke-direct {p0, v0, v3, p1, v3}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 111
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v3

    const/4 v4, 0x3

    invoke-direct {p0, v2, v0, p1, v4}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 112
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v1

    const/4 v5, 0x4

    invoke-direct {p0, v2, v0, p1, v5}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 113
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v1

    const/4 v2, 0x5

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 114
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v1

    const/4 v2, 0x6

    invoke-direct {p0, v3, v0, p1, v2}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 115
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v1

    const/4 v1, 0x7

    invoke-direct {p0, v4, v0, p1, v1}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 116
    return-void
.end method

.method private corner2(I)V
    .locals 6
    .param p1, "chr"    # I

    .line 119
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1, v2}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 120
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    const/4 v3, 0x2

    sub-int/2addr v0, v3

    const/4 v4, 0x1

    invoke-direct {p0, v0, v2, p1, v4}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 121
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    sub-int/2addr v0, v4

    invoke-direct {p0, v0, v2, p1, v3}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 122
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    const/4 v5, 0x4

    sub-int/2addr v0, v5

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 123
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v2, v0, p1, v5}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 124
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v3

    const/4 v1, 0x5

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 125
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v4

    const/4 v1, 0x6

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 126
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v4

    const/4 v1, 0x7

    invoke-direct {p0, v4, v0, p1, v1}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 127
    return-void
.end method

.method private corner3(I)V
    .locals 6
    .param p1, "chr"    # I

    .line 130
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1, v2}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 131
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    const/4 v3, 0x2

    sub-int/2addr v0, v3

    const/4 v4, 0x1

    invoke-direct {p0, v0, v2, p1, v4}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 132
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    sub-int/2addr v0, v4

    invoke-direct {p0, v0, v2, p1, v3}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 133
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v3

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 134
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v4

    const/4 v5, 0x4

    invoke-direct {p0, v2, v0, p1, v5}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 135
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v4

    const/4 v2, 0x5

    invoke-direct {p0, v4, v0, p1, v2}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 136
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v4

    const/4 v2, 0x6

    invoke-direct {p0, v3, v0, p1, v2}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 137
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v4

    const/4 v2, 0x7

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 138
    return-void
.end method

.method private corner4(I)V
    .locals 6
    .param p1, "chr"    # I

    .line 141
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1, v2}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 142
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    sub-int/2addr v0, v1

    iget v3, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v3, v1

    invoke-direct {p0, v0, v3, p1, v1}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 143
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    const/4 v3, 0x3

    sub-int/2addr v0, v3

    const/4 v4, 0x2

    invoke-direct {p0, v2, v0, p1, v4}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 144
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v4

    invoke-direct {p0, v2, v0, p1, v3}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 145
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v1

    const/4 v5, 0x4

    invoke-direct {p0, v2, v0, p1, v5}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 146
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v3

    const/4 v2, 0x5

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 147
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v4

    const/4 v2, 0x6

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 148
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v1

    const/4 v2, 0x7

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 149
    return-void
.end method

.method public static doPlacement(II)[S
    .locals 6
    .param p0, "nrow"    # I
    .param p1, "ncol"    # I

    .line 71
    mul-int/lit16 v0, p0, 0x3e8

    add-int/2addr v0, p1

    .line 72
    .local v0, "key":I
    sget-object v1, Lcom/itextpdf/barcodes/dmcode/Placement;->cache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [S

    .line 73
    .local v2, "pc":[S
    if-eqz v2, :cond_0

    .line 74
    return-object v2

    .line 75
    :cond_0
    new-instance v3, Lcom/itextpdf/barcodes/dmcode/Placement;

    invoke-direct {v3, p0, p1}, Lcom/itextpdf/barcodes/dmcode/Placement;-><init>(II)V

    .line 76
    .local v3, "p":Lcom/itextpdf/barcodes/dmcode/Placement;
    invoke-direct {v3}, Lcom/itextpdf/barcodes/dmcode/Placement;->ecc200()V

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v3, Lcom/itextpdf/barcodes/dmcode/Placement;->array:[S

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v1, v3, Lcom/itextpdf/barcodes/dmcode/Placement;->array:[S

    return-object v1
.end method

.method private ecc200()V
    .locals 9

    .line 155
    iget-object v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->array:[S

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([SS)V

    .line 157
    const/4 v0, 0x1

    .line 158
    .local v0, "chr":I
    const/4 v1, 0x4

    .line 159
    .local v1, "row":I
    const/4 v2, 0x0

    .line 162
    .local v2, "col":I
    :goto_0
    iget v3, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    if-ne v1, v3, :cond_0

    if-nez v2, :cond_0

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "chr":I
    .local v3, "chr":I
    invoke-direct {p0, v0}, Lcom/itextpdf/barcodes/dmcode/Placement;->corner1(I)V

    move v0, v3

    .line 163
    .end local v3    # "chr":I
    .restart local v0    # "chr":I
    :cond_0
    iget v3, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    const/4 v5, 0x4

    if-ne v1, v3, :cond_1

    if-nez v2, :cond_1

    iget v3, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    rem-int/2addr v3, v5

    if-eqz v3, :cond_1

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "chr":I
    .restart local v3    # "chr":I
    invoke-direct {p0, v0}, Lcom/itextpdf/barcodes/dmcode/Placement;->corner2(I)V

    move v0, v3

    .line 164
    .end local v3    # "chr":I
    .restart local v0    # "chr":I
    :cond_1
    iget v3, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_2

    if-nez v2, :cond_2

    iget v3, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    rem-int/lit8 v3, v3, 0x8

    if-ne v3, v5, :cond_2

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "chr":I
    .restart local v3    # "chr":I
    invoke-direct {p0, v0}, Lcom/itextpdf/barcodes/dmcode/Placement;->corner3(I)V

    move v0, v3

    .line 165
    .end local v3    # "chr":I
    .restart local v0    # "chr":I
    :cond_2
    iget v3, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    add-int/2addr v3, v5

    if-ne v1, v3, :cond_3

    if-ne v2, v4, :cond_3

    iget v3, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    rem-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_3

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "chr":I
    .restart local v3    # "chr":I
    invoke-direct {p0, v0}, Lcom/itextpdf/barcodes/dmcode/Placement;->corner4(I)V

    move v0, v3

    .line 168
    .end local v3    # "chr":I
    .restart local v0    # "chr":I
    :cond_3
    iget v3, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    if-ge v1, v3, :cond_4

    if-ltz v2, :cond_4

    iget-object v3, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->array:[S

    iget v5, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v2

    aget-short v3, v3, v5

    if-nez v3, :cond_4

    .line 169
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "chr":I
    .restart local v3    # "chr":I
    invoke-direct {p0, v1, v2, v0}, Lcom/itextpdf/barcodes/dmcode/Placement;->utah(III)V

    move v0, v3

    .line 170
    .end local v3    # "chr":I
    .restart local v0    # "chr":I
    :cond_4
    add-int/lit8 v1, v1, -0x2

    .line 171
    add-int/lit8 v2, v2, 0x2

    .line 172
    if-ltz v1, :cond_5

    iget v3, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    if-lt v2, v3, :cond_3

    .line 173
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 174
    add-int/lit8 v2, v2, 0x3

    .line 178
    :cond_6
    if-ltz v1, :cond_7

    iget v3, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    if-ge v2, v3, :cond_7

    iget-object v5, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->array:[S

    mul-int/2addr v3, v1

    add-int/2addr v3, v2

    aget-short v3, v5, v3

    if-nez v3, :cond_7

    .line 179
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "chr":I
    .restart local v3    # "chr":I
    invoke-direct {p0, v1, v2, v0}, Lcom/itextpdf/barcodes/dmcode/Placement;->utah(III)V

    move v0, v3

    .line 180
    .end local v3    # "chr":I
    .restart local v0    # "chr":I
    :cond_7
    add-int/lit8 v1, v1, 0x2

    .line 181
    add-int/lit8 v2, v2, -0x2

    .line 182
    iget v3, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    if-ge v1, v3, :cond_8

    if-gez v2, :cond_6

    .line 183
    :cond_8
    add-int/lit8 v1, v1, 0x3

    .line 184
    add-int/lit8 v2, v2, 0x1

    .line 186
    if-lt v1, v3, :cond_a

    iget v5, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    if-lt v2, v5, :cond_a

    .line 188
    iget-object v6, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->array:[S

    mul-int v7, v3, v5

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    aget-short v7, v6, v7

    if-nez v7, :cond_9

    .line 189
    mul-int v7, v3, v5

    sub-int/2addr v7, v8

    mul-int/2addr v3, v5

    sub-int/2addr v3, v5

    sub-int/2addr v3, v4

    aput-short v8, v6, v3

    aput-short v8, v6, v7

    .line 191
    :cond_9
    return-void

    .line 186
    :cond_a
    goto/16 :goto_0
.end method

.method private module(IIII)V
    .locals 3
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "chr"    # I
    .param p4, "bit"    # I

    .line 83
    if-gez p1, :cond_0

    .line 84
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    add-int/2addr p1, v0

    .line 85
    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr p2, v0

    .line 87
    :cond_0
    if-gez p2, :cond_1

    .line 88
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    add-int/2addr p2, v0

    .line 89
    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr p1, v0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->array:[S

    iget v1, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    mul-int/lit8 v2, p3, 0x8

    add-int/2addr v2, p4

    int-to-short v2, v2

    aput-short v2, v0, v1

    .line 92
    return-void
.end method

.method private utah(III)V
    .locals 3
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "chr"    # I

    .line 96
    add-int/lit8 v0, p1, -0x2

    add-int/lit8 v1, p2, -0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 97
    add-int/lit8 v0, p1, -0x2

    add-int/lit8 v1, p2, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 98
    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v1, p2, -0x2

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 99
    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v1, p2, -0x1

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 100
    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x4

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 101
    add-int/lit8 v0, p2, -0x2

    const/4 v1, 0x5

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 102
    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x6

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 103
    const/4 v0, 0x7

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 104
    return-void
.end method
