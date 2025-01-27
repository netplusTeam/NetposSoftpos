.class public Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;
.super Ljava/lang/Object;
.source "MetaDo.java"


# static fields
.field public static final META_ANIMATEPALETTE:I = 0x436

.field public static final META_ARC:I = 0x817

.field public static final META_BITBLT:I = 0x922

.field public static final META_CHORD:I = 0x830

.field public static final META_CREATEBRUSHINDIRECT:I = 0x2fc

.field public static final META_CREATEFONTINDIRECT:I = 0x2fb

.field public static final META_CREATEPALETTE:I = 0xf7

.field public static final META_CREATEPATTERNBRUSH:I = 0x1f9

.field public static final META_CREATEPENINDIRECT:I = 0x2fa

.field public static final META_CREATEREGION:I = 0x6ff

.field public static final META_DELETEOBJECT:I = 0x1f0

.field public static final META_DIBBITBLT:I = 0x940

.field public static final META_DIBCREATEPATTERNBRUSH:I = 0x142

.field public static final META_DIBSTRETCHBLT:I = 0xb41

.field public static final META_ELLIPSE:I = 0x418

.field public static final META_ESCAPE:I = 0x626

.field public static final META_EXCLUDECLIPRECT:I = 0x415

.field public static final META_EXTFLOODFILL:I = 0x548

.field public static final META_EXTTEXTOUT:I = 0xa32

.field public static final META_FILLREGION:I = 0x228

.field public static final META_FLOODFILL:I = 0x419

.field public static final META_FRAMEREGION:I = 0x429

.field public static final META_INTERSECTCLIPRECT:I = 0x416

.field public static final META_INVERTREGION:I = 0x12a

.field public static final META_LINETO:I = 0x213

.field public static final META_MOVETO:I = 0x214

.field public static final META_OFFSETCLIPRGN:I = 0x220

.field public static final META_OFFSETVIEWPORTORG:I = 0x211

.field public static final META_OFFSETWINDOWORG:I = 0x20f

.field public static final META_PAINTREGION:I = 0x12b

.field public static final META_PATBLT:I = 0x61d

.field public static final META_PIE:I = 0x81a

.field public static final META_POLYGON:I = 0x324

.field public static final META_POLYLINE:I = 0x325

.field public static final META_POLYPOLYGON:I = 0x538

.field public static final META_REALIZEPALETTE:I = 0x35

.field public static final META_RECTANGLE:I = 0x41b

.field public static final META_RESIZEPALETTE:I = 0x139

.field public static final META_RESTOREDC:I = 0x127

.field public static final META_ROUNDRECT:I = 0x61c

.field public static final META_SAVEDC:I = 0x1e

.field public static final META_SCALEVIEWPORTEXT:I = 0x412

.field public static final META_SCALEWINDOWEXT:I = 0x410

.field public static final META_SELECTCLIPREGION:I = 0x12c

.field public static final META_SELECTOBJECT:I = 0x12d

.field public static final META_SELECTPALETTE:I = 0x234

.field public static final META_SETBKCOLOR:I = 0x201

.field public static final META_SETBKMODE:I = 0x102

.field public static final META_SETDIBTODEV:I = 0xd33

.field public static final META_SETMAPMODE:I = 0x103

.field public static final META_SETMAPPERFLAGS:I = 0x231

.field public static final META_SETPALENTRIES:I = 0x37

.field public static final META_SETPIXEL:I = 0x41f

.field public static final META_SETPOLYFILLMODE:I = 0x106

.field public static final META_SETRELABS:I = 0x105

.field public static final META_SETROP2:I = 0x104

.field public static final META_SETSTRETCHBLTMODE:I = 0x107

.field public static final META_SETTEXTALIGN:I = 0x12e

.field public static final META_SETTEXTCHAREXTRA:I = 0x108

.field public static final META_SETTEXTCOLOR:I = 0x209

.field public static final META_SETTEXTJUSTIFICATION:I = 0x20a

.field public static final META_SETVIEWPORTEXT:I = 0x20e

.field public static final META_SETVIEWPORTORG:I = 0x20d

.field public static final META_SETWINDOWEXT:I = 0x20c

.field public static final META_SETWINDOWORG:I = 0x20b

.field public static final META_STRETCHBLT:I = 0xb23

.field public static final META_STRETCHDIB:I = 0xf43

.field public static final META_TEXTOUT:I = 0x521


# instance fields
.field bottom:I

.field public cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

.field public in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

.field inch:I

.field left:I

.field right:I

.field state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

.field top:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "cb"    # Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    .line 166
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 167
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    .line 168
    return-void
.end method

.method static getArc(FFFF)F
    .locals 6
    .param p0, "xCenter"    # F
    .param p1, "yCenter"    # F
    .param p2, "xDot"    # F
    .param p3, "yDot"    # F

    .line 733
    sub-float v0, p3, p1

    float-to-double v0, v0

    sub-float v2, p2, p0

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 734
    .local v0, "s":D
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 735
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v0, v2

    .line 736
    :cond_0
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double v2, v0, v2

    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double/2addr v2, v4

    double-to-float v2, v2

    return v2
.end method

