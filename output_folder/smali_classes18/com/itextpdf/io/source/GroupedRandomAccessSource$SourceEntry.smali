.class Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;
.super Ljava/lang/Object;
.source "GroupedRandomAccessSource.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/source/GroupedRandomAccessSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SourceEntry"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xcd3cafffa8014daL


# instance fields
.field final firstByte:J

.field final index:I

.field final lastByte:J

.field final source:Lcom/itextpdf/io/source/IRandomAccessSource;


# direct methods
.method public constructor <init>(ILcom/itextpdf/io/source/IRandomAccessSource;J)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "source"    # Lcom/itextpdf/io/source/IRandomAccessSource;
    .param p3, "offset"    # J

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput p1, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->index:I

    .line 272
    iput-object p2, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    .line 273
    iput-wide p3, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->firstByte:J

    .line 274
    invoke-interface {p2}, Lcom/itextpdf/io/source/IRandomAccessSource;->length()J

    move-result-wide v0

    add-long/2addr v0, p3

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->lastByte:J

    .line 275
    return-void
.end method


# virtual methods
.method public offsetN(J)J
    .locals 2
    .param p1, "absoluteOffset"    # J

    .line 283
    iget-wide v0, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->firstByte:J

    sub-long v0, p1, v0

    return-wide v0
.end method
