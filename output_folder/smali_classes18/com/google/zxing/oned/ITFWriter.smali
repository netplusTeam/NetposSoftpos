.class public final Lcom/google/zxing/oned/ITFWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "ITFWriter.java"


# static fields
.field private static final END_PATTERN:[I

.field private static final N:I = 0x1

.field private static final PATTERNS:[[I

.field private static final START_PATTERN:[I

.field private static final W:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 32
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/zxing/oned/ITFWriter;->START_PATTERN:[I

    .line 33
    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    sput-object v2, Lcom/google/zxing/oned/ITFWriter;->END_PATTERN:[I

    .line 40
    const/16 v2, 0xa

    new-array v2, v2, [[I

    const/4 v3, 0x5

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v5, 0x2

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    aput-object v4, v2, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    aput-object v1, v2, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_7

    aput-object v0, v2, v3

    new-array v0, v3, [I

    fill-array-data v0, :array_8

    const/4 v1, 0x6

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_9

    const/4 v1, 0x7

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_a

    const/16 v1, 0x8

    aput-object v0, v2, v1

    new-array v0, v3, [I

    fill-array-data v0, :array_b

    const/16 v1, 0x9

    aput-object v0, v2, v1

    sput-object v2, Lcom/google/zxing/oned/ITFWriter;->PATTERNS:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x1
        0x3
        0x3
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x3
        0x3
        0x1
        0x1
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x3
        0x3
        0x1
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x3
    .end array-data

    :array_a
    .array-data 4
        0x3
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x3
        0x1
        0x3
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .locals 12
    .param p1, "contents"    # Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 61
    .local v2, "length":I
    move v2, v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 64
    const/16 v0, 0x50

    if-gt v2, v0, :cond_2

    .line 69
    invoke-static {p1}, Lcom/google/zxing/oned/ITFWriter;->checkNumeric(Ljava/lang/String;)V

    .line 71
    mul-int/lit8 v0, v2, 0x9

    add-int/lit8 v0, v0, 0x9

    new-array v0, v0, [Z

    const/4 v3, 0x0

    .line 72
    .local v3, "result":[Z
    move-object v3, v0

    sget-object v4, Lcom/google/zxing/oned/ITFWriter;->START_PATTERN:[I

    const/4 v5, 0x1

    invoke-static {v0, v1, v4, v5}, Lcom/google/zxing/oned/ITFWriter;->appendPattern([ZI[IZ)I

    move-result v0

    .line 73
    .local v0, "pos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 74
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0xa

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 75
    .local v4, "one":I
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    .line 76
    .local v7, "two":I
    new-array v6, v6, [I

    .line 77
    .local v6, "encoding":[I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    const/4 v9, 0x5

    if-ge v8, v9, :cond_0

    .line 78
    mul-int/lit8 v9, v8, 0x2

    sget-object v10, Lcom/google/zxing/oned/ITFWriter;->PATTERNS:[[I

    aget-object v11, v10, v4

    aget v11, v11, v8

    aput v11, v6, v9

    .line 79
    mul-int/lit8 v9, v8, 0x2

    add-int/2addr v9, v5

    aget-object v10, v10, v7

    aget v10, v10, v8

    aput v10, v6, v9

    .line 77
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 81
    .end local v8    # "j":I
    :cond_0
    invoke-static {v3, v0, v6, v5}, Lcom/google/zxing/oned/ITFWriter;->appendPattern([ZI[IZ)I

    move-result v8

    add-int/2addr v0, v8

    .line 73
    .end local v4    # "one":I
    .end local v6    # "encoding":[I
    .end local v7    # "two":I
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 83
    .end local v1    # "i":I
    :cond_1
    sget-object v1, Lcom/google/zxing/oned/ITFWriter;->END_PATTERN:[I

    invoke-static {v3, v0, v1, v5}, Lcom/google/zxing/oned/ITFWriter;->appendPattern([ZI[IZ)I

    .line 85
    return-object v3

    .line 65
    .end local v0    # "pos":I
    .end local v3    # "result":[Z
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Requested contents should be less than 80 digits long, but got "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The length of the input should be even"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getSupportedWriteFormats()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    .line 55
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