.method public static wrapBMP(Lcom/itextpdf/io/image/ImageData;)[B
    .locals 9
    .param p0, "image"    # Lcom/itextpdf/io/image/ImageData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 747
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getOriginalType()Lcom/itextpdf/io/image/ImageType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/io/image/ImageType;->BMP:Lcom/itextpdf/io/image/ImageType;

    if-ne v0, v1, :cond_3

    .line 752
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getData()[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 753
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getUrl()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 754
    .local v0, "imgIn":Ljava/io/InputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 755
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 756
    .local v2, "b":I
    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v3

    move v2, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 757
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 758
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 759
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 760
    .end local v2    # "b":I
    .local v1, "data":[B
    goto :goto_1

    .line 761
    .end local v0    # "imgIn":Ljava/io/InputStream;
    .end local v1    # "data":[B
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getData()[B

    move-result-object v1

    .line 763
    .restart local v1    # "data":[B
    :goto_1
    array-length v0, v1

    const/16 v2, 0xe

    sub-int/2addr v0, v2

    const/4 v3, 0x1

    add-int/2addr v0, v3

    ushr-int/2addr v0, v3

    .line 764
    .local v0, "sizeBmpWords":I
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 766
    .local v4, "os":Ljava/io/ByteArrayOutputStream;
    invoke-static {v4, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 767
    const/16 v5, 0x9

    invoke-static {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 768
    const/16 v5, 0x300

    invoke-static {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 770
    add-int/lit8 v5, v0, 0x24

    const/4 v6, 0x3

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeDWord(Ljava/io/OutputStream;I)V

    .line 771
    invoke-static {v4, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 773
    add-int/lit8 v5, v0, 0xe

    invoke-static {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeDWord(Ljava/io/OutputStream;I)V

    .line 774
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 776
    const/4 v7, 0x4

    invoke-static {v4, v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeDWord(Ljava/io/OutputStream;I)V

    .line 777
    const/16 v7, 0x103

    invoke-static {v4, v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 778
    const/16 v7, 0x8

    invoke-static {v4, v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 780
    const/4 v7, 0x5

    invoke-static {v4, v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeDWord(Ljava/io/OutputStream;I)V

    .line 781
    const/16 v8, 0x20b

    invoke-static {v4, v8}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 782
    invoke-static {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 783
    invoke-static {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 785
    invoke-static {v4, v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeDWord(Ljava/io/OutputStream;I)V

    .line 786
    const/16 v7, 0x20c

    invoke-static {v4, v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 787
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getHeight()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v4, v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 788
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getWidth()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v4, v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 790
    add-int/lit8 v7, v0, 0xd

    invoke-static {v4, v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeDWord(Ljava/io/OutputStream;I)V

    .line 791
    const/16 v7, 0xb41

    invoke-static {v4, v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 792
    const v7, 0xcc0020

    invoke-static {v4, v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeDWord(Ljava/io/OutputStream;I)V

    .line 793
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getHeight()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v4, v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 794
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getWidth()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v4, v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 795
    invoke-static {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 796
    invoke-static {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 797
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getHeight()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v4, v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 798
    invoke-virtual {p0}, Lcom/itextpdf/io/image/ImageData;->getWidth()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v4, v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 799
    invoke-static {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 800
    invoke-static {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 801
    array-length v7, v1

    sub-int/2addr v7, v2

    invoke-virtual {v4, v1, v2, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 802
    array-length v2, v1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_2

    .line 803
    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 805
    :cond_2
    invoke-static {v4, v6}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeDWord(Ljava/io/OutputStream;I)V

    .line 806
    invoke-static {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 807
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 808
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 748
    .end local v0    # "sizeBmpWords":I
    .end local v1    # "data":[B
    .end local v4    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_3
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Only BMP can be wrapped in WMF."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static writeDWord(Ljava/io/OutputStream;I)V
    .locals 2
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 831
    const v0, 0xffff

    and-int v1, p1, v0

    invoke-static {p0, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 832
    ushr-int/lit8 v1, p1, 0x10

    and-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 833
    return-void
.end method

.method public static writeWord(Ljava/io/OutputStream;I)V
    .locals 1
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 819
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 820
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 821
    return-void
.end method


# virtual methods
.method public isNullStrokeFill(Z)Z
    .locals 8
    .param p1, "isRectangle"    # Z

    .line 686
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getCurrentPen()Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;

    move-result-object v0

    .line 687
    .local v0, "pen":Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getCurrentBrush()Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaBrush;

    move-result-object v1

    .line 688
    .local v1, "brush":Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaBrush;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;->getStyle()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    if-ne v2, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 689
    .local v2, "noPen":Z
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaBrush;->getStyle()I

    move-result v5

    .line 690
    .local v5, "style":I
    if-eqz v5, :cond_2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getBackgroundMode()I

    move-result v7

    if-ne v7, v6, :cond_1

    goto :goto_1

    :cond_1
    move v6, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v6, v3

    .line 691
    .local v6, "isBrush":Z
    :goto_2
    if-eqz v2, :cond_3

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    .line 692
    .local v3, "result":Z
    :goto_3
    if-nez v2, :cond_5

    .line 693
    if-eqz p1, :cond_4

    .line 694
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v4, v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setLineJoinRectangle(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    goto :goto_4

    .line 696
    :cond_4
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v4, v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setLineJoinPolygon(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 698
    :cond_5
    :goto_4
    return v3
.end method

.method public outputText(IIIIIIILjava/lang/String;)V
    .locals 41
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "flag"    # I
    .param p4, "x1"    # I
    .param p5, "y1"    # I
    .param p6, "x2"    # I
    .param p7, "y2"    # I
    .param p8, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 619
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getCurrentFont()Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;

    move-result-object v2

    .line 620
    .local v2, "font":Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    move/from16 v4, p1

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v3

    .line 621
    .local v3, "refX":F
    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    move/from16 v6, p2

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v5

    .line 622
    .local v5, "refY":F
    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->getAngle()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformAngle(F)F

    move-result v7

    .line 623
    .local v7, "angle":F
    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 624
    .local v8, "sin":F
    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    .line 625
    .local v9, "cos":F
    iget-object v10, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v2, v10}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->getFontSize(Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;)F

    move-result v10

    .line 626
    .local v10, "fontSize":F
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->getFont()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v11

    .line 627
    .local v11, "fp":Lcom/itextpdf/io/font/FontProgram;
    iget-object v12, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getTextAlign()I

    move-result v12

    .line 629
    .local v12, "align":I
    const/4 v13, 0x0

    .line 630
    .local v13, "normalizedWidth":I
    iget-object v14, v2, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->encoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v14, v1}, Lcom/itextpdf/io/font/FontEncoding;->convertToBytes(Ljava/lang/String;)[B

    move-result-object v14

    .line 631
    .local v14, "bytes":[B
    array-length v15, v14

    const/16 v16, 0x0

    move/from16 v4, v16

    :goto_0
    if-ge v4, v15, :cond_0

    aget-byte v6, v14, v4

    .line 632
    .local v6, "b":B
    move/from16 v16, v7

    .end local v7    # "angle":F
    .local v16, "angle":F
    and-int/lit16 v7, v6, 0xff

    invoke-virtual {v11, v7}, Lcom/itextpdf/io/font/FontProgram;->getWidth(I)I

    move-result v7

    add-int/2addr v13, v7

    .line 631
    .end local v6    # "b":B
    add-int/lit8 v4, v4, 0x1

    move/from16 v6, p2

    move/from16 v7, v16

    goto :goto_0

    .line 634
    .end local v16    # "angle":F
    .restart local v7    # "angle":F
    :cond_0
    move/from16 v16, v7

    .end local v7    # "angle":F
    .restart local v16    # "angle":F
    const/high16 v4, 0x447a0000    # 1000.0f

    div-float v4, v10, v4

    int-to-float v6, v13

    mul-float/2addr v4, v6

    .line 635
    .local v4, "textWidth":F
    const/4 v6, 0x0

    .line 636
    .local v6, "tx":F
    const/4 v7, 0x0

    .line 637
    .local v7, "ty":F
    invoke-virtual {v11}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v15

    invoke-virtual {v15}, Lcom/itextpdf/io/font/FontMetrics;->getTypoDescender()I

    move-result v15

    int-to-float v15, v15

    .line 638
    .local v15, "descender":F
    invoke-virtual {v11}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/io/font/FontMetrics;->getBbox()[I

    move-result-object v17

    const/16 v18, 0x3

    move/from16 v19, v6

    .end local v6    # "tx":F
    .local v19, "tx":F
    aget v6, v17, v18

    int-to-float v6, v6

    .line 639
    .local v6, "ury":F
    move/from16 v17, v7

    .end local v7    # "ty":F
    .local v17, "ty":F
    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 640
    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move/from16 v33, v13

    move-object/from16 v18, v14

    .end local v13    # "normalizedWidth":I
    .end local v14    # "bytes":[B
    .local v18, "bytes":[B
    .local v33, "normalizedWidth":I
    float-to-double v13, v9

    move-object/from16 v34, v2

    .end local v2    # "font":Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;
    .local v34, "font":Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;
    float-to-double v1, v8

    move-object/from16 v35, v11

    .end local v11    # "fp":Lcom/itextpdf/io/font/FontProgram;
    .local v35, "fp":Lcom/itextpdf/io/font/FontProgram;
    neg-float v11, v8

    move/from16 v36, v10

    .end local v10    # "fontSize":F
    .local v36, "fontSize":F
    float-to-double v10, v11

    move-wide/from16 v25, v10

    float-to-double v10, v9

    move/from16 v37, v8

    move/from16 v38, v9

    .end local v8    # "sin":F
    .end local v9    # "cos":F
    .local v37, "sin":F
    .local v38, "cos":F
    float-to-double v8, v3

    move/from16 v39, v3

    move/from16 v40, v4

    .end local v3    # "refX":F
    .end local v4    # "textWidth":F
    .local v39, "refX":F
    .local v40, "textWidth":F
    float-to-double v3, v5

    move-object/from16 v20, v7

    move-wide/from16 v21, v13

    move-wide/from16 v23, v1

    move-wide/from16 v27, v10

    move-wide/from16 v29, v8

    move-wide/from16 v31, v3

    invoke-virtual/range {v20 .. v32}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->concatMatrix(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 641
    and-int/lit8 v1, v12, 0x6

    const/4 v2, 0x6

    const/4 v3, 0x2

    if-ne v1, v2, :cond_1

    .line 642
    move/from16 v4, v40

    .end local v40    # "textWidth":F
    .restart local v4    # "textWidth":F
    neg-float v1, v4

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .end local v19    # "tx":F
    .local v1, "tx":F
    goto :goto_1

    .line 643
    .end local v1    # "tx":F
    .end local v4    # "textWidth":F
    .restart local v19    # "tx":F
    .restart local v40    # "textWidth":F
    :cond_1
    move/from16 v4, v40

    .end local v40    # "textWidth":F
    .restart local v4    # "textWidth":F
    and-int/lit8 v1, v12, 0x2

    if-ne v1, v3, :cond_2

    .line 644
    neg-float v1, v4

    .end local v19    # "tx":F
    .restart local v1    # "tx":F
    goto :goto_1

    .line 643
    .end local v1    # "tx":F
    .restart local v19    # "tx":F
    :cond_2
    move/from16 v1, v19

    .line 645
    .end local v19    # "tx":F
    .restart local v1    # "tx":F
    :goto_1
    and-int/lit8 v2, v12, 0x18

    const/16 v7, 0x18

    if-ne v2, v7, :cond_3

    .line 646
    const/4 v2, 0x0

    .end local v17    # "ty":F
    .local v2, "ty":F
    goto :goto_2

    .line 647
    .end local v2    # "ty":F
    .restart local v17    # "ty":F
    :cond_3
    and-int/lit8 v2, v12, 0x8

    const/16 v7, 0x8

    if-ne v2, v7, :cond_4

    .line 648
    neg-float v2, v15

    .end local v17    # "ty":F
    .restart local v2    # "ty":F
    goto :goto_2

    .line 650
    .end local v2    # "ty":F
    .restart local v17    # "ty":F
    :cond_4
    neg-float v2, v6

    .line 653
    .end local v17    # "ty":F
    .restart local v2    # "ty":F
    :goto_2
    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getBackgroundMode()I

    move-result v7

    if-ne v7, v3, :cond_5

    .line 654
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getCurrentBackgroundColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v3

    .line 655
    .local v3, "textColor":Lcom/itextpdf/kernel/colors/Color;
    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v7, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 656
    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    float-to-double v8, v1

    add-float v10, v2, v15

    float-to-double v10, v10

    float-to-double v13, v4

    move-object/from16 v17, v3

    .end local v3    # "textColor":Lcom/itextpdf/kernel/colors/Color;
    .local v17, "textColor":Lcom/itextpdf/kernel/colors/Color;
    sub-float v3, v6, v15

    move/from16 v28, v5

    move/from16 v29, v6

    .end local v5    # "refY":F
    .end local v6    # "ury":F
    .local v28, "refY":F
    .local v29, "ury":F
    float-to-double v5, v3

    move-object/from16 v19, v7

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    move-wide/from16 v24, v13

    move-wide/from16 v26, v5

    invoke-virtual/range {v19 .. v27}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 657
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_3

    .line 653
    .end local v17    # "textColor":Lcom/itextpdf/kernel/colors/Color;
    .end local v28    # "refY":F
    .end local v29    # "ury":F
    .restart local v5    # "refY":F
    .restart local v6    # "ury":F
    :cond_5
    move/from16 v28, v5

    move/from16 v29, v6

    .line 659
    .end local v5    # "refY":F
    .end local v6    # "ury":F
    .restart local v28    # "refY":F
    .restart local v29    # "ury":F
    :goto_3
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getCurrentTextColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v3

    .line 660
    .restart local v3    # "textColor":Lcom/itextpdf/kernel/colors/Color;
    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v5, v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 661
    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->beginText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 662
    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getCurrentFont()Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->getFont()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v6

    sget-object v7, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;->PREFER_EMBEDDED:Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    const-string v8, "Cp1252"

    invoke-static {v6, v8, v7}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v6

    move/from16 v7, v36

    .end local v36    # "fontSize":F
    .local v7, "fontSize":F
    invoke-virtual {v5, v6, v7}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFontAndSize(Lcom/itextpdf/kernel/font/PdfFont;F)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 664
    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v5, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setTextMatrix(FF)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 665
    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-object/from16 v6, p8

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->showText(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 666
    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endText()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 667
    invoke-virtual/range {v34 .. v34}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->isUnderline()Z

    move-result v5

    const/high16 v8, 0x41700000    # 15.0f

    if-eqz v5, :cond_6

    .line 668
    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    float-to-double v9, v1

    const/high16 v11, 0x40800000    # 4.0f

    div-float v11, v7, v11

    sub-float v11, v2, v11

    float-to-double v13, v11

    move/from16 v17, v12

    .end local v12    # "align":I
    .local v17, "align":I
    float-to-double v11, v4

    move-object/from16 v30, v3

    .end local v3    # "textColor":Lcom/itextpdf/kernel/colors/Color;
    .local v30, "textColor":Lcom/itextpdf/kernel/colors/Color;
    div-float v3, v7, v8

    move/from16 v40, v4

    .end local v4    # "textWidth":F
    .restart local v40    # "textWidth":F
    float-to-double v3, v3

    move-object/from16 v19, v5

    move-wide/from16 v20, v9

    move-wide/from16 v22, v13

    move-wide/from16 v24, v11

    move-wide/from16 v26, v3

    invoke-virtual/range {v19 .. v27}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 669
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_4

    .line 667
    .end local v17    # "align":I
    .end local v30    # "textColor":Lcom/itextpdf/kernel/colors/Color;
    .end local v40    # "textWidth":F
    .restart local v3    # "textColor":Lcom/itextpdf/kernel/colors/Color;
    .restart local v4    # "textWidth":F
    .restart local v12    # "align":I
    :cond_6
    move-object/from16 v30, v3

    move/from16 v40, v4

    move/from16 v17, v12

    .line 671
    .end local v3    # "textColor":Lcom/itextpdf/kernel/colors/Color;
    .end local v4    # "textWidth":F
    .end local v12    # "align":I
    .restart local v17    # "align":I
    .restart local v30    # "textColor":Lcom/itextpdf/kernel/colors/Color;
    .restart local v40    # "textWidth":F
    :goto_4
    invoke-virtual/range {v34 .. v34}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->isStrikeout()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 672
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    float-to-double v4, v1

    const/high16 v9, 0x40400000    # 3.0f

    div-float v10, v7, v9

    add-float/2addr v10, v2

    float-to-double v9, v10

    move/from16 v11, v40

    .end local v40    # "textWidth":F
    .local v11, "textWidth":F
    float-to-double v12, v11

    div-float v8, v7, v8

    move v14, v1

    move/from16 v31, v2

    .end local v1    # "tx":F
    .end local v2    # "ty":F
    .local v14, "tx":F
    .local v31, "ty":F
    float-to-double v1, v8

    move-object/from16 v19, v3

    move-wide/from16 v20, v4

    move-wide/from16 v22, v9

    move-wide/from16 v24, v12

    move-wide/from16 v26, v1

    invoke-virtual/range {v19 .. v27}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 673
    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_5

    .line 671
    .end local v11    # "textWidth":F
    .end local v14    # "tx":F
    .end local v31    # "ty":F
    .restart local v1    # "tx":F
    .restart local v2    # "ty":F
    .restart local v40    # "textWidth":F
    :cond_7
    move v14, v1

    move/from16 v31, v2

    move/from16 v11, v40

    .line 675
    .end local v1    # "tx":F
    .end local v2    # "ty":F
    .end local v40    # "textWidth":F
    .restart local v11    # "textWidth":F
    .restart local v14    # "tx":F
    .restart local v31    # "ty":F
    :goto_5
    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 676
    return-void
.end method

.method public readAll()V
    .locals 60
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readInt()I

    move-result v0

    const v1, -0x65393229

    if-ne v0, v1, :cond_1c

    .line 179
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    .line 180
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v0

    iput v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->left:I

    .line 181
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v0

    iput v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->top:I

    .line 182
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v0

    iput v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->right:I

    .line 183
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v0

    iput v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->bottom:I

    .line 184
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    move-result v0

    iput v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->inch:I

    .line 185
    iget-object v1, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->right:I

    iget v3, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x42900000    # 72.0f

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setScalingX(F)V

    .line 186
    iget-object v1, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->bottom:I

    iget v3, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->inch:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setScalingY(F)V

    .line 187
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget v1, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->left:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setOffsetWx(I)V

    .line 188
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget v1, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->top:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setOffsetWy(I)V

    .line 189
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget v1, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->right:I

    iget v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->left:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setExtentWx(I)V

    .line 190
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget v1, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->bottom:I

    iget v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setExtentWy(I)V

    .line 191
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readInt()I

    .line 192
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    .line 193
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->skip(I)V

    .line 197
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineCapStyle(I)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 198
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v0, v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setLineJoinStyle(I)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 200
    :goto_0
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->getLength()I

    move-result v12

    .line 201
    .local v12, "lenMarker":I
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readInt()I

    move-result v13

    .line 202
    .local v13, "tsize":I
    const/4 v0, 0x3

    if-ge v13, v0, :cond_0

    .line 203
    nop

    .line 601
    .end local v12    # "lenMarker":I
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v1, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->cleanup(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 602
    return-void

    .line 204
    .restart local v12    # "lenMarker":I
    :cond_0
    iget-object v1, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    move-result v14

    .line 205
    .local v14, "function":I
    const-string v4, "Cp1252"

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v15, 0x0

    sparse-switch v14, :sswitch_data_0

    move v1, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .local v26, "lenMarker":I
    .local v27, "tsize":I
    .local v28, "function":I
    goto/16 :goto_12

    .line 563
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .restart local v12    # "lenMarker":I
    .restart local v13    # "tsize":I
    .restart local v14    # "function":I
    :sswitch_0
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readInt()I

    move-result v1

    .line 564
    .local v1, "rop":I
    const/16 v0, 0xf43

    if-ne v14, v0, :cond_1

    .line 565
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    .line 567
    :cond_1
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    .line 568
    .local v2, "srcHeight":I
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v3

    .line 569
    .local v3, "srcWidth":I
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v4

    .line 570
    .local v4, "ySrc":I
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v5

    .line 571
    .local v5, "xSrc":I
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v6, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v0

    iget-object v6, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v6, v15}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v6

    sub-float v6, v0, v6

    .line 572
    .local v6, "destHeight":F
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v7, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v0

    iget-object v7, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v7, v15}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v7

    sub-float v7, v0, v7

    .line 573
    .local v7, "destWidth":F
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v8, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v8

    .line 574
    .local v8, "yDest":F
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v9, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v9

    .line 575
    .local v9, "xDest":F
    mul-int/lit8 v0, v13, 0x2

    iget-object v15, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v15}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->getLength()I

    move-result v15

    sub-int/2addr v15, v12

    sub-int/2addr v0, v15

    new-array v15, v0, [B

    .line 576
    .local v15, "b":[B
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_1
    array-length v11, v15

    if-ge v0, v11, :cond_2

    .line 577
    iget-object v11, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readByte()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v15, v0

    .line 576
    add-int/lit8 v0, v0, 0x1

    const/4 v11, 0x1

    goto :goto_1

    .line 579
    .end local v0    # "k":I
    :cond_2
    :try_start_0
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 580
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v26, v12

    .end local v12    # "lenMarker":I
    .restart local v26    # "lenMarker":I
    float-to-double v11, v9

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    float-to-double v13, v8

    move/from16 v29, v8

    move/from16 v30, v9

    .end local v8    # "yDest":F
    .end local v9    # "xDest":F
    .local v29, "yDest":F
    .local v30, "xDest":F
    float-to-double v8, v7

    move/from16 v31, v4

    move/from16 v32, v5

    .end local v4    # "ySrc":I
    .end local v5    # "xSrc":I
    .local v31, "ySrc":I
    .local v32, "xSrc":I
    float-to-double v4, v6

    move-object/from16 v17, v0

    move-wide/from16 v18, v11

    move-wide/from16 v20, v13

    move-wide/from16 v22, v8

    move-wide/from16 v24, v4

    :try_start_1
    invoke-virtual/range {v17 .. v25}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 581
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->clip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 582
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 583
    const/4 v4, 0x1

    invoke-static {v15, v4}, Lcom/itextpdf/io/image/ImageDataFactory;->createBmp([BZ)Lcom/itextpdf/io/image/ImageData;

    move-result-object v0

    .line 584
    .local v0, "bmpImage":Lcom/itextpdf/io/image/ImageData;
    new-instance v4, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-direct {v4, v0}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/io/image/ImageData;)V

    .line 586
    .local v4, "imageXObject":Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
    invoke-virtual {v0}, Lcom/itextpdf/io/image/ImageData;->getWidth()F

    move-result v5

    mul-float/2addr v5, v7

    int-to-float v8, v3

    div-float/2addr v5, v8

    .line 587
    .local v5, "width":F
    neg-float v8, v6

    invoke-virtual {v0}, Lcom/itextpdf/io/image/ImageData;->getHeight()F

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    mul-float/2addr v8, v9

    int-to-float v9, v2

    div-float/2addr v8, v9

    .line 588
    .local v8, "height":F
    move/from16 v9, v32

    .end local v32    # "xSrc":I
    .local v9, "xSrc":I
    int-to-float v11, v9

    mul-float/2addr v11, v7

    int-to-float v12, v3

    div-float/2addr v11, v12

    sub-float v11, v30, v11

    .line 589
    .local v11, "x":F
    move/from16 v12, v31

    .end local v31    # "ySrc":I
    .local v12, "ySrc":I
    int-to-float v13, v12

    mul-float/2addr v13, v6

    int-to-float v14, v2

    div-float/2addr v13, v14

    add-float v13, v29, v13

    sub-float/2addr v13, v8

    .line 590
    .local v13, "y":F
    :try_start_2
    iget-object v14, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-object/from16 v17, v0

    .end local v0    # "bmpImage":Lcom/itextpdf/io/image/ImageData;
    .local v17, "bmpImage":Lcom/itextpdf/io/image/ImageData;
    new-instance v0, Lcom/itextpdf/kernel/geom/Rectangle;

    invoke-direct {v0, v11, v13, v5, v8}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-virtual {v14, v4, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addXObject(Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 591
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 595
    const/4 v1, 0x1

    .end local v4    # "imageXObject":Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
    .end local v5    # "width":F
    .end local v8    # "height":F
    .end local v11    # "x":F
    .end local v13    # "y":F
    .end local v17    # "bmpImage":Lcom/itextpdf/io/image/ImageData;
    goto/16 :goto_12

    .line 593
    :catch_0
    move-exception v0

    goto :goto_2

    .end local v9    # "xSrc":I
    .end local v12    # "ySrc":I
    .restart local v31    # "ySrc":I
    .restart local v32    # "xSrc":I
    :catch_1
    move-exception v0

    move/from16 v12, v31

    move/from16 v9, v32

    .end local v31    # "ySrc":I
    .end local v32    # "xSrc":I
    .restart local v9    # "xSrc":I
    .restart local v12    # "ySrc":I
    goto :goto_2

    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .end local v29    # "yDest":F
    .end local v30    # "xDest":F
    .local v4, "ySrc":I
    .local v5, "xSrc":I
    .local v8, "yDest":F
    .local v9, "xDest":F
    .local v12, "lenMarker":I
    .local v13, "tsize":I
    .restart local v14    # "function":I
    :catch_2
    move-exception v0

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    move v12, v4

    move v9, v5

    .line 596
    .end local v4    # "ySrc":I
    .end local v5    # "xSrc":I
    .end local v8    # "yDest":F
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .local v9, "xSrc":I
    .local v12, "ySrc":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    .restart local v29    # "yDest":F
    .restart local v30    # "xDest":F
    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_12

    .line 477
    .end local v1    # "rop":I
    .end local v2    # "srcHeight":I
    .end local v3    # "srcWidth":I
    .end local v6    # "destHeight":F
    .end local v7    # "destWidth":F
    .end local v9    # "xSrc":I
    .end local v15    # "b":[B
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .end local v29    # "yDest":F
    .end local v30    # "xDest":F
    .local v12, "lenMarker":I
    .restart local v13    # "tsize":I
    .restart local v14    # "function":I
    :sswitch_1
    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v11

    .line 478
    .local v11, "y":I
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v12

    .line 479
    .local v12, "x":I
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    move-result v13

    .line 480
    .local v13, "count":I
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    move-result v14

    .line 481
    .local v14, "flag":I
    const/4 v0, 0x0

    .line 482
    .local v0, "x1":I
    const/4 v1, 0x0

    .line 483
    .local v1, "y1":I
    const/4 v2, 0x0

    .line 484
    .local v2, "x2":I
    const/4 v3, 0x0

    .line 485
    .local v3, "y2":I
    and-int/lit8 v5, v14, 0x6

    if-eqz v5, :cond_3

    .line 486
    iget-object v5, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v0

    .line 487
    iget-object v5, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v1

    .line 488
    iget-object v5, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    .line 489
    iget-object v5, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v3

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    goto :goto_3

    .line 485
    :cond_3
    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    .line 491
    .end local v0    # "x1":I
    .end local v1    # "y1":I
    .end local v2    # "x2":I
    .end local v3    # "y2":I
    .local v17, "x1":I
    .local v18, "y1":I
    .local v19, "x2":I
    .local v20, "y2":I
    :goto_3
    new-array v9, v13, [B

    .line 493
    .local v9, "text":[B
    const/4 v0, 0x0

    move v8, v0

    .local v8, "k":I
    :goto_4
    if-ge v8, v13, :cond_5

    .line 494
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readByte()I

    move-result v0

    int-to-byte v0, v0

    .line 495
    .local v0, "c":B
    if-nez v0, :cond_4

    .line 496
    goto :goto_5

    .line 497
    :cond_4
    aput-byte v0, v9, v8

    .line 493
    .end local v0    # "c":B
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 501
    :cond_5
    :goto_5
    :try_start_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v9, v15, v8, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 505
    .local v0, "s":Ljava/lang/String;
    goto :goto_6

    .line 503
    .end local v0    # "s":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 504
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v9, v15, v8}, Ljava/lang/String;-><init>([BII)V

    move-object v0, v1

    .line 506
    .local v0, "s":Ljava/lang/String;
    :goto_6
    move-object/from16 v1, p0

    move v2, v12

    move v3, v11

    move v4, v14

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move v15, v8

    .end local v8    # "k":I
    .local v15, "k":I
    move/from16 v8, v20

    move-object/from16 v21, v9

    .end local v9    # "text":[B
    .local v21, "text":[B
    move-object v9, v0

    invoke-virtual/range {v1 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->outputText(IIIIIIILjava/lang/String;)V

    .line 507
    const/4 v1, 0x1

    goto/16 :goto_12

    .line 406
    .end local v0    # "s":Ljava/lang/String;
    .end local v11    # "y":I
    .end local v15    # "k":I
    .end local v17    # "x1":I
    .end local v18    # "y1":I
    .end local v19    # "x2":I
    .end local v20    # "y2":I
    .end local v21    # "text":[B
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .local v12, "lenMarker":I
    .local v13, "tsize":I
    .local v14, "function":I
    :sswitch_2
    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    iget-object v4, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getLineNeutral()Z

    move-result v4

    invoke-virtual {v10, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->isNullStrokeFill(Z)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 407
    const/4 v1, 0x1

    goto/16 :goto_12

    .line 408
    :cond_6
    iget-object v4, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v11, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v4

    .line 409
    .local v4, "yend":F
    iget-object v11, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v12, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v11

    .line 410
    .local v11, "xend":F
    iget-object v12, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v13, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v12

    .line 411
    .local v12, "ystart":F
    iget-object v13, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v14, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v14}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v13

    .line 412
    .local v13, "xstart":F
    iget-object v14, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v1, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v1

    invoke-virtual {v14, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v1

    .line 413
    .local v1, "b":F
    iget-object v14, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v7, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v7

    invoke-virtual {v14, v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v7

    .line 414
    .local v7, "r":F
    iget-object v14, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    invoke-virtual {v14, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v2

    .line 415
    .local v2, "t":F
    iget-object v14, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v3, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v3

    invoke-virtual {v14, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v3

    .line 416
    .local v3, "l":F
    add-float v14, v7, v3

    div-float/2addr v14, v9

    .line 417
    .local v14, "cx":F
    add-float v21, v2, v1

    div-float v9, v21, v9

    .line 418
    .local v9, "cy":F
    invoke-static {v14, v9, v13, v12}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->getArc(FFFF)F

    move-result v0

    .line 419
    .local v0, "arc1":F
    invoke-static {v14, v9, v11, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->getArc(FFFF)F

    move-result v22

    .line 420
    .local v22, "arc2":F
    sub-float v22, v22, v0

    .line 421
    cmpg-float v6, v22, v6

    if-gtz v6, :cond_7

    .line 422
    add-float v22, v22, v5

    move/from16 v5, v22

    goto :goto_7

    .line 421
    :cond_7
    move/from16 v5, v22

    .line 423
    .end local v22    # "arc2":F
    .local v5, "arc2":F
    :goto_7
    move/from16 v23, v9

    .end local v9    # "cy":F
    .local v23, "cy":F
    float-to-double v8, v3

    move/from16 v25, v3

    move/from16 v24, v4

    .end local v3    # "l":F
    .end local v4    # "yend":F
    .local v24, "yend":F
    .local v25, "l":F
    float-to-double v3, v1

    move/from16 v41, v11

    move/from16 v42, v12

    .end local v11    # "xend":F
    .end local v12    # "ystart":F
    .local v41, "xend":F
    .local v42, "ystart":F
    float-to-double v11, v7

    move/from16 v43, v7

    .end local v7    # "r":F
    .local v43, "r":F
    float-to-double v6, v2

    move/from16 v44, v1

    move/from16 v45, v2

    .end local v1    # "b":F
    .end local v2    # "t":F
    .local v44, "b":F
    .local v45, "t":F
    float-to-double v1, v0

    move/from16 v46, v13

    move/from16 v47, v14

    .end local v13    # "xstart":F
    .end local v14    # "cx":F
    .local v46, "xstart":F
    .local v47, "cx":F
    float-to-double v13, v5

    move-wide/from16 v29, v8

    move-wide/from16 v31, v3

    move-wide/from16 v33, v11

    move-wide/from16 v35, v6

    move-wide/from16 v37, v1

    move-wide/from16 v39, v13

    invoke-static/range {v29 .. v40}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->bezierArc(DDDDDD)Ljava/util/List;

    move-result-object v1

    .line 424
    .local v1, "ar":Ljava/util/List;, "Ljava/util/List<[D>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_8

    .line 425
    const/4 v1, 0x1

    goto/16 :goto_12

    .line 426
    :cond_8
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 427
    .local v2, "pt":[D
    aget-wide v3, v2, v15

    double-to-float v3, v3

    .line 428
    .end local v47    # "cx":F
    .local v3, "cx":F
    const/4 v4, 0x1

    aget-wide v6, v2, v4

    double-to-float v4, v6

    .line 429
    .end local v23    # "cy":F
    .local v4, "cy":F
    iget-object v6, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    float-to-double v7, v3

    float-to-double v11, v4

    invoke-virtual {v6, v7, v8, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 430
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 431
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    check-cast v2, [D

    .line 432
    iget-object v7, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    const/4 v8, 0x2

    aget-wide v48, v2, v8

    const/4 v8, 0x3

    aget-wide v50, v2, v8

    const/4 v8, 0x4

    aget-wide v52, v2, v8

    const/4 v8, 0x5

    aget-wide v54, v2, v8

    const/4 v8, 0x6

    aget-wide v56, v2, v8

    const/4 v8, 0x7

    aget-wide v58, v2, v8

    move-object/from16 v47, v7

    invoke-virtual/range {v47 .. v59}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 430
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 434
    .end local v6    # "k":I
    :cond_9
    iget-object v6, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    float-to-double v7, v3

    float-to-double v11, v4

    invoke-virtual {v6, v7, v8, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->strokeAndFill()V

    .line 436
    const/4 v1, 0x1

    goto/16 :goto_12

    .line 373
    .end local v0    # "arc1":F
    .end local v1    # "ar":Ljava/util/List;, "Ljava/util/List<[D>;"
    .end local v2    # "pt":[D
    .end local v3    # "cx":F
    .end local v4    # "cy":F
    .end local v5    # "arc2":F
    .end local v24    # "yend":F
    .end local v25    # "l":F
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .end local v41    # "xend":F
    .end local v42    # "ystart":F
    .end local v43    # "r":F
    .end local v44    # "b":F
    .end local v45    # "t":F
    .end local v46    # "xstart":F
    .local v12, "lenMarker":I
    .local v13, "tsize":I
    .local v14, "function":I
    :sswitch_3
    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getLineNeutral()Z

    move-result v0

    invoke-virtual {v10, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->isNullStrokeFill(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 374
    const/4 v1, 0x1

    goto/16 :goto_12

    .line 375
    :cond_a
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v1, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v0

    .line 376
    .local v0, "yend":F
    iget-object v1, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v1

    .line 377
    .local v1, "xend":F
    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v3, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v2

    .line 378
    .local v2, "ystart":F
    iget-object v3, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v4, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v3

    .line 379
    .local v3, "xstart":F
    iget-object v4, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v7, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v4

    .line 380
    .local v4, "b":F
    iget-object v7, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v8, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v7

    .line 381
    .restart local v7    # "r":F
    iget-object v8, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v11, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v8

    .line 382
    .local v8, "t":F
    iget-object v11, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v12, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v11

    .line 383
    .local v11, "l":F
    add-float v12, v7, v11

    div-float/2addr v12, v9

    .line 384
    .local v12, "cx":F
    add-float v13, v8, v4

    div-float/2addr v13, v9

    .line 385
    .local v13, "cy":F
    invoke-static {v12, v13, v3, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->getArc(FFFF)F

    move-result v9

    .line 386
    .local v9, "arc1":F
    invoke-static {v12, v13, v1, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->getArc(FFFF)F

    move-result v14

    .line 387
    .local v14, "arc2":F
    sub-float/2addr v14, v9

    .line 388
    cmpg-float v6, v14, v6

    if-gtz v6, :cond_b

    .line 389
    add-float/2addr v14, v5

    .line 390
    :cond_b
    float-to-double v5, v11

    move/from16 v23, v0

    move/from16 v24, v1

    .end local v0    # "yend":F
    .end local v1    # "xend":F
    .local v23, "yend":F
    .local v24, "xend":F
    float-to-double v0, v4

    move/from16 v25, v2

    move/from16 v41, v3

    .end local v2    # "ystart":F
    .end local v3    # "xstart":F
    .local v25, "ystart":F
    .local v41, "xstart":F
    float-to-double v2, v7

    move/from16 v42, v11

    move/from16 v43, v12

    .end local v11    # "l":F
    .end local v12    # "cx":F
    .local v42, "l":F
    .local v43, "cx":F
    float-to-double v11, v8

    move/from16 v44, v7

    move/from16 v45, v8

    .end local v7    # "r":F
    .end local v8    # "t":F
    .local v44, "r":F
    .restart local v45    # "t":F
    float-to-double v7, v9

    move/from16 v46, v9

    .end local v9    # "arc1":F
    .local v46, "arc1":F
    float-to-double v9, v14

    move-wide/from16 v29, v5

    move-wide/from16 v31, v0

    move-wide/from16 v33, v2

    move-wide/from16 v35, v11

    move-wide/from16 v37, v7

    move-wide/from16 v39, v9

    invoke-static/range {v29 .. v40}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->bezierArc(DDDDDD)Ljava/util/List;

    move-result-object v0

    .line 391
    .local v0, "ar":Ljava/util/List;, "Ljava/util/List<[D>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    .line 392
    const/4 v1, 0x1

    move-object/from16 v10, p0

    goto/16 :goto_12

    .line 393
    :cond_c
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    .line 394
    .local v1, "pt":[D
    move-object/from16 v10, p0

    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move/from16 v12, v43

    .end local v43    # "cx":F
    .restart local v12    # "cx":F
    float-to-double v5, v12

    float-to-double v7, v13

    invoke-virtual {v2, v5, v6, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 395
    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    aget-wide v5, v1, v15

    const/4 v3, 0x1

    aget-wide v7, v1, v3

    invoke-virtual {v2, v5, v6, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 396
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    .line 397
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, [D

    .line 398
    iget-object v3, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    const/4 v5, 0x2

    aget-wide v48, v1, v5

    const/4 v6, 0x3

    aget-wide v50, v1, v6

    const/4 v7, 0x4

    aget-wide v52, v1, v7

    const/4 v8, 0x5

    aget-wide v54, v1, v8

    const/4 v9, 0x6

    aget-wide v56, v1, v9

    const/4 v11, 0x7

    aget-wide v58, v1, v11

    move-object/from16 v47, v3

    invoke-virtual/range {v47 .. v59}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->curveTo(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 396
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 400
    .end local v2    # "k":I
    :cond_d
    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    float-to-double v5, v12

    float-to-double v7, v13

    invoke-virtual {v2, v5, v6, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 401
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->strokeAndFill()V

    .line 402
    const/4 v1, 0x1

    goto/16 :goto_12

    .line 350
    .end local v0    # "ar":Ljava/util/List;, "Ljava/util/List<[D>;"
    .end local v1    # "pt":[D
    .end local v4    # "b":F
    .end local v23    # "yend":F
    .end local v24    # "xend":F
    .end local v25    # "ystart":F
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .end local v41    # "xstart":F
    .end local v42    # "l":F
    .end local v44    # "r":F
    .end local v45    # "t":F
    .end local v46    # "arc1":F
    .local v12, "lenMarker":I
    .local v13, "tsize":I
    .local v14, "function":I
    :sswitch_4
    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getLineNeutral()Z

    move-result v0

    invoke-virtual {v10, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->isNullStrokeFill(Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 351
    const/4 v1, 0x1

    goto/16 :goto_12

    .line 352
    :cond_e
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v1, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v0

    .line 353
    .local v0, "yend":F
    iget-object v1, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v1

    .line 354
    .local v1, "xend":F
    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v3, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v2

    .line 355
    .local v2, "ystart":F
    iget-object v3, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v4, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v3

    .line 356
    .restart local v3    # "xstart":F
    iget-object v4, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v7, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v4

    .line 357
    .restart local v4    # "b":F
    iget-object v7, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v8, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v7

    .line 358
    .restart local v7    # "r":F
    iget-object v8, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v11, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v8

    .line 359
    .restart local v8    # "t":F
    iget-object v11, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v12, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v11

    .line 360
    .restart local v11    # "l":F
    add-float v12, v7, v11

    div-float/2addr v12, v9

    .line 361
    .local v12, "cx":F
    add-float v13, v8, v4

    div-float/2addr v13, v9

    .line 362
    .local v13, "cy":F
    invoke-static {v12, v13, v3, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->getArc(FFFF)F

    move-result v9

    .line 363
    .restart local v9    # "arc1":F
    invoke-static {v12, v13, v1, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->getArc(FFFF)F

    move-result v14

    .line 364
    .local v14, "arc2":F
    sub-float/2addr v14, v9

    .line 365
    cmpg-float v6, v14, v6

    if-gtz v6, :cond_f

    .line 366
    add-float/2addr v14, v5

    .line 367
    :cond_f
    iget-object v5, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move v6, v0

    move v15, v1

    .end local v0    # "yend":F
    .end local v1    # "xend":F
    .local v6, "yend":F
    .local v15, "xend":F
    float-to-double v0, v11

    move/from16 v17, v2

    move/from16 v18, v3

    .end local v2    # "ystart":F
    .end local v3    # "xstart":F
    .local v17, "ystart":F
    .local v18, "xstart":F
    float-to-double v2, v4

    move/from16 v19, v11

    move/from16 v20, v12

    .end local v11    # "l":F
    .end local v12    # "cx":F
    .local v19, "l":F
    .local v20, "cx":F
    float-to-double v11, v7

    move/from16 v22, v6

    move/from16 v21, v7

    .end local v6    # "yend":F
    .end local v7    # "r":F
    .local v21, "r":F
    .local v22, "yend":F
    float-to-double v6, v8

    move-wide/from16 v23, v6

    float-to-double v6, v9

    move/from16 v25, v8

    move/from16 v42, v9

    .end local v8    # "t":F
    .end local v9    # "arc1":F
    .local v25, "t":F
    .local v42, "arc1":F
    float-to-double v8, v14

    move-object/from16 v29, v5

    move-wide/from16 v30, v0

    move-wide/from16 v32, v2

    move-wide/from16 v34, v11

    move-wide/from16 v36, v23

    move-wide/from16 v38, v6

    move-wide/from16 v40, v8

    invoke-virtual/range {v29 .. v41}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->arc(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 368
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 369
    const/4 v1, 0x1

    goto/16 :goto_12

    .line 452
    .end local v4    # "b":F
    .end local v15    # "xend":F
    .end local v17    # "ystart":F
    .end local v18    # "xstart":F
    .end local v19    # "l":F
    .end local v20    # "cx":F
    .end local v21    # "r":F
    .end local v22    # "yend":F
    .end local v25    # "t":F
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .end local v42    # "arc1":F
    .local v12, "lenMarker":I
    .local v13, "tsize":I
    .local v14, "function":I
    :sswitch_5
    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->isNullStrokeFill(Z)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 453
    const/4 v1, 0x1

    goto/16 :goto_12

    .line 454
    :cond_10
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v0, v15}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v0

    iget-object v1, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 455
    .local v0, "h":F
    iget-object v1, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v1

    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v2, v15}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v2

    sub-float/2addr v1, v2

    .line 456
    .local v1, "w":F
    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v3, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v2

    .line 457
    .local v2, "b":F
    iget-object v3, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v4, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v3

    .line 458
    .local v3, "r":F
    iget-object v4, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v5, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v4

    .line 459
    .local v4, "t":F
    iget-object v5, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v6, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v5

    .line 460
    .local v5, "l":F
    iget-object v6, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    float-to-double v7, v5

    float-to-double v11, v2

    sub-float v9, v3, v5

    float-to-double v13, v9

    sub-float v9, v4, v2

    move v15, v2

    move/from16 v17, v3

    .end local v2    # "b":F
    .end local v3    # "r":F
    .local v15, "b":F
    .local v17, "r":F
    float-to-double v2, v9

    add-float v9, v0, v1

    const/high16 v18, 0x40800000    # 4.0f

    div-float v9, v9, v18

    move/from16 v18, v0

    move/from16 v19, v1

    .end local v0    # "h":F
    .end local v1    # "w":F
    .local v18, "h":F
    .local v19, "w":F
    float-to-double v0, v9

    move-object/from16 v29, v6

    move-wide/from16 v30, v7

    move-wide/from16 v32, v11

    move-wide/from16 v34, v13

    move-wide/from16 v36, v2

    move-wide/from16 v38, v0

    invoke-virtual/range {v29 .. v39}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->roundRectangle(DDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->strokeAndFill()V

    .line 462
    const/4 v1, 0x1

    goto/16 :goto_12

    .line 315
    .end local v4    # "t":F
    .end local v5    # "l":F
    .end local v15    # "b":F
    .end local v17    # "r":F
    .end local v18    # "h":F
    .end local v19    # "w":F
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .restart local v12    # "lenMarker":I
    .restart local v13    # "tsize":I
    .restart local v14    # "function":I
    :sswitch_6
    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    invoke-virtual {v10, v15}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->isNullStrokeFill(Z)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 316
    const/4 v1, 0x1

    goto/16 :goto_12

    .line 317
    :cond_11
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    move-result v0

    .line 318
    .local v0, "numPoly":I
    new-array v1, v0, [I

    .line 319
    .local v1, "lens":[I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_a
    array-length v3, v1

    if-ge v2, v3, :cond_12

    .line 320
    iget-object v3, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    move-result v3

    aput v3, v1, v2

    .line 319
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 321
    .end local v2    # "k":I
    :cond_12
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_b
    array-length v3, v1

    if-ge v2, v3, :cond_14

    .line 322
    aget v3, v1, v2

    .line 323
    .local v3, "len":I
    iget-object v4, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v4

    .line 324
    .local v4, "sx":I
    iget-object v5, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v5

    .line 325
    .local v5, "sy":I
    iget-object v6, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v7, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v7, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v7

    float-to-double v7, v7

    iget-object v9, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v9, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v9

    float-to-double v11, v9

    invoke-virtual {v6, v7, v8, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 326
    const/4 v6, 0x1

    .local v6, "k":I
    :goto_c
    if-ge v6, v3, :cond_13

    .line 327
    iget-object v7, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v7

    .line 328
    .local v7, "x":I
    iget-object v8, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v8

    .line 329
    .local v8, "y":I
    iget-object v9, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v11, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v11, v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v11

    float-to-double v11, v11

    iget-object v13, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v13, v8}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v13

    float-to-double v13, v13

    invoke-virtual {v9, v11, v12, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 326
    .end local v7    # "x":I
    .end local v8    # "y":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 331
    .end local v6    # "k":I
    :cond_13
    iget-object v6, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v7, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v7, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v7

    float-to-double v7, v7

    iget-object v9, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v9, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v9

    float-to-double v11, v9

    invoke-virtual {v6, v7, v8, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 321
    .end local v3    # "len":I
    .end local v4    # "sx":I
    .end local v5    # "sy":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 333
    .end local v2    # "j":I
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->strokeAndFill()V

    .line 334
    const/4 v1, 0x1

    goto/16 :goto_12

    .line 511
    .end local v0    # "numPoly":I
    .end local v1    # "lens":[I
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .restart local v12    # "lenMarker":I
    .restart local v13    # "tsize":I
    .restart local v14    # "function":I
    :sswitch_7
    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    move-result v1

    .line 512
    .local v1, "count":I
    new-array v11, v1, [B

    .line 514
    .local v11, "text":[B
    const/4 v0, 0x0

    move v12, v0

    .local v12, "k":I
    :goto_d
    if-ge v12, v1, :cond_16

    .line 515
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readByte()I

    move-result v0

    int-to-byte v0, v0

    .line 516
    .local v0, "c":B
    if-nez v0, :cond_15

    .line 517
    goto :goto_e

    .line 518
    :cond_15
    aput-byte v0, v11, v12

    .line 514
    .end local v0    # "c":B
    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 522
    :cond_16
    :goto_e
    :try_start_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v11, v15, v12, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_4

    .line 526
    .local v0, "s":Ljava/lang/String;
    goto :goto_f

    .line 524
    .end local v0    # "s":Ljava/lang/String;
    :catch_4
    move-exception v0

    .line 525
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v11, v15, v12}, Ljava/lang/String;-><init>([BII)V

    move-object v0, v2

    .line 527
    .local v0, "s":Ljava/lang/String;
    :goto_f
    add-int/lit8 v2, v1, 0x1

    const v3, 0xfffe

    and-int v13, v2, v3

    .line 528
    .end local v1    # "count":I
    .local v13, "count":I
    iget-object v1, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    sub-int v2, v13, v12

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->skip(I)V

    .line 529
    iget-object v1, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v14

    .line 530
    .local v14, "y":I
    iget-object v1, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v15

    .line 531
    .local v15, "x":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move v2, v15

    move v3, v14

    move-object v9, v0

    invoke-virtual/range {v1 .. v9}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->outputText(IIIIIIILjava/lang/String;)V

    .line 532
    const/4 v1, 0x1

    goto/16 :goto_12

    .line 551
    .end local v0    # "s":Ljava/lang/String;
    .end local v11    # "text":[B
    .end local v15    # "x":I
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .local v12, "lenMarker":I
    .local v13, "tsize":I
    .local v14, "function":I
    :sswitch_8
    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    .line 552
    .local v0, "color":Lcom/itextpdf/kernel/colors/Color;
    iget-object v1, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v1

    .line 553
    .local v1, "y":I
    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    .line 554
    .local v2, "x":I
    iget-object v3, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 555
    iget-object v3, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v3, v0}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->setFillColor(Lcom/itextpdf/kernel/colors/Color;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 556
    iget-object v3, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v4, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v4, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v4

    float-to-double v4, v4

    iget-object v6, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v6, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v6

    float-to-double v6, v6

    const-wide v22, 0x3fc99999a0000000L    # 0.20000000298023224

    const-wide v24, 0x3fc99999a0000000L    # 0.20000000298023224

    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    invoke-virtual/range {v17 .. v25}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 557
    iget-object v3, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 558
    iget-object v3, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 559
    const/4 v1, 0x1

    goto/16 :goto_12

    .line 440
    .end local v0    # "color":Lcom/itextpdf/kernel/colors/Color;
    .end local v1    # "y":I
    .end local v2    # "x":I
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .restart local v12    # "lenMarker":I
    .restart local v13    # "tsize":I
    .restart local v14    # "function":I
    :sswitch_9
    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->isNullStrokeFill(Z)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 441
    goto/16 :goto_12

    .line 442
    :cond_17
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v0

    .line 443
    .local v0, "b":F
    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v3, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v2

    .line 444
    .local v2, "r":F
    iget-object v3, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v4, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v3

    .line 445
    .local v3, "t":F
    iget-object v4, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v5, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v4

    .line 446
    .local v4, "l":F
    iget-object v11, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    float-to-double v12, v4

    float-to-double v14, v0

    sub-float v5, v2, v4

    float-to-double v5, v5

    sub-float v7, v3, v0

    float-to-double v7, v7

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    invoke-virtual/range {v11 .. v19}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->strokeAndFill()V

    .line 448
    goto/16 :goto_12

    .line 338
    .end local v0    # "b":F
    .end local v2    # "r":F
    .end local v3    # "t":F
    .end local v4    # "l":F
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .restart local v12    # "lenMarker":I
    .restart local v13    # "tsize":I
    .restart local v14    # "function":I
    :sswitch_a
    move v1, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getLineNeutral()Z

    move-result v0

    invoke-virtual {v10, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->isNullStrokeFill(Z)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 339
    goto/16 :goto_12

    .line 340
    :cond_18
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v0

    .line 341
    .local v0, "b":I
    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    .line 342
    .local v2, "r":I
    iget-object v3, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v3

    .line 343
    .local v3, "t":I
    iget-object v4, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v4

    .line 344
    .local v4, "l":I
    iget-object v11, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v5, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v5, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v5

    float-to-double v12, v5

    iget-object v5, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v5, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v5

    float-to-double v14, v5

    iget-object v5, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v5, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v5

    float-to-double v5, v5

    iget-object v7, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v7, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v7

    float-to-double v7, v7

    const-wide/16 v20, 0x0

    const-wide v22, 0x4076800000000000L    # 360.0

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    invoke-virtual/range {v11 .. v23}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->arc(DDDDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->strokeAndFill()V

    .line 346
    goto/16 :goto_12

    .line 466
    .end local v0    # "b":I
    .end local v2    # "r":I
    .end local v3    # "t":I
    .end local v4    # "l":I
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .restart local v12    # "lenMarker":I
    .restart local v13    # "tsize":I
    .restart local v14    # "function":I
    :sswitch_b
    move v1, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v0

    .line 467
    .local v0, "b":F
    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v3, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v2

    .line 468
    .local v2, "r":F
    iget-object v3, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v4, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v3

    .line 469
    .local v3, "t":F
    iget-object v4, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v5, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v4

    .line 470
    .local v4, "l":F
    iget-object v11, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    float-to-double v12, v4

    float-to-double v14, v0

    sub-float v5, v2, v4

    float-to-double v5, v5

    sub-float v7, v3, v0

    float-to-double v7, v7

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    invoke-virtual/range {v11 .. v19}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(DDDD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 471
    iget-object v5, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->eoClip()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 472
    iget-object v5, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->endPath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 473
    goto/16 :goto_12

    .line 283
    .end local v0    # "b":F
    .end local v2    # "r":F
    .end local v3    # "t":F
    .end local v4    # "l":F
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .restart local v12    # "lenMarker":I
    .restart local v13    # "tsize":I
    .restart local v14    # "function":I
    :sswitch_c
    move v1, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setLineJoinPolygon(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 284
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    move-result v0

    .line 285
    .local v0, "len":I
    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    .line 286
    .local v2, "x":I
    iget-object v3, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v3

    .line 287
    .local v3, "y":I
    iget-object v4, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v5, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v5, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v5

    float-to-double v5, v5

    iget-object v7, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v7, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 288
    const/4 v4, 0x1

    .local v4, "k":I
    :goto_10
    if-ge v4, v0, :cond_19

    .line 289
    iget-object v5, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    .line 290
    iget-object v5, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v3

    .line 291
    iget-object v5, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v6, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v6, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v6

    float-to-double v6, v6

    iget-object v8, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v8, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 288
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 293
    .end local v4    # "k":I
    :cond_19
    iget-object v4, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 294
    goto/16 :goto_12

    .line 298
    .end local v0    # "len":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .restart local v12    # "lenMarker":I
    .restart local v13    # "tsize":I
    .restart local v14    # "function":I
    :sswitch_d
    move v1, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    invoke-virtual {v10, v15}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->isNullStrokeFill(Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 299
    goto/16 :goto_12

    .line 300
    :cond_1a
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    move-result v0

    .line 301
    .restart local v0    # "len":I
    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    .line 302
    .local v2, "sx":I
    iget-object v3, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v3

    .line 303
    .local v3, "sy":I
    iget-object v4, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v5, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v5, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v5

    float-to-double v5, v5

    iget-object v7, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v7, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 304
    const/4 v4, 0x1

    .restart local v4    # "k":I
    :goto_11
    if-ge v4, v0, :cond_1b

    .line 305
    iget-object v5, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v5

    .line 306
    .local v5, "x":I
    iget-object v6, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v6

    .line 307
    .local v6, "y":I
    iget-object v7, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v8, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v8, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v8

    float-to-double v8, v8

    iget-object v11, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v11, v6}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v11

    float-to-double v11, v11

    invoke-virtual {v7, v8, v9, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 304
    .end local v5    # "x":I
    .end local v6    # "y":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 309
    .end local v4    # "k":I
    :cond_1b
    iget-object v4, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v5, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v5, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v5

    float-to-double v5, v5

    iget-object v7, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v7, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->strokeAndFill()V

    .line 311
    goto/16 :goto_12

    .line 222
    .end local v0    # "len":I
    .end local v2    # "sx":I
    .end local v3    # "sy":I
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .restart local v12    # "lenMarker":I
    .restart local v13    # "tsize":I
    .restart local v14    # "function":I
    :sswitch_e
    move v1, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaBrush;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaBrush;-><init>()V

    .line 223
    .local v0, "brush":Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaBrush;
    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaBrush;->init(Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;)V

    .line 224
    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->addMetaObject(Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaObject;)V

    .line 225
    goto/16 :goto_12

    .line 229
    .end local v0    # "brush":Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaBrush;
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .restart local v12    # "lenMarker":I
    .restart local v13    # "tsize":I
    .restart local v14    # "function":I
    :sswitch_f
    move v1, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;-><init>()V

    .line 230
    .local v0, "font":Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;
    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;->init(Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;)V

    .line 231
    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->addMetaObject(Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaObject;)V

    .line 232
    goto/16 :goto_12

    .line 215
    .end local v0    # "font":Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaFont;
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .restart local v12    # "lenMarker":I
    .restart local v13    # "tsize":I
    .restart local v14    # "function":I
    :sswitch_10
    move v1, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;-><init>()V

    .line 216
    .local v0, "pen":Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;
    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;->init(Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;)V

    .line 217
    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->addMetaObject(Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaObject;)V

    .line 218
    goto/16 :goto_12

    .line 265
    .end local v0    # "pen":Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .restart local v12    # "lenMarker":I
    .restart local v13    # "tsize":I
    .restart local v14    # "function":I
    :sswitch_11
    move v1, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v0

    .line 266
    .local v0, "y":I
    new-instance v2, Lcom/itextpdf/kernel/geom/Point;

    iget-object v3, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v3

    invoke-direct {v2, v3, v0}, Lcom/itextpdf/kernel/geom/Point;-><init>(II)V

    .line 267
    .local v2, "p":Lcom/itextpdf/kernel/geom/Point;
    iget-object v3, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setCurrentPoint(Lcom/itextpdf/kernel/geom/Point;)V

    .line 268
    goto/16 :goto_12

    .line 272
    .end local v0    # "y":I
    .end local v2    # "p":Lcom/itextpdf/kernel/geom/Point;
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .restart local v12    # "lenMarker":I
    .restart local v13    # "tsize":I
    .restart local v14    # "function":I
    :sswitch_12
    move v1, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v0

    .line 273
    .restart local v0    # "y":I
    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    .line 274
    .local v2, "x":I
    iget-object v3, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getCurrentPoint()Lcom/itextpdf/kernel/geom/Point;

    move-result-object v3

    .line 275
    .local v3, "p":Lcom/itextpdf/kernel/geom/Point;
    iget-object v4, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v5, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v5

    float-to-double v5, v5

    iget-object v7, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v8

    double-to-int v8, v8

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->moveTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 276
    iget-object v4, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    iget-object v5, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v5, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformX(I)F

    move-result v5

    float-to-double v5, v5

    iget-object v7, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v7, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->transformY(I)F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->lineTo(DD)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 277
    iget-object v4, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->stroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 278
    iget-object v4, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    new-instance v5, Lcom/itextpdf/kernel/geom/Point;

    invoke-direct {v5, v2, v0}, Lcom/itextpdf/kernel/geom/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setCurrentPoint(Lcom/itextpdf/kernel/geom/Point;)V

    .line 279
    goto/16 :goto_12

    .line 260
    .end local v0    # "y":I
    .end local v2    # "x":I
    .end local v3    # "p":Lcom/itextpdf/kernel/geom/Point;
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .restart local v12    # "lenMarker":I
    .restart local v13    # "tsize":I
    .restart local v14    # "function":I
    :sswitch_13
    move v1, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setExtentWy(I)V

    .line 261
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setExtentWx(I)V

    .line 262
    goto/16 :goto_12

    .line 256
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .restart local v12    # "lenMarker":I
    .restart local v13    # "tsize":I
    .restart local v14    # "function":I
    :sswitch_14
    move v1, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setOffsetWy(I)V

    .line 257
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setOffsetWx(I)V

    .line 258
    goto/16 :goto_12

    .line 538
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .restart local v12    # "lenMarker":I
    .restart local v13    # "tsize":I
    .restart local v14    # "function":I
    :sswitch_15
    move v1, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setCurrentTextColor(Lcom/itextpdf/kernel/colors/Color;)V

    .line 539
    goto/16 :goto_12

    .line 535
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .restart local v12    # "lenMarker":I
    .restart local v13    # "tsize":I
    .restart local v14    # "function":I
    :sswitch_16
    move v1, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setCurrentBackgroundColor(Lcom/itextpdf/kernel/colors/Color;)V

    .line 536
    goto/16 :goto_12

    .line 242
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .restart local v12    # "lenMarker":I
    .restart local v13    # "tsize":I
    .restart local v14    # "function":I
    :sswitch_17
    move v1, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    move-result v0

    .line 243
    .local v0, "idx":I
    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->deleteMetaObject(I)V

    .line 244
    goto/16 :goto_12

    .line 541
    .end local v0    # "idx":I
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .restart local v12    # "lenMarker":I
    .restart local v13    # "tsize":I
    .restart local v14    # "function":I
    :sswitch_18
    move v1, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setTextAlign(I)V

    .line 542
    goto/16 :goto_12

    .line 236
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .restart local v12    # "lenMarker":I
    .restart local v13    # "tsize":I
    .restart local v14    # "function":I
    :sswitch_19
    move v1, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    move-result v0

    .line 237
    .restart local v0    # "idx":I
    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v3, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v2, v0, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->selectMetaObject(ILcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 238
    goto/16 :goto_12

    .line 251
    .end local v0    # "idx":I
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .restart local v12    # "lenMarker":I
    .restart local v13    # "tsize":I
    .restart local v14    # "function":I
    :sswitch_1a
    move v1, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v0

    .line 252
    .restart local v0    # "idx":I
    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v3, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v2, v0, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->restoreState(ILcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 253
    goto :goto_12

    .line 547
    .end local v0    # "idx":I
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .restart local v12    # "lenMarker":I
    .restart local v13    # "tsize":I
    .restart local v14    # "function":I
    :sswitch_1b
    move v1, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setPolyFillMode(I)V

    .line 548
    goto :goto_12

    .line 544
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .restart local v12    # "lenMarker":I
    .restart local v13    # "tsize":I
    .restart local v14    # "function":I
    :sswitch_1c
    move v1, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->setBackgroundMode(I)V

    .line 545
    goto :goto_12

    .line 211
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .restart local v12    # "lenMarker":I
    .restart local v13    # "tsize":I
    .restart local v14    # "function":I
    :sswitch_1d
    move v1, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaObject;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaObject;-><init>()V

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->addMetaObject(Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaObject;)V

    .line 212
    goto :goto_12

    .line 247
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .restart local v12    # "lenMarker":I
    .restart local v13    # "tsize":I
    .restart local v14    # "function":I
    :sswitch_1e
    move v1, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    iget-object v2, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->saveState(Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 248
    goto :goto_12

    .line 207
    .end local v26    # "lenMarker":I
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    .restart local v12    # "lenMarker":I
    .restart local v13    # "tsize":I
    .restart local v14    # "function":I
    :sswitch_1f
    move v1, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    .line 599
    .end local v12    # "lenMarker":I
    .end local v13    # "tsize":I
    .end local v14    # "function":I
    .restart local v26    # "lenMarker":I
    .restart local v27    # "tsize":I
    .restart local v28    # "function":I
    :goto_12
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->in:Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    mul-int/lit8 v13, v27, 0x2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->getLength()I

    move-result v2

    sub-int v2, v2, v26

    sub-int/2addr v13, v2

    invoke-virtual {v0, v13}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->skip(I)V

    .line 600
    .end local v26    # "lenMarker":I
    move v11, v1

    goto/16 :goto_0

    .line 177
    .end local v27    # "tsize":I
    .end local v28    # "function":I
    :cond_1c
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Not a placeable windows metafile."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1f
        0x1e -> :sswitch_1e
        0xf7 -> :sswitch_1d
        0x102 -> :sswitch_1c
        0x106 -> :sswitch_1b
        0x127 -> :sswitch_1a
        0x12d -> :sswitch_19
        0x12e -> :sswitch_18
        0x142 -> :sswitch_1d
        0x1f0 -> :sswitch_17
        0x201 -> :sswitch_16
        0x209 -> :sswitch_15
        0x20b -> :sswitch_14
        0x20c -> :sswitch_13
        0x213 -> :sswitch_12
        0x214 -> :sswitch_11
        0x2fa -> :sswitch_10
        0x2fb -> :sswitch_f
        0x2fc -> :sswitch_e
        0x324 -> :sswitch_d
        0x325 -> :sswitch_c
        0x416 -> :sswitch_b
        0x418 -> :sswitch_a
        0x41b -> :sswitch_9
        0x41f -> :sswitch_8
        0x521 -> :sswitch_7
        0x538 -> :sswitch_6
        0x61c -> :sswitch_5
        0x6ff -> :sswitch_1d
        0x817 -> :sswitch_4
        0x81a -> :sswitch_3
        0x830 -> :sswitch_2
        0xa32 -> :sswitch_1
        0xb41 -> :sswitch_0
        0xf43 -> :sswitch_0
    .end sparse-switch
.end method

.method public strokeAndFill()V
    .locals 7

    .line 705
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getCurrentPen()Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;

    move-result-object v0

    .line 706
    .local v0, "pen":Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getCurrentBrush()Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaBrush;

    move-result-object v1

    .line 707
    .local v1, "brush":Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaBrush;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaPen;->getStyle()I

    move-result v2

    .line 708
    .local v2, "penStyle":I
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaBrush;->getStyle()I

    move-result v3

    .line 709
    .local v3, "brushStyle":I
    const/4 v4, 0x1

    const/4 v5, 0x5

    if-ne v2, v5, :cond_1

    .line 710
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->closePath()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 711
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getPolyFillMode()I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 712
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->eoFill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_2

    .line 715
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_2

    .line 719
    :cond_1
    if-eqz v3, :cond_3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getBackgroundMode()I

    move-result v6

    if-ne v6, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v5, v4

    .line 720
    .local v5, "isBrush":Z
    :goto_1
    if-eqz v5, :cond_5

    .line 721
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->state:Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaState;->getPolyFillMode()I

    move-result v6

    if-ne v6, v4, :cond_4

    .line 722
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->closePathEoFillStroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_2

    .line 724
    :cond_4
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->closePathFillStroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_2

    .line 727
    :cond_5
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->cb:Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->closePathStroke()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 730
    .end local v5    # "isBrush":Z
    :goto_2
    return-void
.end method
