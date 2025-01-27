.class public Lorg/jpos/iso/packager/DecimalTagMapper;
.super Ljava/lang/Object;
.source "DecimalTagMapper.java"

# interfaces
.implements Lorg/jpos/iso/packager/TagMapper;


# static fields
.field static final RADIX_ALFANUM:I = 0x24

.field static final RADIX_DECIMAL:I = 0xa


# instance fields
.field private final tagMaxValue:I

.field private final tagMaxValueUpperLetter:I

.field protected final tagSize:I


# direct methods
.method protected constructor <init>(I)V
    .locals 2
    .param p1, "tagSize"    # I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lorg/jpos/iso/packager/DecimalTagMapper;->tagSize:I

    .line 62
    const/4 v0, 0x1

    .line 63
    .local v0, "tmv":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 64
    mul-int/lit8 v0, v0, 0xa

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/jpos/iso/packager/DecimalTagMapper;->tagMaxValue:I

    .line 68
    const/4 v0, 0x1

    .line 69
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, p1, :cond_1

    .line 70
    mul-int/lit8 v0, v0, 0x24

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 72
    .end local v1    # "i":I
    :cond_1
    iget v1, p0, Lorg/jpos/iso/packager/DecimalTagMapper;->tagMaxValue:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jpos/iso/packager/DecimalTagMapper;->tagMaxValueUpperLetter:I

    .line 73
    return-void
.end method

.method private static containsLowerLatinAlpha(Ljava/lang/String;)Z
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-char v5, v1, v4

    .line 177
    .local v5, "c":C
    const/16 v6, 0x61

    if-lt v5, v6, :cond_0

    const/16 v6, 0x7a

    if-gt v5, v6, :cond_0

    .line 178
    add-int/lit8 v0, v0, 0x1

    .line 176
    .end local v5    # "c":C
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 180
    :cond_1
    if-lez v0, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method private static containsUpperLatinAlpha(Ljava/lang/String;)Z
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-char v5, v1, v4

    .line 186
    .local v5, "c":C
    const/16 v6, 0x41

    if-lt v5, v6, :cond_0

    const/16 v6, 0x5a

    if-gt v5, v6, :cond_0

    .line 187
    add-int/lit8 v0, v0, 0x1

    .line 185
    .end local v5    # "c":C
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 189
    :cond_1
    if-lez v0, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method private static leftZeroPad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 167
    :try_start_0
    invoke-static {p0, p1}, Lorg/jpos/iso/ISOUtil;->zeropad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 168
    :catch_0
    move-exception v0

    .line 170
    .local v0, "ex":Lorg/jpos/iso/ISOException;
    return-object p0
.end method


# virtual methods
.method public getFieldNumberForTag(ILjava/lang/String;)Ljava/lang/Integer;
    .locals 6
    .param p1, "fieldNumber"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 121
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    .line 126
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lorg/jpos/iso/packager/DecimalTagMapper;->tagSize:I

    const/4 v4, 0x2

    if-ne v2, v3, :cond_3

    .line 134
    const/16 v2, 0xa

    .line 135
    .local v2, "radix":I
    invoke-static {p2}, Lorg/jpos/iso/packager/DecimalTagMapper;->containsUpperLatinAlpha(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p2}, Lorg/jpos/iso/packager/DecimalTagMapper;->containsLowerLatinAlpha(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 137
    const/16 v2, 0x24

    .line 141
    :cond_0
    :try_start_0
    invoke-static {p2, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .local v3, "res":I
    nop

    .line 150
    if-ltz v3, :cond_2

    .line 158
    const/16 v0, 0x24

    if-ne v2, v0, :cond_1

    .line 160
    iget v0, p0, Lorg/jpos/iso/packager/DecimalTagMapper;->tagMaxValue:I

    add-int/2addr v0, v1

    add-int/2addr v3, v0

    .line 162
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 151
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v0

    .line 154
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    .line 152
    const-string v0, "The subtag id: %s of DE%d cannot be negative"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 142
    .end local v3    # "res":I
    :catch_0
    move-exception v3

    .line 143
    .local v3, "ex":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/NumberFormatException;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v0

    .line 146
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    .line 144
    const-string v0, "The subtag \'%s\' of DE%d cannot be converted to integer value"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 127
    .end local v2    # "radix":I
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v0

    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    iget v0, p0, Lorg/jpos/iso/packager/DecimalTagMapper;->tagSize:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    .line 128
    const-string v0, "The subtag id: \'%s\' length of DE%d must be %d"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "The subtag id of DE%d cannot be null"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getTagForField(II)Ljava/lang/String;
    .locals 9
    .param p1, "fieldNumber"    # I
    .param p2, "subFieldNumber"    # I

    .line 84
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz p2, :cond_3

    iget v3, p0, Lorg/jpos/iso/packager/DecimalTagMapper;->tagMaxValueUpperLetter:I

    if-gt p2, v3, :cond_3

    .line 92
    const/16 v3, 0xa

    .line 93
    .local v3, "radix":I
    move v4, p2

    .line 94
    .local v4, "fn":I
    iget v5, p0, Lorg/jpos/iso/packager/DecimalTagMapper;->tagMaxValue:I

    if-le v4, v5, :cond_0

    .line 95
    const/16 v3, 0x24

    .line 96
    add-int/2addr v5, v2

    sub-int/2addr v4, v5

    .line 99
    :cond_0
    invoke-static {v4, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, "sfn":Ljava/lang/String;
    iget v6, p0, Lorg/jpos/iso/packager/DecimalTagMapper;->tagSize:I

    invoke-static {v5, v6}, Lorg/jpos/iso/packager/DecimalTagMapper;->leftZeroPad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, "ret":Ljava/lang/String;
    const/16 v7, 0x24

    if-ne v3, v7, :cond_2

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lorg/jpos/iso/ISOUtil;->isNumeric(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    .line 102
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-array v0, v0, [Ljava/lang/Object;

    .line 105
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 103
    const-string v1, "The subtag id: %d of DE%d is illegal"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 109
    :cond_2
    :goto_0
    return-object v6

    .line 85
    .end local v3    # "radix":I
    .end local v4    # "fn":I
    .end local v5    # "sfn":Ljava/lang/String;
    .end local v6    # "ret":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 88
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    iget v1, p0, Lorg/jpos/iso/packager/DecimalTagMapper;->tagMaxValueUpperLetter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    .line 86
    const-string v0, "The subtag id: %d of DE%d out of range [0, %d]"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
