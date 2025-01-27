.class public abstract Lorg/jdom2/output/support/AbstractFormattedWalker;
.super Ljava/lang/Object;
.source "AbstractFormattedWalker.java"

# interfaces
.implements Lorg/jdom2/output/support/Walker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;,
        Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;
    }
.end annotation


# static fields
.field private static final CDATATOKEN:Lorg/jdom2/CDATA;

.field private static final EMPTYIT:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final alltext:Z

.field private final allwhite:Z

.field private final content:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation
.end field

.field private final endofline:Ljava/lang/String;

.field private final escape:Lorg/jdom2/output/EscapeStrategy;

.field private final fstack:Lorg/jdom2/output/support/FormatStack;

.field private hasnext:Z

.field private final holdingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

.field private final mtbuffer:Ljava/lang/StringBuilder;

.field private mtdata:[Lorg/jdom2/Content;

.field private mtgottext:Z

.field private mtpos:I

.field private mtpostpad:Z

.field private mtsize:I

.field private mtsource:[Lorg/jdom2/Content;

.field private mtsourcesize:I

.field private mttext:[Ljava/lang/String;

.field private mtwasescape:Ljava/lang/Boolean;

.field private multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

.field private final newlineindent:Ljava/lang/String;

.field private pending:Lorg/jdom2/Content;

.field private pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 98
    new-instance v0, Lorg/jdom2/CDATA;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/jdom2/CDATA;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jdom2/output/support/AbstractFormattedWalker;->CDATATOKEN:Lorg/jdom2/CDATA;

    .line 118
    new-instance v0, Lorg/jdom2/output/support/AbstractFormattedWalker$1;

    invoke-direct {v0}, Lorg/jdom2/output/support/AbstractFormattedWalker$1;-><init>()V

    sput-object v0, Lorg/jdom2/output/support/AbstractFormattedWalker;->EMPTYIT:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/jdom2/output/support/FormatStack;Z)V
    .locals 7
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "doescape"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/jdom2/Content;",
            ">;",
            "Lorg/jdom2/output/support/FormatStack;",
            "Z)V"
        }
    .end annotation

    .line 365
    .local p1, "xx":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pending:Lorg/jdom2/Content;

    .line 318
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->hasnext:Z

    .line 333
    iput-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    .line 334
    iput-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    .line 335
    new-instance v2, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-direct {v2, p0, v0}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;-><init>(Lorg/jdom2/output/support/AbstractFormattedWalker;Lorg/jdom2/output/support/AbstractFormattedWalker$1;)V

    iput-object v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->holdingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtbuffer:Ljava/lang/StringBuilder;

    .line 341
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtgottext:Z

    .line 343
    iput v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtsize:I

    .line 344
    iput v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtsourcesize:I

    .line 345
    const/16 v3, 0x8

    new-array v4, v3, [Lorg/jdom2/Content;

    iput-object v4, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtsource:[Lorg/jdom2/Content;

    .line 347
    new-array v4, v3, [Lorg/jdom2/Content;

    iput-object v4, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtdata:[Lorg/jdom2/Content;

    .line 349
    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mttext:[Ljava/lang/String;

    .line 352
    const/4 v3, -0x1

    iput v3, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtpos:I

    .line 366
    iput-object p2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->fstack:Lorg/jdom2/output/support/FormatStack;

    .line 367
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lorg/jdom2/output/support/AbstractFormattedWalker;->EMPTYIT:Ljava/util/Iterator;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->content:Ljava/util/Iterator;

    .line 368
    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getEscapeStrategy()Lorg/jdom2/output/EscapeStrategy;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v0

    :goto_1
    iput-object v4, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->escape:Lorg/jdom2/output/EscapeStrategy;

    .line 369
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getPadBetween()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->newlineindent:Ljava/lang/String;

    .line 370
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLevelEOL()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->endofline:Ljava/lang/String;

    .line 371
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 372
    iput-boolean v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->alltext:Z

    .line 373
    iput-boolean v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->allwhite:Z

    goto :goto_3

    .line 375
    :cond_2
    const/4 v4, 0x0

    .line 376
    .local v4, "atext":Z
    const/4 v5, 0x0

    .line 377
    .local v5, "awhite":Z
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom2/Content;

    iput-object v3, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pending:Lorg/jdom2/Content;

    .line 378
    invoke-direct {p0, v3}, Lorg/jdom2/output/support/AbstractFormattedWalker;->isTextLike(Lorg/jdom2/Content;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 382
    invoke-direct {p0, v1}, Lorg/jdom2/output/support/AbstractFormattedWalker;->buildMultiText(Z)Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    move-result-object v3

    iput-object v3, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    .line 383
    iget v6, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtsourcesize:I

    invoke-virtual {p0, v3, v2, v6}, Lorg/jdom2/output/support/AbstractFormattedWalker;->analyzeMultiText(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;II)V

    .line 384
    iget-object v3, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-virtual {v3}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->done()V

    .line 386
    iget-object v3, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pending:Lorg/jdom2/Content;

    if-nez v3, :cond_4

    .line 387
    const/4 v3, 0x1

    .line 388
    .end local v4    # "atext":Z
    .local v3, "atext":Z
    iget v4, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtsize:I

    if-nez v4, :cond_3

    move v4, v1

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    move v5, v4

    move v4, v3

    .line 390
    .end local v3    # "atext":Z
    .restart local v4    # "atext":Z
    :cond_4
    iget v3, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtsize:I

    if-nez v3, :cond_5

    .line 392
    iput-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    .line 395
    :cond_5
    iput-boolean v4, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->alltext:Z

    .line 396
    iput-boolean v5, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->allwhite:Z

    .line 398
    .end local v4    # "atext":Z
    .end local v5    # "awhite":Z
    :goto_3
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pending:Lorg/jdom2/Content;

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :cond_7
    :goto_4
    iput-boolean v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->hasnext:Z

    .line 399
    return-void
.end method

.method static synthetic access$000(Lorg/jdom2/output/support/AbstractFormattedWalker;)I
    .locals 1
    .param p0, "x0"    # Lorg/jdom2/output/support/AbstractFormattedWalker;

    .line 91
    iget v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtsize:I

    return v0
.end method

.method static synthetic access$008(Lorg/jdom2/output/support/AbstractFormattedWalker;)I
    .locals 2
    .param p0, "x0"    # Lorg/jdom2/output/support/AbstractFormattedWalker;

    .line 91
    iget v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtsize:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtsize:I

    return v0
.end method

.method static synthetic access$100(Lorg/jdom2/output/support/AbstractFormattedWalker;)[Lorg/jdom2/Content;
    .locals 1
    .param p0, "x0"    # Lorg/jdom2/output/support/AbstractFormattedWalker;

    .line 91
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtdata:[Lorg/jdom2/Content;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/jdom2/output/support/AbstractFormattedWalker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jdom2/output/support/AbstractFormattedWalker;

    .line 91
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->newlineindent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lorg/jdom2/output/support/AbstractFormattedWalker;[Lorg/jdom2/Content;)[Lorg/jdom2/Content;
    .locals 0
    .param p0, "x0"    # Lorg/jdom2/output/support/AbstractFormattedWalker;
    .param p1, "x1"    # [Lorg/jdom2/Content;

    .line 91
    iput-object p1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtdata:[Lorg/jdom2/Content;

    return-object p1
.end method

.method static synthetic access$200(Lorg/jdom2/output/support/AbstractFormattedWalker;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jdom2/output/support/AbstractFormattedWalker;

    .line 91
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mttext:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lorg/jdom2/output/support/AbstractFormattedWalker;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/jdom2/output/support/AbstractFormattedWalker;
    .param p1, "x1"    # [Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mttext:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lorg/jdom2/output/support/AbstractFormattedWalker;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Lorg/jdom2/output/support/AbstractFormattedWalker;

    .line 91
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtbuffer:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$400(Lorg/jdom2/output/support/AbstractFormattedWalker;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jdom2/output/support/AbstractFormattedWalker;

    .line 91
    iget-boolean v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtgottext:Z

    return v0
.end method

.method static synthetic access$402(Lorg/jdom2/output/support/AbstractFormattedWalker;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/jdom2/output/support/AbstractFormattedWalker;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtgottext:Z

    return p1
.end method

.method static synthetic access$500(Lorg/jdom2/output/support/AbstractFormattedWalker;)Lorg/jdom2/output/EscapeStrategy;
    .locals 1
    .param p0, "x0"    # Lorg/jdom2/output/support/AbstractFormattedWalker;

    .line 91
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->escape:Lorg/jdom2/output/EscapeStrategy;

    return-object v0
.end method

.method static synthetic access$600(Lorg/jdom2/output/support/AbstractFormattedWalker;)Lorg/jdom2/output/support/FormatStack;
    .locals 1
    .param p0, "x0"    # Lorg/jdom2/output/support/AbstractFormattedWalker;

    .line 91
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->fstack:Lorg/jdom2/output/support/FormatStack;

    return-object v0
.end method

.method static synthetic access$700(Lorg/jdom2/output/support/AbstractFormattedWalker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jdom2/output/support/AbstractFormattedWalker;

    .line 91
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->endofline:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Lorg/jdom2/CDATA;
    .locals 1

    .line 91
    sget-object v0, Lorg/jdom2/output/support/AbstractFormattedWalker;->CDATATOKEN:Lorg/jdom2/CDATA;

    return-object v0
.end method

.method static synthetic access$900(Lorg/jdom2/output/support/AbstractFormattedWalker;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jdom2/output/support/AbstractFormattedWalker;

    .line 91
    iget-boolean v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtpostpad:Z

    return v0
.end method

.method private final buildMultiText(Z)Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;
    .locals 4
    .param p1, "first"    # Z

    .line 548
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->newlineindent:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 549
    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtbuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtsourcesize:I

    .line 553
    :cond_1
    iget v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtsourcesize:I

    iget-object v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtsource:[Lorg/jdom2/Content;

    array-length v3, v2

    if-lt v1, v3, :cond_2

    .line 554
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v2, v1}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jdom2/Content;

    iput-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtsource:[Lorg/jdom2/Content;

    .line 556
    :cond_2
    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtsource:[Lorg/jdom2/Content;

    iget v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtsourcesize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtsourcesize:I

    iget-object v3, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pending:Lorg/jdom2/Content;

    aput-object v3, v1, v2

    .line 557
    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->content:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->content:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Content;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pending:Lorg/jdom2/Content;

    .line 558
    if-eqz v1, :cond_4

    invoke-direct {p0, v1}, Lorg/jdom2/output/support/AbstractFormattedWalker;->isTextLike(Lorg/jdom2/Content;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 560
    :cond_4
    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pending:Lorg/jdom2/Content;

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    iput-boolean v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtpostpad:Z

    .line 561
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->fstack:Lorg/jdom2/output/support/FormatStack;

    invoke-virtual {v0}, Lorg/jdom2/output/support/FormatStack;->getEscapeOutput()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtwasescape:Ljava/lang/Boolean;

    .line 562
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->holdingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    return-object v0
.end method

.method private final isTextLike(Lorg/jdom2/Content;)Z
    .locals 2
    .param p1, "c"    # Lorg/jdom2/Content;

    .line 591
    sget-object v0, Lorg/jdom2/output/support/AbstractFormattedWalker$2;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {p1}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 599
    const/4 v0, 0x0

    return v0

    .line 595
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private resetMultiText()V
    .locals 2

    .line 501
    const/4 v0, 0x0

    iput v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtsourcesize:I

    .line 502
    const/4 v1, -0x1

    iput v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtpos:I

    .line 503
    iput v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtsize:I

    .line 504
    iput-boolean v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtgottext:Z

    .line 505
    iput-boolean v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtpostpad:Z

    .line 506
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtwasescape:Ljava/lang/Boolean;

    .line 507
    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtbuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 508
    return-void
.end method


# virtual methods
.method protected abstract analyzeMultiText(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;II)V
.end method

.method protected final get(I)Lorg/jdom2/Content;
    .locals 1
    .param p1, "index"    # I

    .line 525
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtsource:[Lorg/jdom2/Content;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final hasNext()Z
    .locals 1

    .line 535
    iget-boolean v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->hasnext:Z

    return v0
.end method

.method public final isAllText()Z
    .locals 1

    .line 530
    iget-boolean v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->alltext:Z

    return v0
.end method

.method public final isAllWhitespace()Z
    .locals 1

    .line 587
    iget-boolean v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->allwhite:Z

    return v0
.end method

.method public final isCDATA()Z
    .locals 3

    .line 575
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtpos:I

    iget v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtsize:I

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 578
    :cond_0
    iget-object v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mttext:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 579
    return v1

    .line 582
    :cond_1
    iget-object v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtdata:[Lorg/jdom2/Content;

    aget-object v0, v2, v0

    sget-object v2, Lorg/jdom2/output/support/AbstractFormattedWalker;->CDATATOKEN:Lorg/jdom2/CDATA;

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 576
    :cond_3
    :goto_0
    return v1
.end method

.method public final next()Lorg/jdom2/Content;
    .locals 6

    .line 404
    iget-boolean v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->hasnext:Z

    if-eqz v0, :cond_e

    .line 408
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtpos:I

    add-int/2addr v0, v2

    iget v3, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtsize:I

    if-lt v0, v3, :cond_0

    .line 410
    iput-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    .line 411
    invoke-direct {p0}, Lorg/jdom2/output/support/AbstractFormattedWalker;->resetMultiText()V

    .line 413
    :cond_0
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 416
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtwasescape:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->fstack:Lorg/jdom2/output/support/FormatStack;

    invoke-virtual {v0}, Lorg/jdom2/output/support/FormatStack;->getEscapeOutput()Z

    move-result v0

    iget-object v4, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtwasescape:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v0, v4, :cond_1

    .line 421
    iput v3, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtsize:I

    .line 422
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->fstack:Lorg/jdom2/output/support/FormatStack;

    invoke-virtual {v0}, Lorg/jdom2/output/support/FormatStack;->getEscapeOutput()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtwasescape:Ljava/lang/Boolean;

    .line 423
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    iget v4, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtsourcesize:I

    invoke-virtual {p0, v0, v3, v4}, Lorg/jdom2/output/support/AbstractFormattedWalker;->analyzeMultiText(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;II)V

    .line 424
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-virtual {v0}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->done()V

    .line 426
    :cond_1
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    iput-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    .line 427
    iput-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    .line 430
    :cond_2
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    if-eqz v0, :cond_6

    .line 435
    iget v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtpos:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtpos:I

    .line 437
    iget-object v4, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mttext:[Ljava/lang/String;

    aget-object v4, v4, v0

    if-nez v4, :cond_3

    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtdata:[Lorg/jdom2/Content;

    aget-object v1, v1, v0

    .line 442
    .local v1, "ret":Lorg/jdom2/Content;
    :cond_3
    add-int/2addr v0, v2

    iget v4, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtsize:I

    if-lt v0, v4, :cond_5

    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pending:Lorg/jdom2/Content;

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    move v2, v3

    :cond_5
    :goto_0
    iput-boolean v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->hasnext:Z

    .line 446
    return-object v1

    .line 450
    .end local v1    # "ret":Lorg/jdom2/Content;
    :cond_6
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pending:Lorg/jdom2/Content;

    .line 451
    .local v0, "ret":Lorg/jdom2/Content;
    iget-object v4, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->content:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->content:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jdom2/Content;

    goto :goto_1

    :cond_7
    move-object v4, v1

    :goto_1
    iput-object v4, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pending:Lorg/jdom2/Content;

    .line 456
    if-nez v4, :cond_8

    .line 457
    iput-boolean v3, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->hasnext:Z

    goto :goto_3

    .line 461
    :cond_8
    invoke-direct {p0, v4}, Lorg/jdom2/output/support/AbstractFormattedWalker;->isTextLike(Lorg/jdom2/Content;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 463
    invoke-direct {p0, v3}, Lorg/jdom2/output/support/AbstractFormattedWalker;->buildMultiText(Z)Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    move-result-object v4

    iput-object v4, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    .line 464
    iget v5, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtsourcesize:I

    invoke-virtual {p0, v4, v3, v5}, Lorg/jdom2/output/support/AbstractFormattedWalker;->analyzeMultiText(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;II)V

    .line 465
    iget-object v4, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-virtual {v4}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->done()V

    .line 467
    iget v4, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtsize:I

    if-lez v4, :cond_9

    .line 468
    iput-boolean v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->hasnext:Z

    goto :goto_3

    .line 472
    :cond_9
    iget-object v4, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pending:Lorg/jdom2/Content;

    if-eqz v4, :cond_a

    iget-object v5, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->newlineindent:Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 475
    invoke-direct {p0}, Lorg/jdom2/output/support/AbstractFormattedWalker;->resetMultiText()V

    .line 476
    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->holdingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    iput-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    .line 477
    iget-object v3, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->newlineindent:Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$1200(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;Ljava/lang/String;)V

    .line 478
    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-virtual {v1}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->done()V

    .line 479
    iput-boolean v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->hasnext:Z

    goto :goto_3

    .line 481
    :cond_a
    iput-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    .line 482
    if-eqz v4, :cond_b

    goto :goto_2

    :cond_b
    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->hasnext:Z

    goto :goto_3

    .line 488
    :cond_c
    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->newlineindent:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 489
    invoke-direct {p0}, Lorg/jdom2/output/support/AbstractFormattedWalker;->resetMultiText()V

    .line 490
    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->holdingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    iput-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    .line 491
    iget-object v3, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->newlineindent:Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->access$1200(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;Ljava/lang/String;)V

    .line 492
    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->pendingmt:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    invoke-virtual {v1}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->done()V

    .line 494
    :cond_d
    iput-boolean v2, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->hasnext:Z

    .line 497
    :goto_3
    return-object v0

    .line 405
    .end local v0    # "ret":Lorg/jdom2/Content;
    :cond_e
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Cannot walk off end of Content"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final text()Ljava/lang/String;
    .locals 2

    .line 567
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->multitext:Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtpos:I

    iget v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mtsize:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 570
    :cond_0
    iget-object v1, p0, Lorg/jdom2/output/support/AbstractFormattedWalker;->mttext:[Ljava/lang/String;

    aget-object v0, v1, v0

    return-object v0

    .line 568
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
