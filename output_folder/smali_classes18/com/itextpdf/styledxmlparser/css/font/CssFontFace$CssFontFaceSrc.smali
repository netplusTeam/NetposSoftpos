.class public Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;
.super Ljava/lang/Object;
.source "CssFontFace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/css/font/CssFontFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CssFontFaceSrc"
.end annotation


# static fields
.field public static final FormatGroup:I = 0x9

.field public static final TypeGroup:I = 0x1

.field public static final UrlGroup:I = 0x4

.field public static final UrlPattern:Ljava/util/regex/Pattern;


# instance fields
.field final format:Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

.field final isLocal:Z

.field final src:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 203
    const-string v0, "^((local)|(url))\\(((\'[^\']*\')|(\"[^\"]*\")|([^\'\"\\)]*))\\)( format\\(((\'[^\']*\')|(\"[^\"]*\")|([^\'\"\\)]*))\\))?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;->UrlPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZLcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;)V
    .locals 0
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "isLocal"    # Z
    .param p3, "format"    # Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-object p3, p0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;->format:Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    .line 311
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;->src:Ljava/lang/String;

    .line 312
    iput-boolean p2, p0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;->isLocal:Z

    .line 313
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;
    .locals 5
    .param p0, "src"    # Ljava/lang/String;

    .line 254
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;->UrlPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 255
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    const/4 v1, 0x0

    return-object v1

    .line 258
    :cond_0
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 259
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "local"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x9

    .line 260
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;->parseFormat(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;-><init>(Ljava/lang/String;ZLcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;)V

    .line 258
    return-object v1
.end method

.method public static parseFormat(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;
    .locals 3
    .param p0, "formatStr"    # Ljava/lang/String;

    .line 270
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 271
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "truetype"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "woff2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "woff"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "svg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_4
    const-string v2, "opentype"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v2, "embedded-opentype"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 283
    :pswitch_0
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;->SVG:Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    return-object v0

    .line 281
    :pswitch_1
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;->EOT:Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    return-object v0

    .line 279
    :pswitch_2
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;->WOFF2:Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    return-object v0

    .line 277
    :pswitch_3
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;->WOFF:Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    return-object v0

    .line 275
    :pswitch_4
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;->OpenType:Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    return-object v0

    .line 273
    :pswitch_5
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;->TrueType:Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    return-object v0

    .line 286
    :cond_1
    :goto_1
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;->None:Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x55e0db99 -> :sswitch_5
        -0x1e057f7c -> :sswitch_4
        0x1be64 -> :sswitch_3
        0x37c598 -> :sswitch_2
        0x6c0ed9a -> :sswitch_1
        0x6dfb8dc8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "quotedString"    # Ljava/lang/String;

    .line 296
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x27

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    return-object p0

    .line 297
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getFormat()Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;->format:Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;->src:Ljava/lang/String;

    return-object v0
.end method

.method public isLocal()Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;->isLocal:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 240
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;->isLocal:Z

    if-eqz v1, :cond_0

    const-string v1, "local"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "url"

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;->src:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;->format:Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    sget-object v5, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;->None:Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    if-eq v4, v5, :cond_1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$CssFontFaceSrc;->format:Lcom/itextpdf/styledxmlparser/css/font/CssFontFace$FontFormat;

    aput-object v4, v3, v2

    .line 242
    const-string v2, " format({0})"

    invoke-static {v2, v3}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    aput-object v2, v0, v1

    .line 241
    const-string/jumbo v1, "{0}({1}){2}"

    invoke-static {v1, v0}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 240
    return-object v0
.end method
