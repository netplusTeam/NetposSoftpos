.class public abstract Lcom/itextpdf/io/font/otf/OpenTableLookup;
.super Ljava/lang/Object;
.source "OpenTableLookup.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x74521aa15885b054L


# instance fields
.field protected lookupFlag:I

.field protected openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

.field protected subTableLocations:[I


# direct methods
.method protected constructor <init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V
    .locals 0
    .param p1, "openReader"    # Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;
    .param p2, "lookupFlag"    # I
    .param p3, "subTableLocations"    # [I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p2, p0, Lcom/itextpdf/io/font/otf/OpenTableLookup;->lookupFlag:I

    .line 57
    iput-object p3, p0, Lcom/itextpdf/io/font/otf/OpenTableLookup;->subTableLocations:[I

    .line 58
    iput-object p1, p0, Lcom/itextpdf/io/font/otf/OpenTableLookup;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    .line 59
    return-void
.end method


# virtual methods
.method public getLookupFlag()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/itextpdf/io/font/otf/OpenTableLookup;->lookupFlag:I

    return v0
.end method

.method public hasSubstitution(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract readSubTable(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected readSubTables()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTableLookup;->subTableLocations:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 82
    .local v3, "subTableLocation":I
    invoke-virtual {p0, v3}, Lcom/itextpdf/io/font/otf/OpenTableLookup;->readSubTable(I)V

    .line 81
    .end local v3    # "subTableLocation":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method

.method public transformLine(Lcom/itextpdf/io/font/otf/GlyphLine;)Z
    .locals 3
    .param p1, "line"    # Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "changed":Z
    iget v1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    iput v1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    .line 70
    :goto_0
    iget v1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    iget v2, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v1, v2, :cond_2

    iget v1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    iget v2, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    if-lt v1, v2, :cond_2

    .line 71
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/otf/OpenTableLookup;->transformOne(Lcom/itextpdf/io/font/otf/GlyphLine;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, 0x1

    :goto_2
    move v0, v1

    goto :goto_0

    .line 73
    :cond_2
    return v0
.end method

.method public abstract transformOne(Lcom/itextpdf/io/font/otf/GlyphLine;)Z
.end method
