.class public Lcom/itextpdf/io/font/CFFFontSubset;
.super Lcom/itextpdf/io/font/CFFFont;
.source "CFFFontSubset.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final ENDCHAR_OP:B = 0xet

.field static final RETURN_OP:B = 0xbt

.field static final SubrsEscapeFuncs:[Ljava/lang/String;

.field static final SubrsFunctions:[Ljava/lang/String;


# instance fields
.field FDArrayUsed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field GBias:I

.field GlyphsUsed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field NewCharStringsIndex:[B

.field NewGSubrsIndex:[B

.field NewLSubrsIndex:[[B

.field NewSubrsIndexNonCID:[B

.field NumOfHints:I

.field OutputList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/itextpdf/io/font/CFFFont$Item;",
            ">;"
        }
    .end annotation
.end field

.field glyphsInList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field hGSubrsUsed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field hSubrsUsed:Lcom/itextpdf/io/util/GenericArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/itextpdf/io/util/GenericArray<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field hSubrsUsedNonCID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field lGSubrsUsed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field lSubrsUsed:Lcom/itextpdf/io/util/GenericArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/itextpdf/io/util/GenericArray<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field lSubrsUsedNonCID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 40

    .line 67
    nop

    .line 72
    const-string v0, "RESERVED_0"

    const-string v1, "hstem"

    const-string v2, "RESERVED_2"

    const-string/jumbo v3, "vstem"

    const-string/jumbo v4, "vmoveto"

    const-string/jumbo v5, "rlineto"

    const-string v6, "hlineto"

    const-string/jumbo v7, "vlineto"

    const-string/jumbo v8, "rrcurveto"

    const-string v9, "RESERVED_9"

    const-string v10, "callsubr"

    const-string/jumbo v11, "return"

    const-string v12, "escape"

    const-string v13, "RESERVED_13"

    const-string v14, "endchar"

    const-string v15, "RESERVED_15"

    const-string v16, "RESERVED_16"

    const-string v17, "RESERVED_17"

    const-string v18, "hstemhm"

    const-string v19, "hintmask"

    const-string v20, "cntrmask"

    const-string/jumbo v21, "rmoveto"

    const-string v22, "hmoveto"

    const-string/jumbo v23, "vstemhm"

    const-string/jumbo v24, "rcurveline"

    const-string/jumbo v25, "rlinecurve"

    const-string/jumbo v26, "vvcurveto"

    const-string v27, "hhcurveto"

    const-string/jumbo v28, "shortint"

    const-string v29, "callgsubr"

    const-string/jumbo v30, "vhcurveto"

    const-string v31, "hvcurveto"

    filled-new-array/range {v0 .. v31}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/font/CFFFontSubset;->SubrsFunctions:[Ljava/lang/String;

    .line 82
    const-string v1, "RESERVED_0"

    const-string v2, "RESERVED_1"

    const-string v3, "RESERVED_2"

    const-string v4, "and"

    const-string v5, "or"

    const-string v6, "not"

    const-string v7, "RESERVED_6"

    const-string v8, "RESERVED_7"

    const-string v9, "RESERVED_8"

    const-string v10, "abs"

    const-string v11, "add"

    const-string/jumbo v12, "sub"

    const-string v13, "div"

    const-string v14, "RESERVED_13"

    const-string v15, "neg"

    const-string v16, "eq"

    const-string v17, "RESERVED_16"

    const-string v18, "RESERVED_17"

    const-string v19, "drop"

    const-string v20, "RESERVED_19"

    const-string/jumbo v21, "put"

    const-string v22, "get"

    const-string v23, "ifelse"

    const-string/jumbo v24, "random"

    const-string v25, "mul"

    const-string v26, "RESERVED_25"

    const-string/jumbo v27, "sqrt"

    const-string v28, "dup"

    const-string v29, "exch"

    const-string v30, "index"

    const-string/jumbo v31, "roll"

    const-string v32, "RESERVED_31"

    const-string v33, "RESERVED_32"

    const-string v34, "RESERVED_33"

    const-string v35, "hflex"

    const-string v36, "flex"

    const-string v37, "hflex1"

    const-string v38, "flex1"

    const-string v39, "RESERVED_REST"

    filled-new-array/range {v1 .. v39}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/font/CFFFontSubset;->SubrsEscapeFuncs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BLjava/util/Set;)V
    .locals 4
    .param p1, "cff"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 173
    .local p2, "GlyphsUsed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/itextpdf/io/font/CFFFont;-><init>([B)V

    .line 108
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->FDArrayUsed:Ljava/util/Set;

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->hGSubrsUsed:Ljava/util/Set;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->lGSubrsUsed:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->hSubrsUsedNonCID:Ljava/util/Set;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->lSubrsUsedNonCID:Ljava/util/List;

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->GBias:I

    .line 163
    iput v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NumOfHints:I

    .line 174
    iput-object p2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->GlyphsUsed:Ljava/util/Set;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->glyphsInList:Ljava/util/List;

    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 180
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->charstringsOffset:I

    invoke-virtual {p0, v1}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 181
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard16()C

    move-result v2

    iput v2, v1, Lcom/itextpdf/io/font/CFFFont$Font;->nglyphs:I

    .line 184
    iget v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->stringIndexOffset:I

    invoke-virtual {p0, v1}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 185
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard16()C

    move-result v2

    sget-object v3, Lcom/itextpdf/io/font/CFFFontSubset;->standardStrings:[Ljava/lang/String;

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/itextpdf/io/font/CFFFont$Font;->nstrings:I

    .line 188
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->charstringsOffset:I

    invoke-virtual {p0, v2}, Lcom/itextpdf/io/font/CFFFontSubset;->getIndex(I)[I

    move-result-object v2

    iput-object v2, v1, Lcom/itextpdf/io/font/CFFFont$Font;->charstringsOffsets:[I

    .line 191
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->fdselectOffset:I

    if-ltz v1, :cond_0

    .line 193
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->readFDSelect(I)V

    .line 195
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildFDArrayUsed(I)V

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->isCID:Z

    if-eqz v1, :cond_1

    .line 199
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->ReadFDArray(I)V

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->charsetOffset:I

    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/itextpdf/io/font/CFFFont$Font;->nglyphs:I

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/io/font/CFFFontSubset;->CountCharset(II)I

    move-result v2

    iput v2, v1, Lcom/itextpdf/io/font/CFFFont$Font;->CharsetLength:I

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    .end local v0    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method protected AssembleIndex([I[B)[B
    .locals 16
    .param p1, "NewOffsets"    # [I
    .param p2, "NewObjects"    # [B

    .line 1055
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    int-to-char v2, v2

    .line 1057
    .local v2, "Count":C
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget v3, v0, v3

    .line 1062
    .local v3, "Size":I
    const/16 v4, 0xff

    if-ge v3, v4, :cond_0

    .line 1063
    const/4 v5, 0x1

    .local v5, "Offsize":B
    goto :goto_0

    .line 1064
    .end local v5    # "Offsize":B
    :cond_0
    const v5, 0xffff

    if-ge v3, v5, :cond_1

    .line 1065
    const/4 v5, 0x2

    .restart local v5    # "Offsize":B
    goto :goto_0

    .line 1066
    .end local v5    # "Offsize":B
    :cond_1
    const v5, 0xffffff

    if-ge v3, v5, :cond_2

    .line 1067
    const/4 v5, 0x3

    .restart local v5    # "Offsize":B
    goto :goto_0

    .line 1069
    .end local v5    # "Offsize":B
    :cond_2
    const/4 v5, 0x4

    .line 1073
    .restart local v5    # "Offsize":B
    :goto_0
    add-int/lit8 v6, v2, 0x1

    mul-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x3

    array-length v7, v1

    add-int/2addr v6, v7

    new-array v6, v6, [B

    .line 1075
    .local v6, "NewIndex":[B
    const/4 v7, 0x0

    .line 1079
    .local v7, "Place":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "Place":I
    .local v8, "Place":I
    shr-int/lit8 v9, v2, 0x8

    and-int/2addr v9, v4

    int-to-byte v9, v9

    aput-byte v9, v6, v7

    .line 1080
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "Place":I
    .restart local v7    # "Place":I
    and-int/lit16 v9, v2, 0xff

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    .line 1082
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "Place":I
    .restart local v8    # "Place":I
    aput-byte v5, v6, v7

    .line 1084
    array-length v7, v0

    const/4 v9, 0x0

    move v10, v9

    :goto_1
    if-ge v10, v7, :cond_4

    aget v11, v0, v10

    .line 1086
    .local v11, "newOffset":I
    aget v12, v0, v9

    sub-int v12, v11, v12

    add-int/lit8 v12, v12, 0x1

    .line 1088
    .local v12, "Num":I
    move v13, v5

    .local v13, "i":I
    :goto_2
    if-lez v13, :cond_3

    .line 1089
    add-int/lit8 v14, v8, 0x1

    .end local v8    # "Place":I
    .local v14, "Place":I
    add-int/lit8 v15, v13, -0x1

    shl-int/lit8 v15, v15, 0x3

    ushr-int v15, v12, v15

    and-int/2addr v15, v4

    int-to-byte v15, v15

    aput-byte v15, v6, v8

    .line 1088
    add-int/lit8 v13, v13, -0x1

    move v8, v14

    goto :goto_2

    .line 1084
    .end local v11    # "newOffset":I
    .end local v12    # "Num":I
    .end local v13    # "i":I
    .end local v14    # "Place":I
    .restart local v8    # "Place":I
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1093
    :cond_4
    array-length v4, v1

    :goto_3
    if-ge v9, v4, :cond_5

    aget-byte v7, v1, v9

    .line 1094
    .local v7, "newObject":B
    add-int/lit8 v10, v8, 0x1

    .end local v8    # "Place":I
    .local v10, "Place":I
    aput-byte v7, v6, v8

    .line 1093
    .end local v7    # "newObject":B
    add-int/lit8 v9, v9, 0x1

    move v8, v10

    goto :goto_3

    .line 1097
    .end local v10    # "Place":I
    .restart local v8    # "Place":I
    :cond_5
    return-object v6
.end method

.method protected BuildFDArrayUsed(I)V
    .locals 7
    .param p1, "Font"    # I

    .line 321
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->FDSelect:[I

    .line 323
    .local v0, "FDSelect":[I
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->glyphsInList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 325
    .local v2, "glyphsInList1":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 327
    .local v3, "glyph":I
    aget v4, v0, v3

    .line 329
    .local v4, "FD":I
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFontSubset;->FDArrayUsed:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 330
    .end local v2    # "glyphsInList1":Ljava/lang/Integer;
    .end local v3    # "glyph":I
    .end local v4    # "FD":I
    goto :goto_0

    .line 331
    :cond_0
    return-void
.end method

.method protected BuildFDSubrsOffsets(II)V
    .locals 3
    .param p1, "Font"    # I
    .param p2, "FD"    # I

    .line 505
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->PrivateSubrsOffset:[I

    const/4 v1, -0x1

    aput v1, v0, p2

    .line 507
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    aget v0, v0, p2

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 509
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    aget v1, v1, p2

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateLengths:[I

    aget v2, v2, p2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 510
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getDictItem()V

    .line 512
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "Subrs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->PrivateSubrsOffset:[I

    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    aget v2, v2, p2

    add-int/2addr v1, v2

    aput v1, v0, p2

    goto :goto_0

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->PrivateSubrsOffset:[I

    aget v0, v0, p2

    if-ltz v0, :cond_2

    .line 517
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->PrivateSubrsOffsetsArray:[[I

    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->PrivateSubrsOffset:[I

    aget v1, v1, p2

    invoke-virtual {p0, v1}, Lcom/itextpdf/io/font/CFFFontSubset;->getIndex(I)[I

    move-result-object v1

    aput-object v1, v0, p2

    .line 518
    :cond_2
    return-void
.end method

.method protected BuildGSubrsUsed(I)V
    .locals 21
    .param p1, "Font"    # I

    .line 579
    move-object/from16 v8, p0

    move/from16 v9, p1

    const/4 v0, 0x0

    .line 580
    .local v0, "LBias":I
    const/4 v1, 0x0

    .line 581
    .local v1, "SizeOfNonCIDSubrsUsed":I
    iget-object v2, v8, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, v9

    iget v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->privateSubrs:I

    if-ltz v2, :cond_0

    .line 582
    iget-object v2, v8, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, v9

    iget v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->privateSubrs:I

    invoke-virtual {v8, v2, v9}, Lcom/itextpdf/io/font/CFFFontSubset;->CalcBias(II)I

    move-result v0

    .line 583
    iget-object v2, v8, Lcom/itextpdf/io/font/CFFFontSubset;->lSubrsUsedNonCID:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    move v10, v0

    goto :goto_0

    .line 581
    :cond_0
    move v10, v0

    .line 587
    .end local v0    # "LBias":I
    .local v10, "LBias":I
    :goto_0
    const/4 v0, 0x0

    move v11, v0

    move v12, v1

    .end local v1    # "SizeOfNonCIDSubrsUsed":I
    .local v11, "i":I
    .local v12, "SizeOfNonCIDSubrsUsed":I
    :goto_1
    iget-object v0, v8, Lcom/itextpdf/io/font/CFFFontSubset;->lGSubrsUsed:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_5

    .line 589
    iget-object v0, v8, Lcom/itextpdf/io/font/CFFFontSubset;->lGSubrsUsed:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 590
    .local v13, "Subr":I
    iget-object v0, v8, Lcom/itextpdf/io/font/CFFFontSubset;->gsubrOffsets:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge v13, v0, :cond_4

    if-ltz v13, :cond_4

    .line 592
    iget-object v0, v8, Lcom/itextpdf/io/font/CFFFontSubset;->gsubrOffsets:[I

    aget v14, v0, v13

    .line 593
    .local v14, "Start":I
    iget-object v0, v8, Lcom/itextpdf/io/font/CFFFontSubset;->gsubrOffsets:[I

    add-int/lit8 v1, v13, 0x1

    aget v15, v0, v1

    .line 595
    .local v15, "End":I
    iget-object v0, v8, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, v9

    iget-boolean v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->isCID:Z

    if-eqz v0, :cond_1

    .line 596
    iget v3, v8, Lcom/itextpdf/io/font/CFFFontSubset;->GBias:I

    const/4 v4, 0x0

    iget-object v5, v8, Lcom/itextpdf/io/font/CFFFontSubset;->hGSubrsUsed:Ljava/util/Set;

    iget-object v6, v8, Lcom/itextpdf/io/font/CFFFontSubset;->lGSubrsUsed:Ljava/util/List;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/io/font/CFFFontSubset;->ReadASubr(IIIILjava/util/Set;Ljava/util/List;[I)V

    goto/16 :goto_4

    .line 598
    :cond_1
    iget v3, v8, Lcom/itextpdf/io/font/CFFFontSubset;->GBias:I

    iget-object v5, v8, Lcom/itextpdf/io/font/CFFFontSubset;->hSubrsUsedNonCID:Ljava/util/Set;

    iget-object v6, v8, Lcom/itextpdf/io/font/CFFFontSubset;->lSubrsUsedNonCID:Ljava/util/List;

    iget-object v0, v8, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, v9

    iget-object v7, v0, Lcom/itextpdf/io/font/CFFFont$Font;->SubrsOffsets:[I

    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move v4, v10

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/io/font/CFFFontSubset;->ReadASubr(IIIILjava/util/Set;Ljava/util/List;[I)V

    .line 599
    iget-object v0, v8, Lcom/itextpdf/io/font/CFFFontSubset;->lSubrsUsedNonCID:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_4

    .line 600
    move v0, v12

    move v7, v0

    .local v7, "j":I
    :goto_2
    iget-object v0, v8, Lcom/itextpdf/io/font/CFFFontSubset;->lSubrsUsedNonCID:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 602
    iget-object v0, v8, Lcom/itextpdf/io/font/CFFFontSubset;->lSubrsUsedNonCID:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 603
    .local v6, "LSubr":I
    iget-object v0, v8, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, v9

    iget-object v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->SubrsOffsets:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_2

    if-ltz v6, :cond_2

    .line 605
    iget-object v0, v8, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, v9

    iget-object v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->SubrsOffsets:[I

    aget v16, v0, v6

    .line 606
    .local v16, "LStart":I
    iget-object v0, v8, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, v9

    iget-object v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->SubrsOffsets:[I

    add-int/lit8 v1, v6, 0x1

    aget v17, v0, v1

    .line 607
    .local v17, "LEnd":I
    iget v3, v8, Lcom/itextpdf/io/font/CFFFontSubset;->GBias:I

    iget-object v5, v8, Lcom/itextpdf/io/font/CFFFontSubset;->hSubrsUsedNonCID:Ljava/util/Set;

    iget-object v4, v8, Lcom/itextpdf/io/font/CFFFontSubset;->lSubrsUsedNonCID:Ljava/util/List;

    iget-object v0, v8, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, v9

    iget-object v2, v0, Lcom/itextpdf/io/font/CFFFont$Font;->SubrsOffsets:[I

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v18, v2

    move/from16 v2, v17

    move-object/from16 v19, v4

    move v4, v10

    move/from16 v20, v6

    .end local v6    # "LSubr":I
    .local v20, "LSubr":I
    move-object/from16 v6, v19

    move/from16 v19, v7

    .end local v7    # "j":I
    .local v19, "j":I
    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/io/font/CFFFontSubset;->ReadASubr(IIIILjava/util/Set;Ljava/util/List;[I)V

    goto :goto_3

    .line 603
    .end local v16    # "LStart":I
    .end local v17    # "LEnd":I
    .end local v19    # "j":I
    .end local v20    # "LSubr":I
    .restart local v6    # "LSubr":I
    .restart local v7    # "j":I
    :cond_2
    move/from16 v20, v6

    move/from16 v19, v7

    .line 600
    .end local v6    # "LSubr":I
    .end local v7    # "j":I
    .restart local v19    # "j":I
    :goto_3
    add-int/lit8 v7, v19, 0x1

    .end local v19    # "j":I
    .restart local v7    # "j":I
    goto :goto_2

    :cond_3
    move/from16 v19, v7

    .line 610
    .end local v7    # "j":I
    iget-object v0, v8, Lcom/itextpdf/io/font/CFFFontSubset;->lSubrsUsedNonCID:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v12, v0

    .line 587
    .end local v13    # "Subr":I
    .end local v14    # "Start":I
    .end local v15    # "End":I
    :cond_4
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 615
    .end local v11    # "i":I
    :cond_5
    return-void
.end method

.method protected BuildIndexHeader(III)V
    .locals 3
    .param p1, "Count"    # I
    .param p2, "Offsize"    # I
    .param p3, "First"    # I

    .line 1295
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    int-to-char v2, p1

    invoke-direct {v1, v2}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1297
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    int-to-char v2, p2

    invoke-direct {v1, v2}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1299
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1314
    :pswitch_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt32Item;

    int-to-char v2, p3

    invoke-direct {v1, v2}, Lcom/itextpdf/io/font/CFFFont$UInt32Item;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1315
    goto :goto_0

    .line 1310
    :pswitch_1
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt24Item;

    int-to-char v2, p3

    invoke-direct {v1, v2}, Lcom/itextpdf/io/font/CFFFont$UInt24Item;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1311
    goto :goto_0

    .line 1306
    :pswitch_2
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    int-to-char v2, p3

    invoke-direct {v1, v2}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1307
    goto :goto_0

    .line 1302
    :pswitch_3
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    int-to-char v2, p3

    invoke-direct {v1, v2}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1303
    nop

    .line 1319
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected BuildNewCharString(I)V
    .locals 3
    .param p1, "FontIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->charstringsOffsets:[I

    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->GlyphsUsed:Ljava/util/Set;

    const/16 v2, 0xe

    invoke-virtual {p0, v0, v1, v2}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildNewIndex([ILjava/util/Set;B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NewCharStringsIndex:[B

    .line 427
    return-void
.end method

.method protected BuildNewFile(I)[B
    .locals 16
    .param p1, "Font"    # I

    .line 1108
    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    .line 1111
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/CFFFontSubset;->CopyHeader()V

    .line 1114
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2, v2}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildIndexHeader(III)V

    .line 1115
    iget-object v3, v0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v4, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    iget-object v5, v0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/itextpdf/io/font/CFFFont$Font;->name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    int-to-char v5, v5

    invoke-direct {v4, v5}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1116
    iget-object v3, v0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v4, Lcom/itextpdf/io/font/CFFFont$StringItem;

    iget-object v5, v0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/itextpdf/io/font/CFFFont$Font;->name:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/itextpdf/io/font/CFFFont$StringItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1119
    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3, v2}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildIndexHeader(III)V

    .line 1120
    new-instance v4, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;

    invoke-direct {v4, v3}, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;-><init>(I)V

    move-object v3, v4

    .line 1121
    .local v3, "topdictIndex1Ref":Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    iget-object v4, v0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1122
    new-instance v4, Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;

    invoke-direct {v4}, Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;-><init>()V

    .line 1123
    .local v4, "topdictBase":Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;
    iget-object v5, v0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1126
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;

    invoke-direct {v5}, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;-><init>()V

    .line 1127
    .local v5, "charsetRef":Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    new-instance v6, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;

    invoke-direct {v6}, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;-><init>()V

    .line 1128
    .local v6, "charstringsRef":Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    new-instance v7, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;

    invoke-direct {v7}, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;-><init>()V

    .line 1129
    .local v7, "fdarrayRef":Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    new-instance v8, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;

    invoke-direct {v8}, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;-><init>()V

    .line 1130
    .local v8, "fdselectRef":Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    new-instance v9, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;

    invoke-direct {v9}, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;-><init>()V

    .line 1133
    .local v9, "privateRef":Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    iget-object v10, v0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v10, v10, v1

    iget-boolean v10, v10, Lcom/itextpdf/io/font/CFFFont$Font;->isCID:Z

    const/4 v11, 0x0

    if-nez v10, :cond_0

    .line 1135
    iget-object v10, v0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v12, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;

    iget-object v13, v0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v13, v13, v1

    iget v13, v13, Lcom/itextpdf/io/font/CFFFont$Font;->nstrings:I

    invoke-direct {v12, v13}, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;-><init>(I)V

    invoke-virtual {v10, v12}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1136
    iget-object v10, v0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v12, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;

    iget-object v13, v0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v13, v13, v1

    iget v13, v13, Lcom/itextpdf/io/font/CFFFont$Font;->nstrings:I

    add-int/2addr v13, v2

    invoke-direct {v12, v13}, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;-><init>(I)V

    invoke-virtual {v10, v12}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1137
    iget-object v10, v0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v12, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;

    invoke-direct {v12, v11}, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;-><init>(I)V

    invoke-virtual {v10, v12}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1138
    iget-object v10, v0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v12, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v13, 0xc

    invoke-direct {v12, v13}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v10, v12}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1139
    iget-object v10, v0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v12, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v14, 0x1e

    invoke-direct {v12, v14}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v10, v12}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1141
    iget-object v10, v0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v12, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;

    iget-object v14, v0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v14, v14, v1

    iget v14, v14, Lcom/itextpdf/io/font/CFFFont$Font;->nglyphs:I

    invoke-direct {v12, v14}, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;-><init>(I)V

    invoke-virtual {v10, v12}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1142
    iget-object v10, v0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v12, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    invoke-direct {v12, v13}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v10, v12}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1143
    iget-object v10, v0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v12, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v13, 0x22

    invoke-direct {v12, v13}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v10, v12}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1149
    :cond_0
    iget-object v10, v0, Lcom/itextpdf/io/font/CFFFontSubset;->topdictOffsets:[I

    aget v10, v10, v1

    invoke-virtual {v0, v10}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 1151
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v10

    iget-object v12, v0, Lcom/itextpdf/io/font/CFFFontSubset;->topdictOffsets:[I

    add-int/lit8 v13, v1, 0x1

    aget v12, v12, v13

    if-ge v10, v12, :cond_3

    .line 1152
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v10

    .line 1153
    .local v10, "p1":I
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getDictItem()V

    .line 1154
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v12

    .line 1156
    .local v12, "p2":I
    iget-object v13, v0, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    const-string v14, "Encoding"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    iget-object v13, v0, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    .line 1158
    const-string v14, "Private"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    iget-object v13, v0, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    .line 1159
    const-string v14, "FDSelect"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    iget-object v13, v0, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    .line 1160
    const-string v14, "FDArray"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    iget-object v13, v0, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    .line 1161
    const-string v14, "charset"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    iget-object v13, v0, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    .line 1162
    const-string v14, "CharStrings"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_1

    .line 1166
    :cond_1
    iget-object v13, v0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v14, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    iget-object v15, v0, Lcom/itextpdf/io/font/CFFFontSubset;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    sub-int v2, v12, v10

    invoke-direct {v14, v15, v10, v2}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {v13, v14}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1168
    .end local v10    # "p1":I
    .end local v12    # "p2":I
    :cond_2
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1170
    :cond_3
    invoke-virtual {v0, v7, v8, v5, v6}, Lcom/itextpdf/io/font/CFFFontSubset;->CreateKeys(Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    .line 1173
    iget-object v2, v0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v10, Lcom/itextpdf/io/font/CFFFont$IndexMarkerItem;

    invoke-direct {v10, v3, v4}, Lcom/itextpdf/io/font/CFFFont$IndexMarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;)V

    invoke-virtual {v2, v10}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1177
    iget-object v2, v0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->isCID:Z

    if-eqz v2, :cond_4

    .line 1178
    iget-object v2, v0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    iget v10, v0, Lcom/itextpdf/io/font/CFFFontSubset;->stringIndexOffset:I

    invoke-virtual {v0, v10}, Lcom/itextpdf/io/font/CFFFontSubset;->getEntireIndexRange(I)Lcom/itextpdf/io/font/CFFFont$RangeItem;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_2

    .line 1183
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/io/font/CFFFontSubset;->CreateNewStringIndex(I)V

    .line 1186
    :goto_2
    iget-object v2, v0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v10, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    new-instance v12, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v13, v0, Lcom/itextpdf/io/font/CFFFontSubset;->rasFactory:Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    iget-object v14, v0, Lcom/itextpdf/io/font/CFFFontSubset;->NewGSubrsIndex:[B

    invoke-virtual {v13, v14}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    iget-object v13, v0, Lcom/itextpdf/io/font/CFFFontSubset;->NewGSubrsIndex:[B

    array-length v13, v13

    invoke-direct {v10, v12, v11, v13}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {v2, v10}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1190
    iget-object v2, v0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->isCID:Z

    if-eqz v2, :cond_7

    .line 1195
    iget-object v2, v0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v10, Lcom/itextpdf/io/font/CFFFont$MarkerItem;

    invoke-direct {v10, v8}, Lcom/itextpdf/io/font/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    invoke-virtual {v2, v10}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1197
    iget-object v2, v0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->fdselectOffset:I

    if-ltz v2, :cond_5

    .line 1198
    iget-object v2, v0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v10, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    iget-object v12, v0, Lcom/itextpdf/io/font/CFFFontSubset;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v13, v0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v13, v13, v1

    iget v13, v13, Lcom/itextpdf/io/font/CFFFont$Font;->fdselectOffset:I

    iget-object v14, v0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v14, v14, v1

    iget v14, v14, Lcom/itextpdf/io/font/CFFFont$Font;->FDSelectLength:I

    invoke-direct {v10, v12, v13, v14}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {v2, v10}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_3

    .line 1201
    :cond_5
    iget-object v2, v0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->nglyphs:I

    invoke-virtual {v0, v8, v2}, Lcom/itextpdf/io/font/CFFFontSubset;->CreateFDSelect(Lcom/itextpdf/io/font/CFFFont$OffsetItem;I)V

    .line 1205
    :goto_3
    iget-object v2, v0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v10, Lcom/itextpdf/io/font/CFFFont$MarkerItem;

    invoke-direct {v10, v5}, Lcom/itextpdf/io/font/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    invoke-virtual {v2, v10}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1206
    iget-object v2, v0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v10, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    iget-object v12, v0, Lcom/itextpdf/io/font/CFFFontSubset;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v13, v0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v13, v13, v1

    iget v13, v13, Lcom/itextpdf/io/font/CFFFont$Font;->charsetOffset:I

    iget-object v14, v0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v14, v14, v1

    iget v14, v14, Lcom/itextpdf/io/font/CFFFont$Font;->CharsetLength:I

    invoke-direct {v10, v12, v13, v14}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {v2, v10}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1210
    iget-object v2, v0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->fdarrayOffset:I

    if-ltz v2, :cond_6

    .line 1212
    iget-object v2, v0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v10, Lcom/itextpdf/io/font/CFFFont$MarkerItem;

    invoke-direct {v10, v7}, Lcom/itextpdf/io/font/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    invoke-virtual {v2, v10}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1214
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/io/font/CFFFontSubset;->Reconstruct(I)V

    goto :goto_4

    .line 1217
    :cond_6
    invoke-virtual {v0, v7, v9, v1}, Lcom/itextpdf/io/font/CFFFontSubset;->CreateFDArray(Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$OffsetItem;I)V

    goto :goto_4

    .line 1223
    :cond_7
    iget-object v2, v0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->nglyphs:I

    invoke-virtual {v0, v8, v2}, Lcom/itextpdf/io/font/CFFFontSubset;->CreateFDSelect(Lcom/itextpdf/io/font/CFFFont$OffsetItem;I)V

    .line 1225
    iget-object v2, v0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->nglyphs:I

    invoke-virtual {v0, v5, v2}, Lcom/itextpdf/io/font/CFFFontSubset;->CreateCharset(Lcom/itextpdf/io/font/CFFFont$OffsetItem;I)V

    .line 1227
    invoke-virtual {v0, v7, v9, v1}, Lcom/itextpdf/io/font/CFFFontSubset;->CreateFDArray(Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$OffsetItem;I)V

    .line 1231
    :goto_4
    iget-object v2, v0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->privateOffset:I

    if-ltz v2, :cond_8

    .line 1233
    new-instance v2, Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;

    invoke-direct {v2}, Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;-><init>()V

    .line 1234
    .local v2, "PrivateBase":Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;
    iget-object v10, v0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v10, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1235
    iget-object v10, v0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v12, Lcom/itextpdf/io/font/CFFFont$MarkerItem;

    invoke-direct {v12, v9}, Lcom/itextpdf/io/font/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    invoke-virtual {v10, v12}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1237
    new-instance v10, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;

    invoke-direct {v10}, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;-><init>()V

    .line 1239
    .local v10, "Subr":Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    invoke-virtual {v0, v1, v10}, Lcom/itextpdf/io/font/CFFFontSubset;->CreateNonCIDPrivate(ILcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    .line 1241
    invoke-virtual {v0, v1, v2, v10}, Lcom/itextpdf/io/font/CFFFontSubset;->CreateNonCIDSubrs(ILcom/itextpdf/io/font/CFFFont$IndexBaseItem;Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    .line 1245
    .end local v2    # "PrivateBase":Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;
    .end local v10    # "Subr":Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    :cond_8
    iget-object v2, v0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v10, Lcom/itextpdf/io/font/CFFFont$MarkerItem;

    invoke-direct {v10, v6}, Lcom/itextpdf/io/font/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    invoke-virtual {v2, v10}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1248
    iget-object v2, v0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v10, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    new-instance v12, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v13, v0, Lcom/itextpdf/io/font/CFFFontSubset;->rasFactory:Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    iget-object v14, v0, Lcom/itextpdf/io/font/CFFFontSubset;->NewCharStringsIndex:[B

    invoke-virtual {v13, v14}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    iget-object v13, v0, Lcom/itextpdf/io/font/CFFFontSubset;->NewCharStringsIndex:[B

    array-length v13, v13

    invoke-direct {v10, v12, v11, v13}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {v2, v10}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1251
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 1252
    .local v2, "currentOffset":[I
    aput v11, v2, v11

    .line 1254
    iget-object v10, v0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/io/font/CFFFont$Item;

    .line 1255
    .local v12, "item":Lcom/itextpdf/io/font/CFFFont$Item;
    invoke-virtual {v12, v2}, Lcom/itextpdf/io/font/CFFFont$Item;->increment([I)V

    .line 1256
    .end local v12    # "item":Lcom/itextpdf/io/font/CFFFont$Item;
    goto :goto_5

    .line 1258
    :cond_9
    iget-object v10, v0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/io/font/CFFFont$Item;

    .line 1259
    .restart local v12    # "item":Lcom/itextpdf/io/font/CFFFont$Item;
    invoke-virtual {v12}, Lcom/itextpdf/io/font/CFFFont$Item;->xref()V

    .line 1260
    .end local v12    # "item":Lcom/itextpdf/io/font/CFFFont$Item;
    goto :goto_6

    .line 1262
    :cond_a
    aget v10, v2, v11

    .line 1263
    .local v10, "size":I
    new-array v11, v10, [B

    .line 1266
    .local v11, "b":[B
    iget-object v12, v0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/io/font/CFFFont$Item;

    .line 1267
    .local v13, "item":Lcom/itextpdf/io/font/CFFFont$Item;
    invoke-virtual {v13, v11}, Lcom/itextpdf/io/font/CFFFont$Item;->emit([B)V

    .line 1268
    .end local v13    # "item":Lcom/itextpdf/io/font/CFFFont$Item;
    goto :goto_7

    .line 1270
    :cond_b
    return-object v11
.end method

.method protected BuildNewIndex([ILjava/util/Set;B)[B
    .locals 11
    .param p1, "Offsets"    # [I
    .param p3, "OperatorForUnusedEntries"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;B)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 955
    .local p2, "Used":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 956
    .local v0, "unusedCount":I
    const/4 v1, 0x0

    .line 957
    .local v1, "Offset":I
    array-length v2, p1

    new-array v2, v2, [I

    .line 959
    .local v2, "NewOffsets":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 960
    aput v1, v2, v3

    .line 963
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 964
    add-int/lit8 v4, v3, 0x1

    aget v4, p1, v4

    aget v5, p1, v3

    sub-int/2addr v4, v5

    add-int/2addr v1, v4

    goto :goto_1

    .line 967
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 959
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 971
    .end local v3    # "i":I
    :cond_1
    add-int v3, v1, v0

    new-array v3, v3, [B

    .line 973
    .local v3, "NewObjects":[B
    const/4 v4, 0x0

    .line 974
    .local v4, "unusedOffset":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_3

    .line 975
    aget v6, v2, v5

    .line 976
    .local v6, "start":I
    add-int/lit8 v7, v5, 0x1

    aget v7, v2, v7

    .line 977
    .local v7, "end":I
    add-int v8, v6, v4

    aput v8, v2, v5

    .line 980
    if-eq v6, v7, :cond_2

    .line 983
    iget-object v8, p0, Lcom/itextpdf/io/font/CFFFontSubset;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v9, p1, v5

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 985
    iget-object v8, p0, Lcom/itextpdf/io/font/CFFFontSubset;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    add-int v9, v6, v4

    sub-int v10, v7, v6

    invoke-virtual {v8, v3, v9, v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([BII)V

    goto :goto_3

    .line 987
    :cond_2
    add-int v8, v6, v4

    aput-byte p3, v3, v8

    .line 988
    add-int/lit8 v4, v4, 0x1

    .line 974
    .end local v6    # "start":I
    .end local v7    # "end":I
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 991
    .end local v5    # "i":I
    :cond_3
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    aget v6, v2, v5

    add-int/2addr v6, v4

    aput v6, v2, v5

    .line 993
    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/io/font/CFFFontSubset;->AssembleIndex([I[B)[B

    move-result-object v5

    return-object v5
.end method

.method protected BuildNewIndexAndCopyAllGSubrs([IB)[B
    .locals 11
    .param p1, "Offsets"    # [I
    .param p2, "OperatorForUnusedEntries"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1006
    const/4 v0, 0x0

    .line 1007
    .local v0, "unusedCount":I
    const/4 v1, 0x0

    .line 1008
    .local v1, "Offset":I
    array-length v2, p1

    new-array v2, v2, [I

    .line 1010
    .local v2, "NewOffsets":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    .line 1011
    aput v1, v2, v3

    .line 1012
    add-int/lit8 v4, v3, 0x1

    aget v4, p1, v4

    aget v5, p1, v3

    sub-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 1010
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1015
    .end local v3    # "i":I
    :cond_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aput v1, v2, v3

    .line 1016
    add-int/lit8 v0, v0, 0x1

    .line 1019
    add-int v3, v1, v0

    new-array v3, v3, [B

    .line 1021
    .local v3, "NewObjects":[B
    const/4 v4, 0x0

    .line 1022
    .local v4, "unusedOffset":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 1023
    aget v6, v2, v5

    .line 1024
    .local v6, "start":I
    add-int/lit8 v7, v5, 0x1

    aget v7, v2, v7

    .line 1025
    .local v7, "end":I
    add-int v8, v6, v4

    aput v8, v2, v5

    .line 1028
    if-eq v6, v7, :cond_1

    .line 1031
    iget-object v8, p0, Lcom/itextpdf/io/font/CFFFontSubset;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v9, p1, v5

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 1033
    iget-object v8, p0, Lcom/itextpdf/io/font/CFFFontSubset;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    add-int v9, v6, v4

    sub-int v10, v7, v6

    invoke-virtual {v8, v3, v9, v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([BII)V

    goto :goto_2

    .line 1035
    :cond_1
    add-int v8, v6, v4

    aput-byte p2, v3, v8

    .line 1036
    add-int/lit8 v4, v4, 0x1

    .line 1022
    .end local v6    # "start":I
    .end local v7    # "end":I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1039
    .end local v5    # "i":I
    :cond_2
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    aget v6, v2, v5

    add-int/2addr v6, v4

    aput v6, v2, v5

    .line 1041
    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/io/font/CFFFontSubset;->AssembleIndex([I[B)[B

    move-result-object v5

    return-object v5
.end method

.method protected BuildNewLGSubrs(I)V
    .locals 11
    .param p1, "Font"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->isCID:Z

    const/16 v1, 0xb

    if-eqz v0, :cond_2

    .line 443
    new-instance v0, Lcom/itextpdf/io/util/GenericArray;

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    array-length v2, v2

    invoke-direct {v0, v2}, Lcom/itextpdf/io/util/GenericArray;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->hSubrsUsed:Lcom/itextpdf/io/util/GenericArray;

    .line 444
    new-instance v0, Lcom/itextpdf/io/util/GenericArray;

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    array-length v2, v2

    invoke-direct {v0, v2}, Lcom/itextpdf/io/util/GenericArray;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->lSubrsUsed:Lcom/itextpdf/io/util/GenericArray;

    .line 446
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    array-length v0, v0

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NewLSubrsIndex:[[B

    .line 448
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/itextpdf/io/font/CFFFont$Font;->PrivateSubrsOffset:[I

    .line 450
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    array-length v2, v2

    new-array v2, v2, [[I

    iput-object v2, v0, Lcom/itextpdf/io/font/CFFFont$Font;->PrivateSubrsOffsetsArray:[[I

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->FDArrayUsed:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 455
    .local v0, "FDInList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 457
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 458
    .local v3, "FD":I
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->hSubrsUsed:Lcom/itextpdf/io/util/GenericArray;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v4, v3, v5}, Lcom/itextpdf/io/util/GenericArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->lSubrsUsed:Lcom/itextpdf/io/util/GenericArray;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v3, v5}, Lcom/itextpdf/io/util/GenericArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 462
    invoke-virtual {p0, p1, v3}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildFDSubrsOffsets(II)V

    .line 464
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/itextpdf/io/font/CFFFont$Font;->PrivateSubrsOffset:[I

    aget v4, v4, v3

    if-ltz v4, :cond_0

    .line 467
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/itextpdf/io/font/CFFFont$Font;->PrivateSubrsOffset:[I

    aget v7, v4, v3

    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/itextpdf/io/font/CFFFont$Font;->PrivateSubrsOffsetsArray:[[I

    aget-object v8, v4, v3

    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->hSubrsUsed:Lcom/itextpdf/io/util/GenericArray;

    invoke-virtual {v4, v3}, Lcom/itextpdf/io/util/GenericArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/util/Set;

    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->lSubrsUsed:Lcom/itextpdf/io/util/GenericArray;

    invoke-virtual {v4, v3}, Lcom/itextpdf/io/util/GenericArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/util/List;

    move-object v4, p0

    move v5, p1

    move v6, v3

    invoke-virtual/range {v4 .. v10}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildSubrUsed(III[ILjava/util/Set;Ljava/util/List;)V

    .line 469
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NewLSubrsIndex:[[B

    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/itextpdf/io/font/CFFFont$Font;->PrivateSubrsOffsetsArray:[[I

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/itextpdf/io/font/CFFFontSubset;->hSubrsUsed:Lcom/itextpdf/io/util/GenericArray;

    invoke-virtual {v6, v3}, Lcom/itextpdf/io/util/GenericArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-virtual {p0, v5, v6, v1}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildNewIndex([ILjava/util/Set;B)[B

    move-result-object v5

    aput-object v5, v4, v3

    .line 455
    .end local v3    # "FD":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 472
    .end local v0    # "FDInList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "j":I
    :cond_1
    goto :goto_1

    .line 474
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->privateSubrs:I

    if-ltz v0, :cond_3

    .line 476
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->privateSubrs:I

    invoke-virtual {p0, v2}, Lcom/itextpdf/io/font/CFFFontSubset;->getIndex(I)[I

    move-result-object v2

    iput-object v2, v0, Lcom/itextpdf/io/font/CFFFont$Font;->SubrsOffsets:[I

    .line 479
    const/4 v5, -0x1

    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget v6, v0, Lcom/itextpdf/io/font/CFFFont$Font;->privateSubrs:I

    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v7, v0, Lcom/itextpdf/io/font/CFFFont$Font;->SubrsOffsets:[I

    iget-object v8, p0, Lcom/itextpdf/io/font/CFFFontSubset;->hSubrsUsedNonCID:Ljava/util/Set;

    iget-object v9, p0, Lcom/itextpdf/io/font/CFFFontSubset;->lSubrsUsedNonCID:Ljava/util/List;

    move-object v3, p0

    move v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildSubrUsed(III[ILjava/util/Set;Ljava/util/List;)V

    .line 483
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildGSubrsUsed(I)V

    .line 484
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->privateSubrs:I

    if-ltz v0, :cond_4

    .line 486
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->SubrsOffsets:[I

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->hSubrsUsedNonCID:Ljava/util/Set;

    invoke-virtual {p0, v0, v2, v1}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildNewIndex([ILjava/util/Set;B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NewSubrsIndexNonCID:[B

    .line 493
    :cond_4
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->gsubrOffsets:[I

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildNewIndexAndCopyAllGSubrs([IB)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NewGSubrsIndex:[B

    .line 494
    return-void
.end method

.method protected BuildSubrUsed(III[ILjava/util/Set;Ljava/util/List;)V
    .locals 19
    .param p1, "Font"    # I
    .param p2, "FD"    # I
    .param p3, "SubrOffset"    # I
    .param p4, "SubrsOffsets"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III[I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 535
    .local p5, "hSubr":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p6, "lSubr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p4

    move/from16 v12, p3

    invoke-virtual {v8, v12, v9}, Lcom/itextpdf/io/font/CFFFontSubset;->CalcBias(II)I

    move-result v13

    .line 538
    .local v13, "LBias":I
    const/4 v0, 0x0

    move v14, v0

    .local v14, "i":I
    :goto_0
    iget-object v0, v8, Lcom/itextpdf/io/font/CFFFontSubset;->glyphsInList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_2

    .line 539
    iget-object v0, v8, Lcom/itextpdf/io/font/CFFFontSubset;->glyphsInList:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 540
    .local v15, "glyph":I
    iget-object v0, v8, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, v9

    iget-object v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->charstringsOffsets:[I

    aget v16, v0, v15

    .line 541
    .local v16, "Start":I
    iget-object v0, v8, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, v9

    iget-object v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->charstringsOffsets:[I

    add-int/lit8 v1, v15, 0x1

    aget v17, v0, v1

    .line 544
    .local v17, "End":I
    if-ltz v10, :cond_1

    .line 545
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/CFFFontSubset;->EmptyStack()V

    .line 546
    const/4 v0, 0x0

    iput v0, v8, Lcom/itextpdf/io/font/CFFFontSubset;->NumOfHints:I

    .line 548
    iget-object v0, v8, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, v9

    iget-object v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->FDSelect:[I

    aget v7, v0, v15

    .line 550
    .local v7, "GlyphFD":I
    if-ne v7, v10, :cond_0

    .line 552
    iget v3, v8, Lcom/itextpdf/io/font/CFFFontSubset;->GBias:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move v4, v13

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v18, v7

    .end local v7    # "GlyphFD":I
    .local v18, "GlyphFD":I
    move-object/from16 v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/io/font/CFFFontSubset;->ReadASubr(IIIILjava/util/Set;Ljava/util/List;[I)V

    goto :goto_1

    .line 550
    .end local v18    # "GlyphFD":I
    .restart local v7    # "GlyphFD":I
    :cond_0
    move/from16 v18, v7

    .line 553
    .end local v7    # "GlyphFD":I
    :goto_1
    goto :goto_2

    .line 556
    :cond_1
    iget v3, v8, Lcom/itextpdf/io/font/CFFFontSubset;->GBias:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move v4, v13

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/io/font/CFFFontSubset;->ReadASubr(IIIILjava/util/Set;Ljava/util/List;[I)V

    .line 538
    .end local v15    # "glyph":I
    .end local v16    # "Start":I
    .end local v17    # "End":I
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 559
    .end local v14    # "i":I
    :cond_2
    const/4 v0, 0x0

    move v14, v0

    .restart local v14    # "i":I
    :goto_3
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_4

    .line 561
    move-object/from16 v15, p6

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 563
    .local v7, "Subr":I
    array-length v0, v11

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_3

    if-ltz v7, :cond_3

    .line 565
    aget v16, v11, v7

    .line 566
    .restart local v16    # "Start":I
    add-int/lit8 v0, v7, 0x1

    aget v17, v11, v0

    .line 567
    .restart local v17    # "End":I
    iget v3, v8, Lcom/itextpdf/io/font/CFFFontSubset;->GBias:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move v4, v13

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v18, v7

    .end local v7    # "Subr":I
    .local v18, "Subr":I
    move-object/from16 v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/io/font/CFFFontSubset;->ReadASubr(IIIILjava/util/Set;Ljava/util/List;[I)V

    goto :goto_4

    .line 563
    .end local v16    # "Start":I
    .end local v17    # "End":I
    .end local v18    # "Subr":I
    .restart local v7    # "Subr":I
    :cond_3
    move/from16 v18, v7

    .line 559
    .end local v7    # "Subr":I
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v15, p6

    .line 570
    .end local v14    # "i":I
    return-void
.end method

.method protected CalcBias(II)I
    .locals 3
    .param p1, "Offset"    # I
    .param p2, "Font"    # I

    .line 405
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 406
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard16()C

    move-result v0

    .line 408
    .local v0, "nSubrs":I
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p2

    iget v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->CharstringType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 409
    const/4 v1, 0x0

    return v1

    .line 411
    :cond_0
    const/16 v1, 0x4d8

    if-ge v0, v1, :cond_1

    .line 412
    const/16 v1, 0x6b

    return v1

    .line 413
    :cond_1
    const v1, 0x846c

    if-ge v0, v1, :cond_2

    .line 414
    const/16 v1, 0x46b

    return v1

    .line 416
    :cond_2
    const v1, 0x8000

    return v1
.end method

.method protected CalcHints(IIII[I)I
    .locals 12
    .param p1, "begin"    # I
    .param p2, "end"    # I
    .param p3, "LBias"    # I
    .param p4, "GBias"    # I
    .param p5, "LSubrsOffsets"    # [I

    .line 889
    move-object v6, p0

    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 890
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v0

    move v7, p2

    if-ge v0, v7, :cond_7

    .line 892
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->ReadCommand()V

    .line 893
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v8

    .line 894
    .local v8, "pos":I
    const/4 v0, 0x0

    .line 895
    .local v0, "TopElement":Ljava/lang/Object;
    iget v1, v6, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    .line 896
    iget-object v1, v6, Lcom/itextpdf/io/font/CFFFontSubset;->args:[Ljava/lang/Object;

    iget v3, v6, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    sub-int/2addr v3, v2

    aget-object v0, v1, v3

    move-object v9, v0

    goto :goto_1

    .line 895
    :cond_0
    move-object v9, v0

    .line 897
    .end local v0    # "TopElement":Ljava/lang/Object;
    .local v9, "TopElement":Ljava/lang/Object;
    :goto_1
    iget v10, v6, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    .line 899
    .local v10, "NumOfArgs":I
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->HandelStack()V

    .line 901
    iget-object v0, v6, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto :goto_2

    :sswitch_0
    const-string v2, "hstemhm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x4

    goto :goto_3

    :sswitch_1
    const-string/jumbo v2, "vstemhm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x5

    goto :goto_3

    :sswitch_2
    const-string/jumbo v2, "vstem"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    goto :goto_3

    :sswitch_3
    const-string v2, "hstem"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    goto :goto_3

    :sswitch_4
    const-string v2, "callsubr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    goto :goto_3

    :sswitch_5
    const-string v3, "callgsubr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    :sswitch_6
    const-string v2, "cntrmask"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x7

    goto :goto_3

    :sswitch_7
    const-string v2, "hintmask"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x6

    goto :goto_3

    :goto_2
    move v2, v1

    :goto_3
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    .line 930
    :pswitch_0
    iget v0, v6, Lcom/itextpdf/io/font/CFFFontSubset;->NumOfHints:I

    div-int/lit8 v1, v0, 0x8

    .line 931
    .local v1, "SizeOfMask":I
    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_2

    if-nez v1, :cond_3

    .line 932
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 934
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v1, :cond_6

    .line 935
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    .line 934
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 925
    .end local v0    # "i":I
    .end local v1    # "SizeOfMask":I
    :pswitch_1
    iget v0, v6, Lcom/itextpdf/io/font/CFFFontSubset;->NumOfHints:I

    div-int/lit8 v1, v10, 0x2

    add-int/2addr v0, v1

    iput v0, v6, Lcom/itextpdf/io/font/CFFFontSubset;->NumOfHints:I

    .line 926
    goto :goto_5

    .line 913
    :pswitch_2
    if-lez v10, :cond_6

    .line 914
    instance-of v0, v9, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 915
    move-object v0, v9

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v11, v0, p4

    .line 916
    .local v11, "Subr":I
    iget-object v0, v6, Lcom/itextpdf/io/font/CFFFontSubset;->gsubrOffsets:[I

    aget v1, v0, v11

    iget-object v0, v6, Lcom/itextpdf/io/font/CFFFontSubset;->gsubrOffsets:[I

    add-int/lit8 v2, v11, 0x1

    aget v2, v0, v2

    move-object v0, p0

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/io/font/CFFFontSubset;->CalcHints(IIII[I)I

    .line 917
    invoke-virtual {p0, v8}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 918
    .end local v11    # "Subr":I
    goto :goto_5

    .line 914
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 904
    :pswitch_3
    if-lez v10, :cond_6

    .line 905
    instance-of v0, v9, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 906
    move-object v0, v9

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v11, v0, p3

    .line 907
    .restart local v11    # "Subr":I
    aget v1, p5, v11

    add-int/lit8 v0, v11, 0x1

    aget v2, p5, v0

    move-object v0, p0

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/io/font/CFFFontSubset;->CalcHints(IIII[I)I

    .line 908
    invoke-virtual {p0, v8}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 909
    .end local v11    # "Subr":I
    goto :goto_5

    .line 905
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 939
    .end local v8    # "pos":I
    .end local v9    # "TopElement":Ljava/lang/Object;
    .end local v10    # "NumOfArgs":I
    :cond_6
    :goto_5
    goto/16 :goto_0

    .line 940
    :cond_7
    iget v0, v6, Lcom/itextpdf/io/font/CFFFontSubset;->NumOfHints:I

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x57ccb60d -> :sswitch_7
        -0x4c92896b -> :sswitch_6
        -0x3de93085 -> :sswitch_5
        -0xa3bda70 -> :sswitch_4
        0x5ef9331 -> :sswitch_3
        0x6b4dc3f -> :sswitch_2
        0x2ceed584 -> :sswitch_1
        0x485797f6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method CalcSubrOffsetSize(II)I
    .locals 5
    .param p1, "Offset"    # I
    .param p2, "Size"    # I

    .line 1619
    const/4 v0, 0x0

    .line 1621
    .local v0, "OffsetSize":I
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 1623
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v1

    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    .line 1624
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v1

    .line 1625
    .local v1, "p1":I
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getDictItem()V

    .line 1626
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v2

    .line 1628
    .local v2, "p2":I
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    const-string v4, "Subrs"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1630
    sub-int v3, v2, v1

    add-int/lit8 v3, v3, -0x1

    move v0, v3

    .line 1633
    .end local v1    # "p1":I
    .end local v2    # "p2":I
    :cond_0
    goto :goto_0

    .line 1635
    :cond_1
    return v0
.end method

.method protected CopyHeader()V
    .locals 8

    .line 1277
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 1278
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v1

    .line 1279
    .local v1, "major":I
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v2

    .line 1280
    .local v2, "minor":I
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v3

    .line 1281
    .local v3, "hdrSize":I
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v4

    .line 1282
    .local v4, "offSize":I
    iput v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->nextIndexOffset:I

    .line 1283
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v6, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    iget-object v7, p0, Lcom/itextpdf/io/font/CFFFontSubset;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-direct {v6, v7, v0, v3}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1284
    return-void
.end method

.method CountCharset(II)I
    .locals 4
    .param p1, "Offset"    # I
    .param p2, "NumofGlyphs"    # I

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "Length":I
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 217
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v1

    .line 219
    .local v1, "format":I
    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 227
    :pswitch_0
    const/4 v3, 0x2

    invoke-virtual {p0, p2, v3}, Lcom/itextpdf/io/font/CFFFontSubset;->CountRange(II)I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v0, v3, 0x1

    .line 228
    goto :goto_0

    .line 224
    :pswitch_1
    invoke-virtual {p0, p2, v2}, Lcom/itextpdf/io/font/CFFFontSubset;->CountRange(II)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v0, v3, 0x1

    .line 225
    goto :goto_0

    .line 221
    :pswitch_2
    mul-int/lit8 v3, p2, 0x2

    add-int/lit8 v0, v3, 0x1

    .line 222
    nop

    .line 232
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method CountRange(II)I
    .locals 5
    .param p1, "NumofGlyphs"    # I
    .param p2, "Type"    # I

    .line 243
    const/4 v0, 0x0

    .line 245
    .local v0, "num":I
    const/4 v1, 0x1

    .line 246
    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 247
    add-int/lit8 v0, v0, 0x1

    .line 248
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard16()C

    move-result v2

    .line 249
    .local v2, "Sid":C
    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v3

    .local v3, "nLeft":I
    goto :goto_1

    .line 252
    .end local v3    # "nLeft":I
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard16()C

    move-result v3

    .line 253
    .restart local v3    # "nLeft":I
    :goto_1
    add-int/lit8 v4, v3, 0x1

    add-int/2addr v1, v4

    goto :goto_0

    .line 255
    .end local v2    # "Sid":C
    .end local v3    # "nLeft":I
    :cond_1
    return v0
.end method

.method protected CreateCharset(Lcom/itextpdf/io/font/CFFFont$OffsetItem;I)V
    .locals 3
    .param p1, "charsetRef"    # Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    .param p2, "nglyphs"    # I

    .line 1420
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$MarkerItem;

    invoke-direct {v1, p1}, Lcom/itextpdf/io/font/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1422
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1424
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1426
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    add-int/lit8 v2, p2, -0x1

    int-to-char v2, v2

    invoke-direct {v1, v2}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1427
    return-void
.end method

.method protected CreateFDArray(Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$OffsetItem;I)V
    .locals 7
    .param p1, "fdarrayRef"    # Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    .param p2, "privateRef"    # Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    .param p3, "Font"    # I

    .line 1439
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$MarkerItem;

    invoke-direct {v1, p1}, Lcom/itextpdf/io/font/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1441
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildIndexHeader(III)V

    .line 1444
    new-instance v1, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;

    invoke-direct {v1, v0}, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;-><init>(I)V

    move-object v0, v1

    .line 1445
    .local v0, "privateIndex1Ref":Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1446
    new-instance v1, Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;

    invoke-direct {v1}, Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;-><init>()V

    .line 1448
    .local v1, "privateBase":Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1451
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p3

    iget v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->privateLength:I

    .line 1453
    .local v2, "NewSize":I
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v3, v3, p3

    iget v3, v3, Lcom/itextpdf/io/font/CFFFont$Font;->privateOffset:I

    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v4, v4, p3

    iget v4, v4, Lcom/itextpdf/io/font/CFFFont$Font;->privateLength:I

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/io/font/CFFFontSubset;->CalcSubrOffsetSize(II)I

    move-result v3

    .line 1455
    .local v3, "OrgSubrsOffsetSize":I
    if-eqz v3, :cond_0

    .line 1456
    rsub-int/lit8 v4, v3, 0x5

    add-int/2addr v2, v4

    .line 1457
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v5, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;

    invoke-direct {v5, v2}, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1458
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v4, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1460
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v5, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v6, 0x12

    invoke-direct {v5, v6}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1462
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v5, Lcom/itextpdf/io/font/CFFFont$IndexMarkerItem;

    invoke-direct {v5, v0, v1}, Lcom/itextpdf/io/font/CFFFont$IndexMarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1463
    return-void
.end method

.method protected CreateFDSelect(Lcom/itextpdf/io/font/CFFFont$OffsetItem;I)V
    .locals 3
    .param p1, "fdselectRef"    # Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    .param p2, "nglyphs"    # I

    .line 1397
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$MarkerItem;

    invoke-direct {v1, p1}, Lcom/itextpdf/io/font/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1399
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1401
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1404
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1406
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    invoke-direct {v1, v2}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1409
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    int-to-char v2, p2

    invoke-direct {v1, v2}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1410
    return-void
.end method

.method protected CreateKeys(Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V
    .locals 4
    .param p1, "fdarrayRef"    # Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    .param p2, "fdselectRef"    # Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    .param p3, "charsetRef"    # Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    .param p4, "charstringsRef"    # Lcom/itextpdf/io/font/CFFFont$OffsetItem;

    .line 1331
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1332
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1333
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v3, 0x24

    invoke-direct {v1, v3}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1335
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1336
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    invoke-direct {v1, v2}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1337
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1339
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1340
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1342
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v0, p4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1343
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1344
    return-void
.end method

.method protected CreateNewStringIndex(I)V
    .locals 13
    .param p1, "Font"    # I

    .line 1353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-OneRange"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1354
    .local v0, "fdFontName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x7f

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    .line 1355
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1356
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdobeIdentity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1358
    .local v1, "extraStrings":Ljava/lang/String;
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->stringOffsets:[I

    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->stringOffsets:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v2, v2, v4

    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->stringOffsets:[I

    aget v4, v4, v3

    sub-int/2addr v2, v4

    .line 1360
    .local v2, "origStringsLen":I
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->stringOffsets:[I

    aget v4, v4, v3

    add-int/lit8 v4, v4, -0x1

    .line 1363
    .local v4, "stringsBaseOffset":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    const/16 v6, 0xff

    if-gt v5, v6, :cond_1

    const/4 v5, 0x1

    .local v5, "stringsIndexOffSize":B
    goto :goto_0

    .line 1364
    .end local v5    # "stringsIndexOffSize":B
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    const v6, 0xffff

    if-gt v5, v6, :cond_2

    const/4 v5, 0x2

    .restart local v5    # "stringsIndexOffSize":B
    goto :goto_0

    .line 1365
    .end local v5    # "stringsIndexOffSize":B
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    const v6, 0xffffff

    if-gt v5, v6, :cond_3

    const/4 v5, 0x3

    .restart local v5    # "stringsIndexOffSize":B
    goto :goto_0

    .line 1366
    .end local v5    # "stringsIndexOffSize":B
    :cond_3
    const/4 v5, 0x4

    .line 1369
    .restart local v5    # "stringsIndexOffSize":B
    :goto_0
    iget-object v6, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v7, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    iget-object v8, p0, Lcom/itextpdf/io/font/CFFFontSubset;->stringOffsets:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v8, v8, 0x3

    int-to-char v8, v8

    invoke-direct {v7, v8}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1371
    iget-object v6, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v7, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    int-to-char v8, v5

    invoke-direct {v7, v8}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1372
    iget-object v6, p0, Lcom/itextpdf/io/font/CFFFontSubset;->stringOffsets:[I

    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_4

    aget v9, v6, v8

    .line 1373
    .local v9, "stringOffset":I
    iget-object v10, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v11, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;

    sub-int v12, v9, v4

    invoke-direct {v11, v5, v12}, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;-><init>(II)V

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1372
    .end local v9    # "stringOffset":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1375
    :cond_4
    iget-object v6, p0, Lcom/itextpdf/io/font/CFFFontSubset;->stringOffsets:[I

    iget-object v7, p0, Lcom/itextpdf/io/font/CFFFontSubset;->stringOffsets:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    sub-int/2addr v6, v4

    .line 1378
    .local v6, "currentStringsOffset":I
    const-string v7, "Adobe"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    .line 1379
    iget-object v7, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v8, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;

    invoke-direct {v8, v5, v6}, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;-><init>(II)V

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1380
    const-string v7, "Identity"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    .line 1381
    iget-object v7, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v8, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;

    invoke-direct {v8, v5, v6}, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;-><init>(II)V

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1382
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    .line 1383
    iget-object v7, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v8, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;

    invoke-direct {v8, v5, v6}, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;-><init>(II)V

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1385
    iget-object v7, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v8, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    iget-object v9, p0, Lcom/itextpdf/io/font/CFFFontSubset;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v10, p0, Lcom/itextpdf/io/font/CFFFontSubset;->stringOffsets:[I

    aget v3, v10, v3

    invoke-direct {v8, v9, v3, v2}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1386
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v7, Lcom/itextpdf/io/font/CFFFont$StringItem;

    invoke-direct {v7, v1}, Lcom/itextpdf/io/font/CFFFont$StringItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1387
    return-void
.end method

.method CreateNonCIDPrivate(ILcom/itextpdf/io/font/CFFFont$OffsetItem;)V
    .locals 6
    .param p1, "Font"    # I
    .param p2, "Subr"    # Lcom/itextpdf/io/font/CFFFont$OffsetItem;

    .line 1673
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->privateOffset:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 1674
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->privateOffset:I

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->privateLength:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 1675
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v0

    .line 1676
    .local v0, "p1":I
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getDictItem()V

    .line 1677
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v1

    .line 1680
    .local v1, "p2":I
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    const-string v3, "Subrs"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1681
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v2, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1683
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v3, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v4, 0x13

    invoke-direct {v3, v4}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 1687
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v3, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    sub-int v5, v1, v0

    invoke-direct {v3, v4, v0, v5}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1688
    .end local v0    # "p1":I
    .end local v1    # "p2":I
    :goto_1
    goto :goto_0

    .line 1689
    :cond_1
    return-void
.end method

.method CreateNonCIDSubrs(ILcom/itextpdf/io/font/CFFFont$IndexBaseItem;Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V
    .locals 5
    .param p1, "Font"    # I
    .param p2, "PrivateBase"    # Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;
    .param p3, "Subrs"    # Lcom/itextpdf/io/font/CFFFont$OffsetItem;

    .line 1701
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$SubrMarkerItem;

    invoke-direct {v1, p3, p2}, Lcom/itextpdf/io/font/CFFFont$SubrMarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1703
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NewSubrsIndexNonCID:[B

    if-eqz v0, :cond_0

    .line 1704
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    new-instance v2, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->rasFactory:Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NewSubrsIndexNonCID:[B

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NewSubrsIndexNonCID:[B

    array-length v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1706
    :cond_0
    return-void
.end method

.method protected EmptyStack()V
    .locals 3

    .line 773
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 774
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    .line 775
    return-void
.end method

.method protected HandelStack()V
    .locals 2

    .line 710
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->StackOpp()I

    move-result v0

    .line 711
    .local v0, "StackHandel":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 713
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 714
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->PushStack()V

    goto :goto_1

    .line 718
    :cond_0
    mul-int/lit8 v0, v0, -0x1

    .line 719
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 720
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->PopStack()V

    .line 719
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_1
    goto :goto_1

    .line 726
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->EmptyStack()V

    .line 727
    :goto_1
    return-void
.end method

.method protected PopStack()V
    .locals 3

    .line 781
    iget v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    if-lez v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->args:[Ljava/lang/Object;

    iget v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 783
    iget v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    .line 785
    :cond_0
    return-void
.end method

.method public Process()[B
    .locals 2

    .line 393
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getNames()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->Process(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public Process(Ljava/lang/String;)[B
    .locals 3
    .param p1, "fontName"    # Ljava/lang/String;

    .line 361
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 362
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 361
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    array-length v1, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_2

    const/4 v1, 0x0

    .line 379
    :try_start_1
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 382
    goto :goto_2

    .line 380
    :catch_0
    move-exception v2

    .line 363
    :goto_2
    return-object v1

    .line 366
    :cond_2
    :try_start_2
    iget v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->gsubrIndexOffset:I

    if-ltz v1, :cond_3

    .line 367
    iget v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->gsubrIndexOffset:I

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->CalcBias(II)I

    move-result v1

    iput v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->GBias:I

    .line 370
    :cond_3
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildNewCharString(I)V

    .line 372
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildNewLGSubrs(I)V

    .line 374
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildNewFile(I)[B

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 379
    :try_start_3
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 382
    goto :goto_3

    .line 380
    :catch_1
    move-exception v2

    .line 374
    :goto_3
    return-object v1

    .line 378
    .end local v0    # "j":I
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 375
    :catch_2
    move-exception v0

    .line 376
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "I/O exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p1    # "fontName":Ljava/lang/String;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 379
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p1    # "fontName":Ljava/lang/String;
    :goto_4
    :try_start_5
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 382
    goto :goto_5

    .line 380
    :catch_3
    move-exception v1

    .line 383
    :goto_5
    throw v0
.end method

.method protected PushStack()V
    .locals 1

    .line 791
    iget v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    .line 792
    return-void
.end method

.method protected ReadASubr(IIIILjava/util/Set;Ljava/util/List;[I)V
    .locals 15
    .param p1, "begin"    # I
    .param p2, "end"    # I
    .param p3, "GBias"    # I
    .param p4, "LBias"    # I
    .param p7, "LSubrsOffsets"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .line 632
    .local p5, "hSubr":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p6, "lSubr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v6, p0

    move-object/from16 v7, p5

    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->EmptyStack()V

    .line 633
    const/4 v8, 0x0

    iput v8, v6, Lcom/itextpdf/io/font/CFFFontSubset;->NumOfHints:I

    .line 635
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 636
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v0

    move/from16 v9, p2

    if-ge v0, v9, :cond_a

    .line 638
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->ReadCommand()V

    .line 639
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v10

    .line 640
    .local v10, "pos":I
    const/4 v0, 0x0

    .line 641
    .local v0, "TopElement":Ljava/lang/Object;
    iget v1, v6, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    .line 642
    iget-object v1, v6, Lcom/itextpdf/io/font/CFFFontSubset;->args:[Ljava/lang/Object;

    iget v3, v6, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    sub-int/2addr v3, v2

    aget-object v0, v1, v3

    move-object v11, v0

    goto :goto_1

    .line 641
    :cond_0
    move-object v11, v0

    .line 643
    .end local v0    # "TopElement":Ljava/lang/Object;
    .local v11, "TopElement":Ljava/lang/Object;
    :goto_1
    iget v12, v6, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    .line 645
    .local v12, "NumOfArgs":I
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->HandelStack()V

    .line 646
    iget-object v0, v6, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 648
    iget-object v0, v6, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto :goto_2

    :sswitch_0
    const-string v2, "hstemhm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x4

    goto :goto_3

    :sswitch_1
    const-string/jumbo v2, "vstemhm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x5

    goto :goto_3

    :sswitch_2
    const-string/jumbo v2, "vstem"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    goto :goto_3

    :sswitch_3
    const-string v2, "hstem"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    goto :goto_3

    :sswitch_4
    const-string v2, "callsubr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v8

    goto :goto_3

    :sswitch_5
    const-string v3, "callgsubr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    :sswitch_6
    const-string v2, "cntrmask"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x7

    goto :goto_3

    :sswitch_7
    const-string v2, "hintmask"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x6

    goto :goto_3

    :goto_2
    move v2, v1

    :goto_3
    packed-switch v2, :pswitch_data_0

    move-object/from16 v14, p6

    goto/16 :goto_6

    .line 690
    :pswitch_0
    iget v0, v6, Lcom/itextpdf/io/font/CFFFontSubset;->NumOfHints:I

    div-int/lit8 v1, v12, 0x2

    add-int/2addr v0, v1

    iput v0, v6, Lcom/itextpdf/io/font/CFFFontSubset;->NumOfHints:I

    .line 692
    div-int/lit8 v1, v0, 0x8

    .line 693
    .local v1, "SizeOfMask":I
    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_2

    if-nez v1, :cond_3

    .line 694
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 696
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v1, :cond_4

    .line 697
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    .line 696
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    move-object/from16 v14, p6

    goto/16 :goto_6

    .line 684
    .end local v0    # "i":I
    .end local v1    # "SizeOfMask":I
    :pswitch_1
    iget v0, v6, Lcom/itextpdf/io/font/CFFFontSubset;->NumOfHints:I

    div-int/lit8 v1, v12, 0x2

    add-int/2addr v0, v1

    iput v0, v6, Lcom/itextpdf/io/font/CFFFontSubset;->NumOfHints:I

    .line 685
    move-object/from16 v14, p6

    goto/16 :goto_6

    .line 667
    :pswitch_2
    if-lez v12, :cond_6

    .line 669
    move-object v0, v11

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v13, v0, p3

    .line 671
    .local v13, "Subr":I
    iget-object v0, v6, Lcom/itextpdf/io/font/CFFFontSubset;->hGSubrsUsed:Ljava/util/Set;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 672
    iget-object v0, v6, Lcom/itextpdf/io/font/CFFFontSubset;->hGSubrsUsed:Ljava/util/Set;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 673
    iget-object v0, v6, Lcom/itextpdf/io/font/CFFFontSubset;->lGSubrsUsed:Ljava/util/List;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    :cond_5
    iget-object v0, v6, Lcom/itextpdf/io/font/CFFFontSubset;->gsubrOffsets:[I

    aget v1, v0, v13

    iget-object v0, v6, Lcom/itextpdf/io/font/CFFFontSubset;->gsubrOffsets:[I

    add-int/lit8 v2, v13, 0x1

    aget v2, v0, v2

    move-object v0, p0

    move/from16 v3, p4

    move/from16 v4, p3

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/io/font/CFFFontSubset;->CalcHints(IIII[I)I

    .line 676
    invoke-virtual {p0, v10}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 677
    .end local v13    # "Subr":I
    move-object/from16 v14, p6

    goto :goto_6

    .line 667
    :cond_6
    move-object/from16 v14, p6

    goto :goto_6

    .line 652
    :pswitch_3
    if-lez v12, :cond_8

    .line 654
    move-object v0, v11

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v13, v0, p4

    .line 656
    .restart local v13    # "Subr":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 657
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 658
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v14, p6

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 656
    :cond_7
    move-object/from16 v14, p6

    .line 660
    :goto_5
    aget v1, p7, v13

    add-int/lit8 v0, v13, 0x1

    aget v2, p7, v0

    move-object v0, p0

    move/from16 v3, p4

    move/from16 v4, p3

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/io/font/CFFFontSubset;->CalcHints(IIII[I)I

    .line 661
    invoke-virtual {p0, v10}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 662
    .end local v13    # "Subr":I
    goto :goto_6

    .line 652
    :cond_8
    move-object/from16 v14, p6

    goto :goto_6

    .line 646
    :cond_9
    move-object/from16 v14, p6

    .line 701
    .end local v10    # "pos":I
    .end local v11    # "TopElement":Ljava/lang/Object;
    .end local v12    # "NumOfArgs":I
    :goto_6
    goto/16 :goto_0

    .line 702
    :cond_a
    move-object/from16 v14, p6

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x57ccb60d -> :sswitch_7
        -0x4c92896b -> :sswitch_6
        -0x3de93085 -> :sswitch_5
        -0xa3bda70 -> :sswitch_4
        0x5ef9331 -> :sswitch_3
        0x6b4dc3f -> :sswitch_2
        0x2ceed584 -> :sswitch_1
        0x485797f6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected ReadCommand()V
    .locals 10

    .line 798
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    .line 799
    const/4 v0, 0x0

    .line 802
    .local v0, "gotKey":Z
    :goto_0
    if-nez v0, :cond_8

    .line 805
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v1

    .line 808
    .local v1, "b0":C
    const/16 v2, 0x1c

    if-ne v1, v2, :cond_0

    .line 812
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v2

    .line 813
    .local v2, "first":I
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v3

    .line 814
    .local v3, "second":I
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->args:[Ljava/lang/Object;

    iget v5, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    shl-int/lit8 v6, v2, 0x8

    or-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 815
    iget v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    .line 816
    goto :goto_0

    .line 820
    .end local v2    # "first":I
    .end local v3    # "second":I
    :cond_0
    const/16 v3, 0x20

    if-lt v1, v3, :cond_1

    const/16 v3, 0xf6

    if-gt v1, v3, :cond_1

    .line 822
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->args:[Ljava/lang/Object;

    iget v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    add-int/lit16 v4, v1, -0x8b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 823
    iget v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    .line 824
    goto :goto_0

    .line 828
    :cond_1
    const/16 v3, 0xf7

    if-lt v1, v3, :cond_2

    const/16 v3, 0xfa

    if-gt v1, v3, :cond_2

    .line 830
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v2

    .line 831
    .local v2, "w":I
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->args:[Ljava/lang/Object;

    iget v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    add-int/lit16 v5, v1, -0xf7

    mul-int/lit16 v5, v5, 0x100

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x6c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 832
    iget v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    .line 833
    goto :goto_0

    .line 837
    .end local v2    # "w":I
    :cond_2
    const/16 v3, 0xfb

    if-lt v1, v3, :cond_3

    const/16 v3, 0xfe

    if-gt v1, v3, :cond_3

    .line 839
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v2

    .line 840
    .restart local v2    # "w":I
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->args:[Ljava/lang/Object;

    iget v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    add-int/lit16 v5, v1, -0xfb

    neg-int v5, v5

    mul-int/lit16 v5, v5, 0x100

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x6c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 841
    iget v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    .line 842
    goto/16 :goto_0

    .line 846
    .end local v2    # "w":I
    :cond_3
    const/16 v3, 0xff

    if-ne v1, v3, :cond_4

    .line 848
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v2

    .line 849
    .local v2, "first":I
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v3

    .line 850
    .restart local v3    # "second":I
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v4

    .line 851
    .local v4, "third":I
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v5

    .line 852
    .local v5, "fourth":I
    iget-object v6, p0, Lcom/itextpdf/io/font/CFFFontSubset;->args:[Ljava/lang/Object;

    iget v7, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    shl-int/lit8 v8, v2, 0x18

    shl-int/lit8 v9, v3, 0x10

    or-int/2addr v8, v9

    shl-int/lit8 v9, v4, 0x8

    or-int/2addr v8, v9

    or-int/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 853
    iget v6, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/itextpdf/io/font/CFFFontSubset;->arg_count:I

    .line 854
    goto/16 :goto_0

    .line 858
    .end local v2    # "first":I
    .end local v3    # "second":I
    .end local v4    # "third":I
    .end local v5    # "fourth":I
    :cond_4
    const/16 v3, 0x1f

    if-gt v1, v3, :cond_7

    if-eq v1, v2, :cond_7

    .line 860
    const/4 v0, 0x1

    .line 864
    const/16 v2, 0xc

    if-ne v1, v2, :cond_6

    .line 865
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v2

    .line 866
    .local v2, "b1":I
    sget-object v3, Lcom/itextpdf/io/font/CFFFontSubset;->SubrsEscapeFuncs:[Ljava/lang/String;

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-le v2, v4, :cond_5

    .line 867
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .line 868
    :cond_5
    aget-object v3, v3, v2

    iput-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    .line 869
    .end local v2    # "b1":I
    goto/16 :goto_0

    .line 870
    :cond_6
    sget-object v2, Lcom/itextpdf/io/font/CFFFontSubset;->SubrsFunctions:[Ljava/lang/String;

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    .line 871
    goto/16 :goto_0

    .line 873
    .end local v1    # "b0":C
    :cond_7
    goto/16 :goto_0

    .line 874
    :cond_8
    return-void
.end method

.method protected ReadFDArray(I)V
    .locals 2
    .param p1, "Font"    # I

    .line 339
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->fdarrayOffset:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 340
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard16()C

    move-result v1

    iput v1, v0, Lcom/itextpdf/io/font/CFFFont$Font;->FDArrayCount:I

    .line 341
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v1

    iput v1, v0, Lcom/itextpdf/io/font/CFFFont$Font;->FDArrayOffsize:I

    .line 344
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->FDArrayOffsize:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 345
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget v1, v0, Lcom/itextpdf/io/font/CFFFont$Font;->FDArrayOffsize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/itextpdf/io/font/CFFFont$Font;->FDArrayOffsize:I

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->fdarrayOffset:I

    invoke-virtual {p0, v1}, Lcom/itextpdf/io/font/CFFFontSubset;->getIndex(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/itextpdf/io/font/CFFFont$Font;->FDArrayOffsets:[I

    .line 347
    return-void
.end method

.method Reconstruct(I)V
    .locals 3
    .param p1, "Font"    # I

    .line 1472
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->FDArrayOffsets:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;

    .line 1473
    .local v0, "fdPrivate":[Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    array-length v1, v1

    new-array v1, v1, [Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;

    .line 1474
    .local v1, "fdPrivateBase":[Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    array-length v2, v2

    new-array v2, v2, [Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;

    .line 1476
    .local v2, "fdSubrs":[Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/io/font/CFFFontSubset;->ReconstructFDArray(I[Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    .line 1477
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/itextpdf/io/font/CFFFontSubset;->ReconstructPrivateDict(I[Lcom/itextpdf/io/font/CFFFont$OffsetItem;[Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;[Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    .line 1478
    invoke-virtual {p0, p1, v1, v2}, Lcom/itextpdf/io/font/CFFFontSubset;->ReconstructPrivateSubrs(I[Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;[Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    .line 1479
    return-void
.end method

.method ReconstructFDArray(I[Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V
    .locals 11
    .param p1, "Font"    # I
    .param p2, "fdPrivate"    # [Lcom/itextpdf/io/font/CFFFont$OffsetItem;

    .line 1489
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->FDArrayCount:I

    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->FDArrayOffsize:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/itextpdf/io/font/CFFFontSubset;->BuildIndexHeader(III)V

    .line 1492
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->FDArrayOffsets:[I

    array-length v0, v0

    sub-int/2addr v0, v2

    new-array v0, v0, [Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;

    .line 1493
    .local v0, "fdOffsets":[Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/itextpdf/io/font/CFFFont$Font;->FDArrayOffsets:[I

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge v1, v3, :cond_0

    .line 1494
    new-instance v3, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;

    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/itextpdf/io/font/CFFFont$Font;->FDArrayOffsize:I

    invoke-direct {v3, v4}, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;-><init>(I)V

    aput-object v3, v0, v1

    .line 1495
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1493
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1499
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;

    invoke-direct {v1}, Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;-><init>()V

    .line 1500
    .local v1, "fdArrayBase":Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1506
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/itextpdf/io/font/CFFFont$Font;->FDArrayOffsets:[I

    array-length v4, v4

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_4

    .line 1510
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/itextpdf/io/font/CFFFont$Font;->FDArrayOffsets:[I

    aget v4, v4, v3

    invoke-virtual {p0, v4}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 1511
    :goto_2
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v4

    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/itextpdf/io/font/CFFFont$Font;->FDArrayOffsets:[I

    add-int/lit8 v6, v3, 0x1

    aget v5, v5, v6

    if-ge v4, v5, :cond_3

    .line 1512
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v4

    .line 1513
    .local v4, "p1":I
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getDictItem()V

    .line 1514
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v5

    .line 1517
    .local v5, "p2":I
    iget-object v6, p0, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    const-string v7, "Private"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1519
    iget-object v6, p0, Lcom/itextpdf/io/font/CFFFontSubset;->args:[Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1521
    .local v6, "NewSize":I
    iget-object v7, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v7, v7, p1

    iget-object v7, v7, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    aget v7, v7, v3

    iget-object v8, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v8, v8, p1

    iget-object v8, v8, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateLengths:[I

    aget v8, v8, v3

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/io/font/CFFFontSubset;->CalcSubrOffsetSize(II)I

    move-result v7

    .line 1523
    .local v7, "OrgSubrsOffsetSize":I
    if-eqz v7, :cond_1

    .line 1524
    rsub-int/lit8 v8, v7, 0x5

    add-int/2addr v6, v8

    .line 1526
    :cond_1
    iget-object v8, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v9, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;

    invoke-direct {v9, v6}, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;-><init>(I)V

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1527
    new-instance v8, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;

    invoke-direct {v8}, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;-><init>()V

    aput-object v8, p2, v3

    .line 1528
    iget-object v8, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    aget-object v9, p2, v3

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1530
    iget-object v8, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v9, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v10, 0x12

    invoke-direct {v9, v10}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1532
    invoke-virtual {p0, v5}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 1533
    .end local v6    # "NewSize":I
    .end local v7    # "OrgSubrsOffsetSize":I
    goto :goto_3

    .line 1536
    :cond_2
    iget-object v6, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v7, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    iget-object v8, p0, Lcom/itextpdf/io/font/CFFFontSubset;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    sub-int v9, v5, v4

    invoke-direct {v7, v8, v4, v9}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1537
    .end local v4    # "p1":I
    .end local v5    # "p2":I
    :goto_3
    goto :goto_2

    .line 1540
    :cond_3
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v5, Lcom/itextpdf/io/font/CFFFont$IndexMarkerItem;

    aget-object v6, v0, v3

    invoke-direct {v5, v6, v1}, Lcom/itextpdf/io/font/CFFFont$IndexMarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1506
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1542
    .end local v3    # "k":I
    :cond_4
    return-void
.end method

.method ReconstructPrivateDict(I[Lcom/itextpdf/io/font/CFFFont$OffsetItem;[Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;[Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V
    .locals 7
    .param p1, "Font"    # I
    .param p2, "fdPrivate"    # [Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    .param p3, "fdPrivateBase"    # [Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;
    .param p4, "fdSubrs"    # [Lcom/itextpdf/io/font/CFFFont$OffsetItem;

    .line 1558
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1562
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v2, Lcom/itextpdf/io/font/CFFFont$MarkerItem;

    aget-object v3, p2, v0

    invoke-direct {v2, v3}, Lcom/itextpdf/io/font/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1563
    new-instance v1, Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;

    invoke-direct {v1}, Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;-><init>()V

    aput-object v1, p3, v0

    .line 1564
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1566
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 1567
    :goto_1
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v1

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateLengths:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 1568
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v1

    .line 1569
    .local v1, "p1":I
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getDictItem()V

    .line 1570
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getPosition()I

    move-result v2

    .line 1573
    .local v2, "p2":I
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    const-string v4, "Subrs"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1574
    new-instance v3, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;

    invoke-direct {v3}, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;-><init>()V

    aput-object v3, p4, v0

    .line 1575
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    aget-object v4, p4, v0

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1577
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v4, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v5, 0x13

    invoke-direct {v4, v5}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_2

    .line 1581
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v4, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFontSubset;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    sub-int v6, v2, v1

    invoke-direct {v4, v5, v1, v6}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1582
    .end local v1    # "p1":I
    .end local v2    # "p2":I
    :goto_2
    goto :goto_1

    .line 1558
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1585
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method ReconstructPrivateSubrs(I[Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;[Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V
    .locals 6
    .param p1, "Font"    # I
    .param p2, "fdPrivateBase"    # [Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;
    .param p3, "fdSubrs"    # [Lcom/itextpdf/io/font/CFFFont$OffsetItem;

    .line 1598
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateLengths:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1601
    aget-object v1, p3, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->PrivateSubrsOffset:[I

    aget v1, v1, v0

    if-ltz v1, :cond_0

    .line 1602
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v2, Lcom/itextpdf/io/font/CFFFont$SubrMarkerItem;

    aget-object v3, p3, v0

    aget-object v4, p2, v0

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/io/font/CFFFont$SubrMarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1603
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NewLSubrsIndex:[[B

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1604
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v2, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    new-instance v3, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFontSubset;->rasFactory:Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NewLSubrsIndex:[[B

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFontSubset;->NewLSubrsIndex:[[B

    aget-object v5, v5, v0

    array-length v5, v5

    invoke-direct {v2, v3, v4, v5}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1598
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1607
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method protected StackOpp()I
    .locals 6

    .line 735
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "index"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v1, "sqrt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v1, "roll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "exch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "drop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_5
    const-string/jumbo v1, "sub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_6
    const-string/jumbo v1, "put"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "not"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "neg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "mul"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "dup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "div"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "and"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "add"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_f
    const-string v1, "abs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_10
    const-string v1, "or"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_11
    const-string v1, "eq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_12
    const-string v1, "callsubr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_13
    const-string/jumbo v1, "return"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_1

    :sswitch_14
    const-string/jumbo v1, "random"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto :goto_1

    :sswitch_15
    const-string v1, "callgsubr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_16
    const-string v1, "ifelse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :goto_0
    move v0, v5

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 765
    return v2

    .line 763
    :pswitch_0
    return v3

    .line 760
    :pswitch_1
    return v4

    .line 751
    :pswitch_2
    return v5

    .line 740
    :pswitch_3
    const/4 v0, -0x2

    return v0

    .line 737
    :pswitch_4
    const/4 v0, -0x3

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x47063c2a -> :sswitch_16
        -0x3de93085 -> :sswitch_15
        -0x37ed1b3d -> :sswitch_14
        -0x37b1c2d0 -> :sswitch_13
        -0xa3bda70 -> :sswitch_12
        0xcac -> :sswitch_11
        0xde3 -> :sswitch_10
        0x17872 -> :sswitch_f
        0x178a1 -> :sswitch_e
        0x179d7 -> :sswitch_d
        0x18491 -> :sswitch_c
        0x185ff -> :sswitch_b
        0x18f56 -> :sswitch_a
        0x1a7c4 -> :sswitch_9
        0x1a990 -> :sswitch_8
        0x1aad3 -> :sswitch_7
        0x1b30f -> :sswitch_6
        0x1be40 -> :sswitch_5
        0x2f2eef -> :sswitch_4
        0x2fb858 -> :sswitch_3
        0x35807d -> :sswitch_2
        0x35fd20 -> :sswitch_1
        0x5fb28d2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected countEntireIndexRange(I)I
    .locals 4
    .param p1, "indexOffset"    # I

    .line 1646
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 1648
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard16()C

    move-result v0

    .line 1650
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 1651
    const/4 v1, 0x2

    return v1

    .line 1654
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v1

    .line 1656
    .local v1, "indexOffSize":I
    add-int/lit8 v2, p1, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int v3, v0, v1

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 1658
    invoke-virtual {p0, v1}, Lcom/itextpdf/io/font/CFFFontSubset;->getOffset(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1660
    .local v2, "size":I
    add-int/lit8 v3, v0, 0x1

    mul-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v2

    return v3
.end method

.method protected readFDSelect(I)V
    .locals 10
    .param p1, "Font"    # I

    .line 266
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/itextpdf/io/font/CFFFont$Font;->nglyphs:I

    .line 267
    .local v0, "NumOfGlyphs":I
    new-array v1, v0, [I

    .line 269
    .local v1, "FDSelect":[I
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->fdselectOffset:I

    invoke-virtual {p0, v2}, Lcom/itextpdf/io/font/CFFFontSubset;->seek(I)V

    .line 271
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v3

    iput v3, v2, Lcom/itextpdf/io/font/CFFFont$Font;->FDSelectFormat:I

    .line 273
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->FDSelectFormat:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_3

    .line 287
    :sswitch_0
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard16()C

    move-result v2

    .line 288
    .local v2, "nRanges":I
    const/4 v3, 0x0

    .line 290
    .local v3, "l":I
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard16()C

    move-result v4

    .line 291
    .local v4, "first":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 293
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v6

    .line 295
    .local v6, "fd":I
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard16()C

    move-result v7

    .line 297
    .local v7, "last":I
    sub-int v8, v7, v4

    .line 298
    .local v8, "steps":I
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_1
    if-ge v9, v8, :cond_0

    .line 299
    aput v6, v1, v3

    .line 300
    add-int/lit8 v3, v3, 0x1

    .line 298
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 303
    .end local v9    # "k":I
    :cond_0
    move v4, v7

    .line 291
    .end local v6    # "fd":I
    .end local v7    # "last":I
    .end local v8    # "steps":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 306
    .end local v5    # "i":I
    :cond_1
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v5, v5, p1

    mul-int/lit8 v6, v2, 0x3

    add-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x2

    iput v6, v5, Lcom/itextpdf/io/font/CFFFont$Font;->FDSelectLength:I

    .line 307
    goto :goto_3

    .line 277
    .end local v2    # "nRanges":I
    .end local v3    # "l":I
    .end local v4    # "first":I
    :sswitch_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 278
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFontSubset;->getCard8()C

    move-result v3

    aput v3, v1, v2

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 282
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/itextpdf/io/font/CFFFont$Font;->nglyphs:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/itextpdf/io/font/CFFFont$Font;->FDSelectLength:I

    .line 283
    nop

    .line 312
    :goto_3
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFontSubset;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v2, v2, p1

    iput-object v1, v2, Lcom/itextpdf/io/font/CFFFont$Font;->FDSelect:[I

    .line 313
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch
.end method
