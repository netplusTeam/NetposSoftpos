.class public Lcom/itextpdf/io/font/otf/OtfClass;
.super Ljava/lang/Object;
.source "OtfClass.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final GLYPH_BASE:I = 0x1

.field public static final GLYPH_LIGATURE:I = 0x2

.field public static final GLYPH_MARK:I = 0x3

.field private static final serialVersionUID:J = -0x69418ac764354978L


# instance fields
.field private mapClass:Lcom/itextpdf/io/util/IntHashtable;


# direct methods
.method private constructor <init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;I)V
    .locals 7
    .param p1, "rf"    # Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .param p2, "classLocation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/itextpdf/io/util/IntHashtable;

    invoke-direct {v0}, Lcom/itextpdf/io/util/IntHashtable;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/OtfClass;->mapClass:Lcom/itextpdf/io/util/IntHashtable;

    .line 67
    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 68
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    .line 69
    .local v0, "classFormat":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 70
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 71
    .local v1, "startGlyph":I
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 72
    .local v2, "glyphCount":I
    add-int v3, v1, v2

    .line 73
    .local v3, "endGlyph":I
    move v4, v1

    .local v4, "k":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v5

    .line 75
    .local v5, "cl":I
    iget-object v6, p0, Lcom/itextpdf/io/font/otf/OtfClass;->mapClass:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v6, v4, v5}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 73
    .end local v5    # "cl":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "startGlyph":I
    .end local v2    # "glyphCount":I
    .end local v3    # "endGlyph":I
    .end local v4    # "k":I
    :cond_0
    goto :goto_3

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 78
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 79
    .local v1, "classRangeCount":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 80
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    .line 81
    .local v3, "glyphStart":I
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    .line 82
    .local v4, "glyphEnd":I
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v5

    .line 83
    .restart local v5    # "cl":I
    :goto_2
    if-gt v3, v4, :cond_2

    .line 84
    iget-object v6, p0, Lcom/itextpdf/io/font/otf/OtfClass;->mapClass:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v6, v3, v5}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 83
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 79
    .end local v3    # "glyphStart":I
    .end local v4    # "glyphEnd":I
    .end local v5    # "cl":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 87
    .end local v1    # "classRangeCount":I
    .end local v2    # "k":I
    :cond_3
    nop

    .line 90
    :goto_3
    return-void

    .line 88
    :cond_4
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid class format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static create(Lcom/itextpdf/io/source/RandomAccessFileOrArray;I)Lcom/itextpdf/io/font/otf/OtfClass;
    .locals 5
    .param p0, "rf"    # Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .param p1, "classLocation"    # I

    .line 95
    :try_start_0
    new-instance v0, Lcom/itextpdf/io/font/otf/OtfClass;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/io/font/otf/OtfClass;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .local v0, "otfClass":Lcom/itextpdf/io/font/otf/OtfClass;
    goto :goto_0

    .line 96
    .end local v0    # "otfClass":Lcom/itextpdf/io/font/otf/OtfClass;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/IOException;
    const-class v1, Lcom/itextpdf/io/font/otf/OtfClass;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 98
    .local v1, "logger":Lorg/slf4j/Logger;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "OpenType GDEF table error: {0}"

    invoke-static {v3, v2}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 99
    const/4 v2, 0x0

    move-object v0, v2

    .line 101
    .end local v1    # "logger":Lorg/slf4j/Logger;
    .local v0, "otfClass":Lcom/itextpdf/io/font/otf/OtfClass;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getOtfClass(I)I
    .locals 1
    .param p1, "glyph"    # I

    .line 105
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OtfClass;->mapClass:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/util/IntHashtable;->get(I)I

    move-result v0

    return v0
.end method

.method public getOtfClass(IZ)I
    .locals 1
    .param p1, "glyph"    # I
    .param p2, "strict"    # Z

    .line 117
    if-eqz p2, :cond_1

    .line 118
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OtfClass;->mapClass:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/util/IntHashtable;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OtfClass;->mapClass:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/util/IntHashtable;->get(I)I

    move-result v0

    return v0

    .line 121
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OtfClass;->mapClass:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/util/IntHashtable;->get(I)I

    move-result v0

    return v0
.end method

.method public hasClass(I)Z
    .locals 1
    .param p1, "glyph"    # I

    .line 113
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OtfClass;->mapClass:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/util/IntHashtable;->containsKey(I)Z

    move-result v0

    return v0
.end method

.method public isMarkOtfClass(I)Z
    .locals 2
    .param p1, "glyph"    # I

    .line 109
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/otf/OtfClass;->hasClass(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/otf/OtfClass;->getOtfClass(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
